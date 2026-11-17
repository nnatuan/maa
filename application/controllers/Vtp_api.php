<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vtp_api extends CI_Controller {

    private $valid_token = '67855cb6d4c50ff8b4a79416f38abebe'; // Token (tham số bí mật) bên vtp nhập vào header khi gọi tới api sendee

    public function __construct() {
        parent::__construct();
		session_start();
        $this->load->database();
		$this->load->helper('ap_db');
        $this->load->helper('url');
        $this->load->helper('file');
		$this->load->helper('ap_function');
		$this->load->helper('ap_module');
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
				$post_data = $this->input->post();
                if (!empty($post_data)) {
					// nhận dữ liệu từ vtp
					$data = $post_data;
					// exit($data['ORDER_NUMBER']);
					
					// bỏ qua xử lý mục 2 check golive coi như ko xảy ra timeout, nếu xử lý mục này thì khi tạo đơn vtp phải thêm ORDER_REFERENCE là mã đơn hàng của mình để cập nhật ngược lại mã vận đơn khi vtp push hành trình
					
					// xử lý dữ liệu
					if($data['ORDER_STATUS']!="" && $data['ORDER_NUMBER']!="" && check_mvd_exist($data['ORDER_NUMBER'])) { 
					// check mã vận đơn có tồn tại trong hệ thống không (mục 6 & 7)
						if($data['ORDER_STATUS']!=501
						&& $data['ORDER_STATUS']!=503
						&& $data['ORDER_STATUS']!=504
						&& $data['ORDER_STATUS']!=201
						&& $data['ORDER_STATUS']!=107
						&& $data['ORDER_STATUS']!=-15) { 
						// check trạng thái hiện tại là 1 trong các trạng thái cuối này thì không cập nhật thêm bất cứ trạng thái mới nào (mục 9)
							if(check_trip_order_status_vtp($data['ORDER_NUMBER'],$data['ORDER_STATUS'])==0) { 
							// check trạng thái ghi nhận có đang đúng thứ tự trên hệ thống (mục 8)
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
								
								// thành công, phản hồi kết quả cho vtp
								$reponsive = array("status" => 200, "message" => "Cập nhật hành trình thành công.");
							} else { //ghi log bypass và phản hồi cho vtp
								$reponsive = array("status" => 2, "message" => "Không đúng thứ tự hành trình.");
							}
						} else { //ghi log bypass và phản hồi cho vtp
							$reponsive = array("status" => 3, "message" => "Mã vận đơn đã cập nhật trạng thái cuối.");
						}
					} else { //ghi log bypass và phản hồi cho vtp
						$reponsive = array("status" => 0, "message" => "Mã vận đơn không tồn tại trong hệ thống.");
					}
					
					// ghi log (bất kể trường hợp nào xảy ra ở trên)
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
					
					//trả kết quả phản hồi đến vtp
					//exit(json_encode($reponsive));
					$this->output
                        ->set_content_type('application/json')
                        ->set_output(json_encode($reponsive));
					
					/*
					ghi chú reponsive status cho vtp: 
					
					Thành công:
					- 200: cập nhật hành trình thành công
					
					Thất bại:
					- 0: đơn không có trên hệ thống
					- 2: không đúng thứ tự hành trình
					- 3: mã vận đơn đã cập nhật trạng thái cuối
					*/

                } else {
                    $this->output
                        ->set_content_type('application/json')
                        ->set_output(json_encode(['message' => 'No data received']));
                }
            }
        }
}
