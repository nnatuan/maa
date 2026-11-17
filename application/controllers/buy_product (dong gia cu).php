<?php
class buy_product extends Controller
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
    var $bnt_submit01 = '';
	var $_empty = '';
	var $view_folder = '';
	var $msg = '';
	var $nid_province = '';
	var $nid_district = '';
	var $cshop = '';
    function buy_product()
    {
        parent::Controller();
        session_start();
        $this->load->database();
        $this->load->helper('ap_db');
        $this->load->helper('ap_object');
        $this->load->helper('ap_function');
        $this->load->helper('ap_view');
        $this->load->helper('ap_module');
        $this->load->helper('ap_cart');
		$this->load->helper('ap_mail');
    }
    function index()
    {
    	//exit($_SESSION['utm_source']."aaa");
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
        $this->load->language('ap', 'eng');
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
		if (isset($_POST['nid_province']))
            $this->nid_province = $_POST['nid_province'];
		if (isset($_POST['nid_district']))
            $this->nid_district = $_POST['nid_district'];
		if (isset($_POST['cshop']))
            $this->cshop = $_POST['cshop'];
		
        if (isset($_POST['id_hidden']))
            $this->id_hidden = $_POST['id_hidden'];
        if (isset($_POST['bnt_submit01']))
            $this->bnt_submit01 = $_POST['bnt_submit01'];
		 if (isset($_SESSION["empty"]))
            $this->_empty = $_SESSION["empty"];

    }
    private function caculate_data()
    {
    	//exit($_SESSION['utm_source']."aa");
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
       
		if ($this->bnt_submit01 != '') {
			//if(!isset($_SESSION['ship'])) 
			//	$this->msg='Vui lòng chọn phương thức thanh toán phù hợp!';
			//else {
				$this->insert_cart();
				empty_cart();
				//redirect(base_url() . 'qua-thuong');
				redirect(base_url() . 'hoan-tat');
			//}
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

		$cgiam_gia=0;$code_sale='';$utm_source='';
		if(isset($_SESSION['price_sale'])) {
			$cgiam_gia = $_SESSION['price_sale'];
			$code_sale = $_SESSION['code_sale'];
		}
		if(isset($_SESSION['utm_source'])) {
			$utm_source = $_SESSION['utm_source'];
		
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
//			"cship" => $_SESSION['ship'],
			"nid_province" => $this->nid_province,
			"nid_district" => $this->nid_district,
			"cshop" => $this->cshop,
            "nid_order_status" => 1,
			"ctime" => time(),
            "ddate01" => date("Y-m-d"),
            "ctime01" => date("H:i:s"),
            "cnote" => $this->cnote,
             "cip" => $_SERVER['REMOTE_ADDR'],
            "ntotal" => $this->ctotal,
			"cgiam_gia" => $cgiam_gia,
			"ccode_sale" => $code_sale,
			"utm_source" =>$utm_source
        );
        $this->db->insert("torder", $data);
        $id_cart = dbget_identity();
		$_SESSION['nid_order'] = $id_cart;
		$_SESSION["total"] = $this->ctotal;
		$_SESSION["luot_quay"] = 1; 
		
		$str = '<div>';
		$str .= '<p style="color: #2600ff;"><strong>Cảm ơn quý khách '.$this->cname.' đã tin tưởng và sử dụng sản phẩm Apupicosmetics!</strong></p>';
		$str .= '<p>Apupicosmetics rất vui thông báo đơn hàng <strong>'. $ccode .'</strong> của quý khách đã được tiếp nhận và đang trong quá trình xử lý, chúng tôi sẽ thông báo đến Quý Khách ngay khi hàng chuẩn bị được giao.</p>';
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

		if (isset($_SESSION["cart"]))
            $obj_cart = $_SESSION["cart"];
		foreach ($obj_cart as $cart) {
			if($cart['iscolor']==2) {
										$color_lv2 = get_color_lv2_by_id($cart['id']);
									   $color = get_color_detail($color_lv2['nid_color']);
									   $product = get_product_detail($color['nid_product']);
									   $name = $product['cproducts'].' '.$color['cname'].' '.$color_lv2['cname'];
									   if($color_lv2['fprice_sale'] < $color_lv2['fprice'] && $product['ncheck'] == 1)
											$price=$color_lv2['fprice_sale'];
									   else
											$price=$color_lv2['fprice'];
								   } else if($cart['iscolor']==1) {
									   $color = get_color_detail($cart['id']);
									   $product = get_product_detail($color['nid_product']);
									   $name = $product['cproducts'].' '.$color['cname'];
									   if($color['fprice_sale'] < $color['fprice'] && $product['ncheck'] == 1)
											$price=$color['fprice_sale'];
									   else
											$price=$color['fprice'];
								   } else {
									   $product = get_product_detail($cart['id']);
									   $name = $product['cproducts'];
									   if($product['fprice_sale'] < $product['fprice'] && $product['ncheck'] == 1)
											$price=$product['fprice_sale'];
										else
											$price=$product['fprice'];
								   }
								   $cmua_kem=0;
								   $qty=$cart['qty'];
								   //if($product['cdong_gia']==1) {
									if($product['cdong_gia']==1 && isset($_SESSION['total_no_with']) && $_SESSION['total_no_with']>=$product['cap_dung_bill']) {	   
										$cf=get_config_by_id(14);
										$price=$cf['cvalue'];
										$cmua_kem=1;
										$qty=1;
									}
							
			$data_detail = array(
                'nid_order' => $id_cart,
                'nid_product' => $cart['id'],
                //'nquantity' => $cart['qty'],
				'nquantity' => $qty,
				'niscolor' => $cart['iscolor'],
				'cprice' => $price,
				'cmua_kem' => $cmua_kem
            );
            $this->db->insert('torder_detail', $data_detail);
			
						if($product['cdong_gia']==1) 
							$thanh_tien = $price; 
						else
							$thanh_tien = $price*$cart['qty']; 
					   
					   if($product['cdat_truoc']!=1)
							$total += $price*$cart['qty']; 		   
			
		$str .= '			  <tr>';
		$str .= '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>'.$name.'</strong></td>';
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
		$str .= '<p><img src="https://apupicosmetics.com/images/logo.png" style="width:100px;"></p>';
		$str .= '</div>';
		//exit($str);
		SendMail('no_reply@apupicosmetics.com', "phu2212@gmail.com", "Xác Nhận Dơn Hàng Apupicosmetics",$str, "Apupicosmetics");
		
		//SendMail('no_reply@myphamhanquocso1.com', "phu2212@gmail.com", "website apupicosmetics co don","Don hang apupicosmetics", "apupicosmetics");
			
		//send mail
		//$this->send_mail($str,$this->cemail);
		//SendMail("no_reply@huyhoangmobile.com", $email, "Đơn hàng từ Huy Hoàng Mobile", $str, $fromfullname = "Huy Hoàng Mobile");
    }
	private function send_mail($str, $email)
    {
		$obj_data = get_config_byid(1);
            foreach ($obj_data as $data):
                $email_ad = $data['cvalue'];
            endforeach;
            $this->load->library('email');
            $config['protocol']    = 'sendmail';
            $config['charset']     = 'utf-8';
            $config['wordwrap']    = TRUE;
            $config['mailtype']    = "html";
            $config['protocol']    = 'smtp';
            $config['smtp_host']   = 'in-v3.mailjet.com';
            $config['smtp_port']   = '587'; // 8025, 587 and 25 can also be used. Use Port 465 for SSL.
            //$config['smtp_crypto'] = 'tls';
            $config['smtp_user']   = "5fdef9e28837437e34d1c21786deed9e";
            $config['smtp_pass']   = "dfe7f81e2a0618671edf4211d55b7004";
            $config['charset']     = 'utf-8';
            $config['mailtype']    = 'html';
            $config['newline']     = "rn";
            $this->email->initialize($config);
            $list      = array(
                $email, $email_ad
            );
            //$str_email = $this->send_mail_get_pass($obj_user, $cemail, $ccode_recover_pass);
            $this->email->from('no_reply@huyhoangmobile.com', 'Huy Hoàng Mobile');
            $this->email->to($list);
            $this->email->subject('Đơn hàng từ Huy Hoàng Mobile');
            $this->email->message($str);
            try {
                $this->email->send();
                //exit('Message has been sent.');
            }
            catch (Exception $e) {
                //exit($e->getMessage());
            }
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
        $data['g_isbuy_product'] = 0;
		$data['msg']    = $this->msg;
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
		$_SESSION['utm_source'] = NULL;
		$_SESSION['total_no_with'] = NULL; 
		$_SESSION['flag_dg'] = NULL;
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
	