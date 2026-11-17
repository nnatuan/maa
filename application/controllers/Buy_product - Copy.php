<?php
class buy_product extends CI_Controller
{
    var $data_view = '';
    var $title = '';
    var $tags = '';
    var $description = '';
    var $cname = '';
    var $cemail = '';
    var $cphone = '';
    var $ctotal = '';
    var $cnote = '';
	var $cpayment_method = '';
    var $id_hidden = '';
	var $caddress ='';
    var $btn_submit = '';
var $_empty = '';
	var $view_folder = '';
	var $msg = "";
    function __construct()
	{ 
		parent::__construct();
        session_start();
        $this->load->database();
        $this->load->helper('ap_db');
        $this->load->helper('ap_object');
        $this->load->helper('ap_function');
        $this->load->helper('ap_view');
        $this->load->helper('ap_module');
        $this->load->helper('ap_cart');
		$this->load->helper("ap_mail");
    }
    function index()
    {
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
        $_SESSION['back_link'] = base_url();
        if (isset($_POST['cname']))
            $this->cname = $_POST['cname'];
        if (isset($_POST['cemail']))
            $this->cemail = $_POST['cemail'];
        if (isset($_POST['cphone']))
            $this->cphone = $_POST['cphone'];
        if (isset($_POST['ctotal']))
            $this->ctotal = $_POST['ctotal'];
        if (isset($_POST['cnote']))
            $this->cnote = $_POST['cnote'];
		if (isset($_POST['caddress']))
            $this->caddress = $_POST['caddress'];
		if (isset($_POST['cpayment_method']))
            $this->cpayment_method = $_POST['cpayment_method'];

        if (isset($_POST['id_hidden']))
            $this->id_hidden = $_POST['id_hidden'];
        if (isset($_POST['btn_submit']))
            $this->btn_submit = $_POST['btn_submit'];
		 if (isset($_SESSION["empty"]))
            $this->_empty = $_SESSION["empty"];

    }
    private function caculate_data()
    {
        $obj_data = get_config_byid(3);
        foreach ($obj_data as $data):
            $this->title = $data['cvalue'];
        endforeach;
        $obj_data = get_config_byid(2);
        foreach ($obj_data as $data):
            $this->tags = $data['cvalue'];
        endforeach;
        $obj_data = get_config_byid(4);
        foreach ($obj_data as $data):
            $this->description = $data['cvalue'];
        endforeach;
       
		if ($this->btn_submit != '') {
			$this->insert_cart();
			empty_cart();
            redirect(base_url() . 'hoan-tat');
        }
		
		$this -> load -> library('Mobile_Detect');
    	$detect = new Mobile_Detect();
    	if ($detect->isMobile() || $detect->isTablet() || $detect->isAndroidOS()) {
        	$this->view_folder ='mobile';
    	}else
    		$this->view_folder ='desktop';
    }
	
