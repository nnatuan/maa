<?php 
class ipn extends Controller {

var $event 				= '';
var	$obj_complete_cart		='';
var $m_language			='eng';

var $nid_material		= '';
var $nid_cat			= '';

var	$title					= '';
var	$tags					= '';
var	$description			= ''; 
var $view_folder = '';
var $vnp_TmnCode = '';
var $vnp_Amount = '';
var $vnp_BankCode = '';
var $vnp_BankTranNo = '';
var $vnp_CardType = '';
var $vnp_PayDate = '';
var $vnp_OrderInfo = '';
var $vnp_TransactionNo = '';
var $vnp_ResponseCode = '';
var $vnp_TransactionStatus = '';
var $vnp_TxnRef = '';
var $vnp_SecureHashType = '';
var $vnp_SecureHash = '';
function ipn()
	{
		parent::Controller();	
		session_start();
		$this->load->database();	
		$this->load->helper('ap_function');
		$this->load->helper('ap_object');
		$this->load->helper('ap_html');
		$this->load->helper('ap_view_helper');
		$this->load->helper('ap_db');
		$this->load->helper('ap_module');
		$this->load->helper('ap_cart');
	}

// Dinh nghia ham rut gon khi set cookie cho cac bien.
//
private function f_set_cookie($cookie_name,$cookie_value)
 { 
	return dbset_cookie('cookie_guide_'.$cookie_name,$cookie_value);
 }
 
// Dinh nghia ham rut gon khi get cookie cho cac bien.
//
private function f_get_cookie($cookie_name)
 { 
	return dbget_cookie('cookie_complete_cart_'.$cookie_name);
 }
	
// Dinh nghia ham rut gon khi set language cho cac label.
// 
private function m_language_key($str_key)
{
	return $this->lang->line('lbl.complete_cart.'.$str_key);
}


function index()
{
	$ip = $_SERVER['REMOTE_ADDR'];
	$whitelist = array('113.160.92.202','103.220.86.4', '113.52.45.78', '113.52.45.78', '116.97.245.130', '42.118.107.252','113.20.97.250','203.171.19.146','103.220.87.4');

    if(!in_array($ip, $whitelist)) {
        exit('access denied');
    }
	$this->do_process();
}
	
function do_process() 
{
	$this->get_data(); 		
	$this->caculate_data(); 		
	$this->do_business(); 		
	$this->destroy_data();
}
	
private function get_data()
{  
//exit($_GET["vnp_Amount"].'a');
//exit($_REQUEST["vnp_Amount"]);
//exit($_SERVER['REQUEST_URI']);
	
	parse_str(substr(strrchr($_SERVER['REQUEST_URI'], "?"), 1), $_GET);
	
	if (isset($_GET["vnp_TmnCode"])) {
        $this->vnp_TmnCode = $_GET["vnp_TmnCode"];
    }
	if (isset($_GET["vnp_Amount"])) {
        $this->vnp_Amount = $_GET["vnp_Amount"];
    }
	if (isset($_GET["vnp_BankCode"])) {
        $this->vnp_BankCode = $_GET["vnp_BankCode"];
    }
	if (isset($_GET["vnp_BankTranNo"])) {
        $this->vnp_BankTranNo = $_GET["vnp_BankTranNo"];
    }
	if (isset($_GET["vnp_CardType"])) {
        $this->vnp_CardType = $_GET["vnp_CardType"];
    }
	if (isset($_GET["vnp_PayDate"])) {
        $this->vnp_PayDate = $_GET["vnp_PayDate"];
    }
	if (isset($_GET["vnp_OrderInfo"])) {
        $this->vnp_OrderInfo = $_GET["vnp_OrderInfo"];
    }
	if (isset($_GET["vnp_TransactionNo"])) {
        $this->vnp_TransactionNo = $_GET["vnp_TransactionNo"];
    }
	if (isset($_GET["vnp_ResponseCode"])) {
        $this->vnp_ResponseCode = $_GET["vnp_ResponseCode"];
    }
	if (isset($_GET["vnp_TransactionStatus"])) {
        $this->vnp_TransactionStatus = $_GET["vnp_TransactionStatus"];
    }
	if (isset($_GET["vnp_TxnRef"])) {
        $this->vnp_TxnRef = $_GET["vnp_TxnRef"];
    }
	if (isset($_GET["vnp_SecureHashType"])) {
        $this->vnp_SecureHashType = $_GET["vnp_SecureHashType"];
    }
	if (isset($_GET["vnp_SecureHash"])) {
        $this->vnp_SecureHash = $_GET["vnp_SecureHash"];
    }
}
	
private function caculate_data()
{
	$data = [
            "vnp_TmnCode" => $this->vnp_TmnCode,
            "vnp_Amount" => $this->vnp_Amount,
            "vnp_BankCode" => $this->vnp_BankCode,
            "vnp_BankTranNo" => $this->vnp_BankTranNo,
            "vnp_CardType" => $this->vnp_CardType,
            "vnp_PayDate" => $this->vnp_PayDate,
            "vnp_OrderInfo" => $this->vnp_OrderInfo,
            "vnp_TransactionNo" => $this->vnp_TransactionNo,
            "vnp_ResponseCode" => $this->vnp_ResponseCode,
            "vnp_TransactionStatus" => $this->vnp_TransactionStatus,
            "vnp_TxnRef" => $this->vnp_TxnRef,
            "vnp_SecureHashType" => $this->vnp_SecureHashType,
            "vnp_SecureHash" => $this->vnp_SecureHash,
            "nstatus"=>1
        ];
        $nid_order= $this->vnp_TxnRef;
       
      		$vnp_TmnCode = "APUPICTT"; //Mã định danh merchant kết nối (Terminal Id)
            $vnp_HashSecret = "CAZCWSJAQIJHUNMFDVIGIUBMKUVBFGAU"; //Secret key
            $vnp_Url = "https://pay.vnpay.vn/vpcpay.html";
            $vnp_Returnurl = base_url() . "hoan-tat";
            $vnp_apiUrl =
                "http://sandbox.vnpayment.vn/merchant_webapi/merchant.html";
            $apiUrl =
                "https://sandbox.vnpayment.vn/merchant_webapi/api/transaction";
            //Config input format
            //Expire
            $startTime = date("YmdHis");
            $expire = date(
                "YmdHis",
                strtotime("+15 minutes", strtotime($startTime))
            );
    parse_str(substr(strrchr($_SERVER['REQUEST_URI'], "?"), 1), $_GET);        
    
    foreach ($_GET as $key => $value) {
        if (substr($key, 0, 4) == "vnp_") {
            $inputData[$key] = $value;
        }
    }
    
    $vnp_SecureHash = $inputData['vnp_SecureHash'];
    unset($inputData['vnp_SecureHash']);
    ksort($inputData);
    $i = 0;
    $hashData = "";
    foreach ($inputData as $key => $value) {
        if ($i == 1) {
            $hashData = $hashData . '&' . urlencode($key) . "=" . urlencode($value);
        } else {
            $hashData = $hashData . urlencode($key) . "=" . urlencode($value);
            $i = 1;
        }
    }


    $secureHash = hash_hmac('sha512', $hashData, $vnp_HashSecret);
    $vnpTranId = $inputData['vnp_TransactionNo']; //Mã giao dịch tại VNPAY
    $vnp_BankCode = $inputData['vnp_BankCode']; //Ngân hàng thanh toán
    $vnp_Amount = $inputData['vnp_Amount']/100; // Số tiền thanh toán VNPAY phản hồi


    $Status = 0; // Là trạng thái thanh toán của giao dịch chưa có IPN lưu tại hệ thống của merchant chiều khởi tạo 
    $orderId = $nid_order;
    $order = get_order_by_id($nid_order);
    //echo($vnp_SecureHash);
    //echo("</br>");

  //  exit($secureHash);
    
  //  print_r($order);
  //  $secureHash = '';
    try {
        //Check Orderid    
        //Kiểm tra checksum của dữ liệu
        if ($secureHash == $vnp_SecureHash) {
            //Lấy thông tin đơn hàng lưu trong Database và kiểm tra trạng thái của đơn hàng, mã đơn hàng là: $orderId            
            //Việc kiểm tra trạng thái của đơn hàng giúp hệ thống không xử lý trùng lặp, xử lý nhiều lần một giao dịch
            //Giả sử: $order = mysqli_fetch_assoc($result);   
    
    //        $order = NULL;
        //	exit($order["ntotal"].'-'.$this->vnp_Amount);
            if ($order != NULL) {
                if($order["ntotal"] == $vnp_Amount) //Kiểm tra số tiền thanh toán của giao dịch: giả sử số tiền 
              //  kiểm tra là đúng. //$order["Amount"] == $vnp_Amount
                {

                    if ($order["nstatus"] != NULL && $order["nstatus"] == 0) {
                        if ($this->vnp_ResponseCode == '00' || $this->vnp_TransactionStatus == '00') {
                            $Status = 1; // Trạng thái thanh toán thành công
                        } else {
                            $Status = 2; // Trạng thái thanh toán thất bại / lỗi
                        }
                        //Cài đặt Code cập nhật kết quả thanh toán, tình trạng đơn hàng vào DB
                        //
                        $this->db->where("nid", $nid_order);
        				$this->db->update("torder", $data);

                        //
                        //
                        //Trả kết quả về cho VNPAY: Website/APP TMĐT ghi nhận yêu cầu thành công                
                        $returnData['RspCode'] = '00';
                        $returnData['Message'] = 'Confirm Success';
                    } else {
                    	$data['nid_order']= $nid_order;
				    	$data['ip']= $_SERVER['REMOTE_ADDR'];
				    	$data['RspCode'] = '04';
	                    $data['Message'] = 'invalid amount';
				    	$this->db->insert("tpayment_log",$data);
                        $returnData['RspCode'] = '02';
                        $returnData['Message'] = 'Order already confirmed';
                    }
                }
                else {
                	$data['nid_order']= $nid_order;
			    	$data['ip']= $_SERVER['REMOTE_ADDR'];
			    	 $data['RspCode'] = '04';
                    $data['Message'] = 'invalid amount';
			    	$this->db->insert("tpayment_log",$data);
                    $returnData['RspCode'] = '04';
                    $returnData['Message'] = 'invalid amount';
                }
            } else {
            	$data['nid_order']= $nid_order;
		    	$data['ip']= $_SERVER['REMOTE_ADDR'];
		    	 $data['RspCode'] = '01';
                $data['Message'] = 'Order not found';
		    	$this->db->insert("tpayment_log",$data);
                $returnData['RspCode'] = '01';
                $returnData['Message'] = 'Order not found';
            }
        } else {
        	$data['nid_order']= $nid_order;
	    	$data['ip']= $_SERVER['REMOTE_ADDR'];
	    	$data['RspCode'] = '97';
            $data['Message'] = 'Invalid signature';
	    	$this->db->insert("tpayment_log",$data);
            $returnData['RspCode'] = '97';
            $returnData['Message'] = 'Invalid signature';
        }
    } catch (Exception $e) {
    	$data['nid_order']= $nid_order;
    	$data['ip']= $_SERVER['REMOTE_ADDR'];
    	$data['RspCode'] = '99';
        $data['Message'] = 'Unknow error';
    	$this->db->insert("tpayment_log",$data);
        $returnData['RspCode'] = '99';
        $returnData['Message'] = 'Unknow error';

    }
    //Trả lại VNPAY theo định dạng JSON
    echo json_encode($returnData);
  //  exit($orderId);

	die();
	$this -> load -> library('Mobile_Detect');
    	$detect = new Mobile_Detect();
    	if ($detect->isMobile() || $detect->isTablet() || $detect->isAndroidOS()) {
        	$this->view_folder ='mobile';
    	}else
    		$this->view_folder ='desktop';
}
	
private function do_business()
{	
empty_cart();
	$data['title']			= $this->title;
	$data['tags']			= $this->tags;
	$data['description']	= $this->description;
	
	$data['menu_sec']		= '';
	$data['menu_cat']		= '';
	
	$data['menu_top']			= 'contact';
		
	$data['obj_complete_cart']	= $this->obj_complete_cart;
	$data['g_ishome']		= 0;
	$data['view_folder']    = $this->view_folder;
//	$this->load->view($this->view_folder.'/complete_cart',$data);	
}
	
private function destroy_data()
{
			
}
private function get_where_guide_string()
{
		$str		= 'where nstatus = "1"';	
		//$str	   .= 'AND ccode_cat_news = "'.$this->m_nid_cat_news.'" ';
//Dieu kien get record nstatus
//0:Khong active
//1:Active

		return $str ;
}

}