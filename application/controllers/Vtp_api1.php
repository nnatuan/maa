<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vtp_api extends CI_Controller {

    private $valid_token = 'Tokencuatui'; // Token hợp lệ

    public function __construct() {
        parent::__construct();
		session_start();
        $this->load->database();
		$this->load->helper('ap_db');
        $this->load->helper('url');
        $this->load->helper('file');
		
		date_default_timezone_set('Asia/Saigon');
    }

    private function verify_token() {
        $headers = $this->input->request_headers();
        //print_r($headers);
        // Kiểm tra token trong header
        if (isset($headers['Token'])) {
            $token = $headers['Token'];

            if ($token === $this->valid_token) {
                return true;
            } else {
                $this->output->set_content_type('application/json')->set_output(json_encode(['message' => 'Invalid token']));
                return false;
            }
        } else {
            $this->output->set_content_type('application/json')->set_output(json_encode(['message' => 'Token not provided']));
            return false;
        }
    }

    public function get_data() {
        if ($this->verify_token()) {
            $data = read_file('./data.json');
            
            if ($data) {
                $this->output->set_content_type('application/json')->set_output($data);
            } else {
                $this->output->set_content_type('application/json')->set_output(json_encode(['message' => 'No data found']));
            }
        }
    }

         public function post_data() {
            if ($this->verify_token()) {
                // Lấy dữ liệu từ POST body
                $post_data = $this->input->post();

                if (!empty($post_data)) {
                    // Xử lý dữ liệu
                    $current_data = json_decode(read_file('./data.json'), true);
                    $current_data[] = $post_data;

                    if (write_file('./data.json', json_encode($current_data))) {
                        $this->output->set_content_type('application/json')->set_output(json_encode(['message' => 'Data saved successfully']));
                    } else {
                        $this->output
                            ->set_content_type('application/json')
                            ->set_output(json_encode(['message' => 'Failed to save data']));
                    }
					
					//var_dump($post_data);
					//exit(json_decode($post_data));
					//$data = json_decode($post_data, true);
					
					// nhận dữ liệu từ vtp
					$data = $post_data;
					
					/*
					ghi chú reponsive status cho vtp: 
					- 0: đơn không có trên hệ thống
					- 200:cập nhật hành trình thành công
					- 2: không đúng thứ tự hành trình
					- 3: đơn đã cập nhật trạng thái cuối
					*/
					if(check_mvd_exist($data['ORDER_NUMBER'])) { //check mã vận đơn có tồn tại trong hệ thống ko (mục 6 & 7)
						if($data['ORDER_STATUS']!=501
						&& $data['ORDER_STATUS']!=503
						&& $data['ORDER_STATUS']!=504
						&& $data['ORDER_STATUS']!=201
						&& $data['ORDER_STATUS']!=107
						&& $data['ORDER_STATUS']!=-15) { //check trạng thái hiện tại là 1 trong các trạng thái cuối này thì không cập nhật thêm bất cứ trạng thái mới nào (mục 9)
							if(check_trip_order_status_vtp($data['ORDER_NUMBER'],$data['ORDER_STATUS'])==0) { //check trạng thái ghi nhận có đang đúng thứ tự trên ht (mục 8)
								// hàm trên đếm số dòng kq trả về, = 0 là chưa có trạng thái này (trạng thái sau > trạng thái trước) => ghi vào
								$data_u = array(
									'ORDER_NUMBER' => $data['ORDER_NUMBER'],
									'ORDER_REFERENCE' => $data['ORDER_REFERENCE'],
									'ORDER_STATUSDATE' => $data['ORDER_STATUSDATE'],
									'ORDER_STATUS' => $data['ORDER_STATUS'],
									'STATUS_NAME' => $data['STATUS_NAME'],
									'LOCALION_CURRENTLY' => $data['LOCALION_CURRENTLY'],
									'NOTE' => $data['NOTE'],
									'MONEY_COLLECTION' => $data['MONEY_COLLECTION'],
									'MONEY_FEECOD' => $data['MONEY_FEECOD'],
									'MONEY_TOTAL' => $data['MONEY_TOTAL'],
									'EXPECTED_DELIVERY' => $data['EXPECTED_DELIVERY'],
									'PRODUCT_WEIGHT' => $data['PRODUCT_WEIGHT'],
									'ORDER_SERVICE' => $data['ORDER_SERVICE'],
									'ctime' => time()
								);
								$this->db->insert('ttrip',$data_u);
								
								//phản hồi kết quả cho vtp
								//$reponsive = array("status" => 1, "message" => "Cập nhật hành trình thành công.");
								$reponsive = array("status" => 200, "message" => "Cập nhật hành trình thành công.");
								
								//gửi mail cho khách
								//code update...
							} else { //ghi log bypass và phản hồi cho vtp
								$reponsive = array("status" => 2, "message" => "Mã vận đơn không tồn tại trong hệ thống.");
							}
						} else { //ghi log bypass và phản hồi cho vtp
							$reponsive = array("status" => 3, "message" => "Mã vận đơn đã cập nhật trạng thái cuối.");
						}
					} else { //ko có, ghi log bypass và phản hồi cho vtp
						/*
						$data_u = array(
							'ORDER_NUMBER' => $data['ORDER_NUMBER'],
							'ORDER_REFERENCE' => $data['ORDER_REFERENCE'],
							'ORDER_STATUSDATE' => $data['ORDER_STATUSDATE'],
							'ORDER_STATUS' => $data['ORDER_STATUS'],
							'STATUS_NAME' => $data['STATUS_NAME'],
							'LOCALION_CURRENTLY' => $data['LOCALION_CURRENTLY'],
							'NOTE' => $data['NOTE'],
							'MONEY_COLLECTION' => $data['MONEY_COLLECTION'],
							'MONEY_FEECOD' => $data['MONEY_FEECOD'],
							'MONEY_TOTAL' => $data['MONEY_TOTAL'],
							'EXPECTED_DELIVERY' => $data['EXPECTED_DELIVERY'],
							'PRODUCT_WEIGHT' => $data['PRODUCT_WEIGHT'],
							'ORDER_SERVICE' => $data['ORDER_SERVICE'],
							'ctime' => time()
						);
						$this->db->insert('ttrip_log',$data_u);
						*/
						
						$reponsive = array("status" => 0, "message" => "Không đúng hành trình.");
					}
					
					//ghi log (bất kể trường hợp nào xảy ra ở trên)
					$data_u = array(
							'ORDER_NUMBER' => $data['ORDER_NUMBER'],
							'ORDER_REFERENCE' => $data['ORDER_REFERENCE'],
							'ORDER_STATUSDATE' => $data['ORDER_STATUSDATE'],
							'ORDER_STATUS' => $data['ORDER_STATUS'],
							'STATUS_NAME' => $data['STATUS_NAME'],
							'LOCALION_CURRENTLY' => $data['LOCALION_CURRENTLY'],
							'NOTE' => $data['NOTE'],
							'MONEY_COLLECTION' => $data['MONEY_COLLECTION'],
							'MONEY_FEECOD' => $data['MONEY_FEECOD'],
							'MONEY_TOTAL' => $data['MONEY_TOTAL'],
							'EXPECTED_DELIVERY' => $data['EXPECTED_DELIVERY'],
							'PRODUCT_WEIGHT' => $data['PRODUCT_WEIGHT'],
							'ORDER_SERVICE' => $data['ORDER_SERVICE'],
							'ctime' => time()
					);
					$this->db->insert('ttrip_log',$data_u);
					
					//trả kết quả phản hồi
					exit(json_encode($reponsive));

                } else {
                    $this->output
                        ->set_content_type('application/json')
                        ->set_output(json_encode(['message' => 'No data received']));
                }
            }
        }

}