	function insert_cart()
    {
		$cgiam_gia=0;$code_sale='';
		if(isset($_SESSION['price_sale'])) {
			$cgiam_gia = $_SESSION['price_sale'];
			$code_sale = $_SESSION['code_sale'];
		}
		date_default_timezone_set('Asia/Saigon');
        $obj_cart       = '';
		$ccode = "DH".time();
        $data           = array(
			"ccode" => $ccode,
            "cfullname" => $this->cname,
            "cemail" => $this->cemail,
            "nphone" => $this->cphone,
            "caddress" => $this->caddress,
            "nid_order_status" => 1,
			"ctime" => time(),
            "ddate01" => date("Y-m-d"),
            "ctime01" => date("H:i:s"),
            "cnote" => $this->cnote,
            "ntotal" => $this->ctotal,
			"cgiam_gia" => $cgiam_gia,
			"ccode_sale" => $code_sale
        );
        $this->db->insert("torder", $data);
        $id_cart = dbget_identity();
        $_SESSION["cart_id"] = $id_cart;

        if (isset($_SESSION["cart"]))
            $obj_cart = $_SESSION["cart"];
        foreach ($obj_cart as $cart) {
            if($cart['iscolor']==1) {
				   $color = get_color_detail($cart['id']);
				   $product = get_product_detail($color['nid_product']);
				   if($color['fprice_sale'] < $color['fprice'] && $product['ncheck'] == 1)
						$price=$color['fprice_sale'];
				   else
						$price=$color['fprice'];
			   } else {
				   $product = get_product_detail($cart['id']);
				   if($product['fprice_sale'] < $product['fprice'] && $product['ncheck'] == 1)
						$price=$product['fprice_sale'];
					else
						$price=$product['fprice'];
			   }
			   
            $data_detail = array(
                'nid_order' => $id_cart,
                'nid_product' => $cart['id'],
                'nquantity' => $cart['qty'],
				'niscolor' => $cart['iscolor'],
				'cprice' => $price
            );
            $this->db->insert('torder_detail', $data_detail);
        }

		
		$str = '<div style="width:860px;margin:0 auto;">';
		$str .= '<p style="color: #2600ff;"><strong>Cảm ơn quý khách '.$this->cname.' đã tin tưởng và sử dụng sản phẩm Seedee!</strong></p>';
		$str .= '<p>Seedee rất vui thông báo đơn hàng <strong>'. $ccode .'</strong> của quý khách đã được tiếp nhận và đang trong quá trình xử lý, chúng tôi sẽ thông báo đến Quý Khách ngay khi hàng chuẩn bị được giao.</p>';
		$str .= '<h3 style="color: #2600ff;"><u>Thông tin đơn hàng</u></h3>';
		$str .= '<h4>Thông tin thanh toán</h4>';
		$str .= '			<table width="100%" style="border-collapse: collapse;">';
		$str .= '			  <tr>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;width: 30%;"><strong>Họ tên</strong></td>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;">'.$this->cname.'</td>';
		$str .= '			  </tr>';
		$str .= '			  <tr>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>Số điện thoại</strong></td>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;">'.$this->cphone.'</td>';
		$str .= '			  </tr>';
		$str .= '			  <tr>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>Địa chỉ</strong></td>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;">'.$this->caddress.'</td>';
		$str .= '			  </tr>';
		$str .= '			 </table>';
		$str .= '<h4>Chi tiết đơn hàng:</h4>';
		
		$str .= '			<table width="100%" style="border-collapse: collapse;">';
		$str .= '			  <tr>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;background: #ddd;"><strong>Sản phẩm</strong></td>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;background: #ddd;"><strong>Đơn giá</strong></td>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;background: #ddd;"><strong>Số lượng</strong></td>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;background: #ddd;"><strong>Thành tiền</strong></td>';
		$str .= '			  </tr>';
		$total = 0;$sl_sp_dong_gia = 0; $giam_gia = 0;$count_sale=0;
		foreach ($obj_cart as $cart) {
			if($cart['iscolor']==1) {
						   $color = get_color_detail($cart['id']);
						   $product = get_product_detail($color['nid_product']);
						   if($color['fprice_sale'] < $color['fprice'] && $product['ncheck'] == 1)
								$price=$color['fprice_sale'];
						   else
								$price=$color['fprice'];
					   } else {
						   $product = get_product_detail($cart['id']);			
						   if($product['fprice_sale'] < $product['fprice'] && $product['ncheck'] == 1)
								$price=$product['fprice_sale'];
							else
								$price=$product['fprice'];
						}
							

					   $thanh_tien = $price*$cart['qty']; 
					   $total += $price*$cart['qty']; 		   
			
		$str .= '			  <tr>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>'.$product['cproducts'];
		if($cart['iscolor']==1) { 
		$str .= '			   <br><span style="color: red;">('. $color['cname'] .')</span>';
		}	   
		$str .= '</strong></td>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>'.number_format($price).'đ</strong></td>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>'.$cart['qty'].'</strong></td>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>'.number_format($thanh_tien).'đ</strong></td>';
		$str .= '			  </tr>';
		}			

		if(isset($_SESSION['price_sale'])) {
		$str .= '			  <tr>';
		$str .= '				 <td colspan="3" style="border: 1px solid #ddd;padding: 10px;text-align:right;"><strong>Giảm giá (Mã GG):</strong></td>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>- '.number_format($cgiam_gia).'đ</strong></td>';
		$str .= '			  </tr>';	
		}
		$str .= '			  <tr>';
		$str .= '				 <td colspan="3" style="border: 1px solid #ddd;padding: 10px;text-align:right;"><strong>Tổng giá trị đơn hàng:</strong></td>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>'.number_format($total - $cgiam_gia).'đ</strong></td>';
		$str .= '			  </tr>';
		$str .= '			 </table>';		
		$str .= '<p>Một lần nữa, xin cảm ơn Quý khách!</p>';
		$cf = get_config_by_id(8);
		$img_url = base_url().'upload/fb/'.$cf['cimage'];
        $str .=
            '<p><img src="'.$img_url.'" style="width:100px;"></p>';
        $str .= "</div>";
		//exit($str);
		$cf = get_config_by_id(1);
		$list_mail = array(
			$this->cemail,
			$cf['cvalue']
		);
		//SendMail("no_reply@seedee.com", $list_mail, "Xác nhận đơn hàng Seedee", $str, "Seedee");
		SendMail("no_reply@seedee.com", $this->cemail, "Xác nhận đơn hàng Seedee", $str, "Seedee");
    }
    private function do_business()
    {
        $data['title']           = $this->title;
        $data['tags']            = $this->tags;
        $data['description']     = $this->description;
        $data['menu_sec']        = '';
        $data['menu_cat']        = '';
        $data['menu_top']        = 'buy_product';
        $data['data_view']       = $this->data_view;
        $data["msg"] = $this->msg;
	
        $data['view_folder']    = $this->view_folder;
        $this->load->view($this->view_folder.'/buy_product', $data);
    }
    function destroy_data()
    {
    }
    function empty_cart()
    {
        $_SESSION["cart"] 		= NULL;
		$_SESSION["cname"]     = NULL;
		$_SESSION["cemail"]    = NULL;
		$_SESSION["cphone"]    = NULL;
		$_SESSION["ctotal"] = NULL;
		$_SESSION["cnote"]     = NULL;
		$_SESSION["caddress"]     = NULL;
		//$_SESSION["empty"] = NULL;
    }
    function ajax_post_cart()
    {
        $id_pro  = '';
        $qty_pro = '';
        if (isset($_POST['id_pro']))
            $id_pro = $_POST['id_pro'];
        if (isset($_POST['qty_pro']))
            $qty_pro = $_POST['qty_pro'];
        add_cart($id_pro, $qty_pro);
       // echo 'done';
		exit("done");
    }
    function ajax_update_cart()
    {
        $id_pro  = '';
        $qty_pro = '';
        if (isset($_POST['id']))
            $id_pro = $_POST['id'];
        if (isset($_POST['qty']))
            $qty_pro = $_POST['qty'];
        update_cart($id_pro, $qty_pro);
      exit("done");
    }
    function ajax_remove_cart()
    {
        $id_pro = '';
        if (isset($_POST['id']))
            $id_pro = $_POST['id'];
        remove_cart($id_pro);
       exit("done");
    }
    function update2($id, $qty)
    {
        exit($_SESSION["cemail"]);
    }
}
	