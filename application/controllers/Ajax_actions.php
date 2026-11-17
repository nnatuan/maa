<?php
class ajax_actions extends CI_Controller
{
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
        $this->load->helper('ap_mail');
		date_default_timezone_set('Asia/Saigon');
    }
	function set_lang()
	{
		$lang = '';
		if(isset($_POST['lang']))
			$lang = $_POST['lang'];
		$_SESSION['_lang'] = $lang;
		exit('1');
	}	
	function load_product()
    {
        $ccode_sec = $_POST['ccode_sec'];
		$nrow_per_page = $_POST['nrow_per_page'];
		$ncurr_page = $_POST['ncurr_page'];
		$sort_price = 0;
		$str_brand = '';
		if($_POST['cb_brand']!="") { exit('1');
			$arr_brand = json_decode($_POST['cb_brand'],true);
			//exit($_POST['cb_brand']);
			$str_brand = '(';
			$count = count($arr_brand); $i=1;
			foreach($arr_brand as $item){
				$str_brand.=$item;
				if($i<$count)
					$str_brand.=',';
				$i++;
			}
			$str_brand.=')';
		} else exit('0');
		//exit($str_brand);
		//exit(count($arr_brand).'');
		//exit($ccode_sec.'-'.$nrow_per_page.'-'.$ncurr_page.'-'.$sort_price.'-'.$str_brand);
        $list_product = get_product_page_by_sec($ccode_sec, $nrow_per_page, $ncurr_page, $sort_price, $str_brand);
		//exit(count($list_product).'');
		$data['list']    = $list_product;
		
		$this -> load -> library('Mobile_Detect');
    	$detect = new Mobile_Detect();
    	if ($detect->isMobile() || $detect->isTablet() || $detect->isAndroidOS())
        	$view_folder ='mobile';
    	else
    		$view_folder ='desktop';
		//var_dump($list);
		//exit($ccode_sec.'-'.$nrow_per_page.'-'.$ncurr_page.'-'.$str_brand.'-'.count($list_product));
        $this->load->view($view_folder.'/load_product', $data);
    }
	function check_het_hang() {
		$id = '';
		//exit('1');
        if (isset($_POST['id'])) {
            $id = $_POST['id'];
			$product = get_product_by_id_hh($id);
			if($product['nhethang']==1)
				$data = array("nhethang" => 0);
			else
				$data = array("nhethang" => 1);
			$this->db->where('nid',$id);	
			$this->db->update("tproducts", $data);
			exit($id);
		}
		exit('0');
	}
	function update_order_tmp()
    {
		//check order ip login sp đưa vào giỏ trong ngày
		$total = 0;
		$order = get_order_tmp_by_ip($_SERVER["REMOTE_ADDR"], date("Y-m-d"));
		
		if(isset($order['nid'])) {
			$obj_cart = $_SESSION["cart"];
			foreach($obj_cart as $cart) {
				if($cart['iscolor']==1) {
					   $color = get_color_detail($cart['id']);
					   $product = get_product_detail($color['nid_product']);
					   if($color['fprice_sale'] < $color['fprice'] && ($product['ncheck'] == 1 || $product['cflash'] == 1))
							$price=$color['fprice_sale'];
					   else
							$price=$color['fprice'];
				   } else {
					   $product = get_product_detail($cart['id']);
					   if($product['fprice_sale'] < $product['fprice'] && ($product['ncheck'] == 1 || $product['cflash'] == 1))
							$price=$product['fprice_sale'];
						else
							$price=$product['fprice'];
				   }
				$total += $price*$cart['qty'];
			}
			$nid_order = $order['nid'];
			$data           = array(
				"ntotal" => $total,
				"ctime" => time(),
				"ctime01" => date("H:i:s"),
			);
			$this->db->where("nid", $nid_order);
			$this->db->update("torder", $data);
			
			$this->db->where("nid_order", $nid_order);
			$this->db->delete("torder_detail");
		} else {
			$ccode = "TMP".time();
			$cfullname = "Khách vãng lai";
			$cemail = "N/A";
			$cphone = "N/A";
			$caddress = "N/A";
			$nid_member = 0;
			if(isset($_SESSION['nid_member'])) {
				$member = get_member_by_id($_SESSION['nid_member']);
				$cfullname = $member['cname'];
				$cemail = $member['cemail'];
				$cphone = $member['cphone'];
				$caddress = $member['caddress'];
				$nid_member = $_SESSION['nid_member'];
			}
			
			$obj_cart = $_SESSION["cart"];
			foreach($obj_cart as $cart) {
				if($cart['iscolor']==1) {
					   $color = get_color_detail($cart['id']);
					   $product = get_product_detail($color['nid_product']);
					   if($color['fprice_sale'] < $color['fprice'] && ($product['ncheck'] == 1 || $product['cflash'] == 1))
							$price=$color['fprice_sale'];
					   else
							$price=$color['fprice'];
				   } else {
					   $product = get_product_detail($cart['id']);
					   if($product['fprice_sale'] < $product['fprice'] && ($product['ncheck'] == 1 || $product['cflash'] == 1))
							$price=$product['fprice_sale'];
						else
							$price=$product['fprice'];
				   }
				$total += $price*$cart['qty'];
			}
			$data           = array(
				"ccode" => $ccode,
				"nid_member" => $nid_member,
				"cfullname" => $cfullname,
				"cemail" => $cemail,
				"cphone" => $cphone,
				"caddress" => $caddress,
				"nid_order_status" => 1,
				"nstatus" => 0,
				"ctime" => time(),
				"ddate01" => date("Y-m-d"),
				"ctime01" => date("H:i:s"),
				//"cnote" => $this->cnote,
				"ntotal" => $total,
				//"cgiam_gia" => $cgiam_gia,
				//"ccode_sale" => $code_sale,
				"cip" => $_SERVER["REMOTE_ADDR"],
			);
			$this->db->insert("torder", $data);
			$nid_order = dbget_identity();
		}
		
        $obj_cart = $_SESSION["cart"];
		foreach ($obj_cart as $cart) {
				if($cart['iscolor']==1) {
					   $color = get_color_detail($cart['id']);
					   $product = get_product_detail($color['nid_product']);
					   if($color['fprice_sale'] < $color['fprice'] && ($product['ncheck'] == 1 || $product['cflash'] == 1))
							$price=$color['fprice_sale'];
					   else
							$price=$color['fprice'];
				   } else {
					   $product = get_product_detail($cart['id']);
					   if($product['fprice_sale'] < $product['fprice'] && ($product['ncheck'] == 1 || $product['cflash'] == 1))
							$price=$product['fprice_sale'];
						else
							$price=$product['fprice'];
				   }
				  
				$data_detail = array(
					'nid_order' => $nid_order,
					'nid_product' => $cart['id'],
					'nquantity' => $cart['qty'],
					'niscolor' => $cart['iscolor'],
					'cprice' => $price
				);
				$this->db->insert('torder_detail', $data_detail);
	/*		
//exit($_SESSION['total'].'');			
			if($cart['id']==1 && $cart['iscolor']==0)
				exit("0");	
			if($cart['id']==1 && $cart['iscolor']==1)
				exit("1");
			if($cart['id']==2)
				exit("2");
			*/
		}

		$_SESSION['total'] = $total;
	}
    function ajax_post_cart()
    {
        $id_pro  = '';
        $qty_pro = '';
		$iscolor = '';
        if (isset($_POST['id_pro']))
            $id_pro = $_POST['id_pro'];
        if (isset($_POST['qty_pro']))
            $qty_pro = $_POST['qty_pro'];
		if (isset($_POST['iscolor']))
            $iscolor = $_POST['iscolor'];
        add_cart($id_pro, $qty_pro, $iscolor);
		
		$this->update_order_tmp();
		exit("done");
    }
	function ajax_post_cart2()
	{
		$ds = []; 
        $qty_pro = '';
        if (isset($_POST['ds']))
			$ds = $_POST['ds'];
        if (isset($_POST['qty_pro']))
            $qty_pro = $_POST['qty_pro'];
		for ($i=0; $i<count($ds); $i++)
			add_cart($ds[$i], $qty_pro);
		exit("done");
	}
    function ajax_update_cart()
    {
        $id_pro  = '';
        $qty_pro = '';
		$iscolor = '';
        if (isset($_POST['id']))
            $id_pro = $_POST['id'];
        if (isset($_POST['qty']))
            $qty_pro = $_POST['qty'];
		if (isset($_POST['iscolor']))
            $iscolor = $_POST['iscolor'];
        update_cart($id_pro, $qty_pro, $iscolor);
		
		//tinh lai gtri $total_ko_gom_sp_dg luôn để reload data tính toán chính xác lại bởi vì $_SESSION["total_ko_gom_sp_dg"] cuối page mới đc gán gtri
		//$this->update_session_total();
		$this->update_order_tmp();
		
		$_SESSION['price_sale'] = NULL;
		$_SESSION['code_sale'] = NULL;
		//exit("done");
		
		$total=0;
		$obj_cart = $_SESSION["cart"];				
								foreach($obj_cart as $cart){
									if($cart['iscolor']==1) {
									   $color = get_color_detail($cart['id']);
									   $product = get_product_detail($color['nid_product']);
									   $name = $product['cproducts'].' <span style="color:#04AA6D;font-size: 14px;"><i class="fa fa-check" aria-hidden="true"></i> '.$color['cname'];
									   
									   if($color['fprice_sale'] < $color['fprice'] && ($product['ncheck'] == 1 || $product['cflash'] == 1))
											$price=$color['fprice_sale'];
									   else
											$price=$color['fprice'];
								   } else {
									   $product = get_product_detail($cart['id']);
									   $name = $product['cproducts'];
									   if($product['fprice_sale'] < $product['fprice'] && ($product['ncheck'] == 1 || $product['cflash'] == 1))
											$price=$product['fprice_sale'];
										else
											$price=$product['fprice'];
										//exit($price.'-');
								   }
									$total += $price*$cart['qty'];
								}
							
		exit($total.'');
    }
	
	
	function update_session_total()
    {
        $obj_cart = $_SESSION["cart"]; $flag=0; $total_ko_gom_sp_dg=0;
		foreach($obj_cart as $cart){
									$flag_dg = 0;
									$price_old='';
									if($cart['iscolor']==1) {
									   $color = get_color_detail($cart['id']);
									   $product = get_product_detail($color['nid_product']);
									   if($color['fprice_sale'] < $color['fprice'] && $product['ncheck']==1) {
											$price=$color['fprice_sale'];
											$price_old=$color['fprice'];
									   } else 
											$price=$color['fprice'];
								   } else {
									   $product = get_product_detail($cart['id']);
									   if($product['fprice_sale'] < $product['fprice'] && $product['ncheck']==1) {
											$price=$product['fprice_sale'];
											$price_old=$product['fprice'];
									   } else
											$price=$product['fprice'];
								   }
							
									if($product['nid_dong_gia']!="") 
										$dg = get_dong_gia_by_id($product['nid_dong_gia']);
									if($product['cdong_gia']==1 && $product['cprice_dong_gia']!="" && $flag == 0 && isset($dg['nid']) && isset($_SESSION['total_ko_gom_sp_dg']) && $_SESSION['total_ko_gom_sp_dg']>=$dg['cmin']) {
											$price = $product['cprice_dong_gia'];
											$flag_dg = 1;
											$flag = 1;	
									} else {
										$total_ko_gom_sp_dg += $price*$cart['qty'];
									}
								}
		$_SESSION["total_ko_gom_sp_dg"]=$total_ko_gom_sp_dg;
    }
    function ajax_remove_cart()
    {
        $id_pro = '';
		$iscolor = '';
        if (isset($_POST['id']))
            $id_pro = $_POST['id'];
		if (isset($_POST['iscolor']))
            $iscolor = $_POST['iscolor'];
        remove_cart($id_pro,$iscolor);
		//$this->update_session_total();
		$this->update_order_tmp();
		$_SESSION['price_sale'] = NULL;
		$_SESSION['code_sale'] = NULL;
        exit("done");
    }
	function ajax_sort()
    {
        $value = '';
        if (isset($_POST['value']))
            $_SESSION['sort'] = $_POST['value'];
		
        exit("done");
    }
	function submit_code()
    {
        $code = '';
        if (isset($_POST['code']))
            $code = $_POST['code'];
		$data = get_code_vqmm($code);
		
		//if(isset($data['nid']) && $data['nactive']==0) {
		if(isset($data['nid'])) {
			$_SESSION['code_vqmm'] = $code;
			exit('1');
		} else {
			$_SESSION['code_vqmm'] = NULL;
			exit('0');
		}
    }
	function ajax_set_shipping()
    {
        $value = '';
        if (isset($_POST['value']))
            $_SESSION['ship'] = $_POST['value'];
		
        exit("done");
    }
	function get_email()
    {
        $cemail = '';
		if (isset($_POST['cemail']))
		{
			$_SESSION["cemail"] = $_POST['cemail'];
		} 
       exit("done");
    }
    function register_member()
    {
        $cgender        = '';
        $cuser   = '';
        $cemail      = '';
        $cphone      = '';
        $cpassword   = '';
        $crepassword = '';
		$recaptcha = '';
        if (isset($_POST['cgender']))
            $cgender = $_POST['cgender'];
        if (isset($_POST['cuser']))
            $cuser = $_POST['cuser'];
        if (isset($_POST['cemail']))
            $cemail = $_POST['cemail'];
        if (isset($_POST['cphone']))
            $cphone = $_POST['cphone'];
        if (isset($_POST['cpassword']))
            $cpassword = $_POST['cpassword'];
        if (isset($_POST['crepassword']))
            $crepassword = $_POST['crepassword'];
		if (isset($_POST['recaptcha']))
            $recaptcha = $_POST['recaptcha'];
		$active_code = md5($cpassword.time());
        if (get_user_bymail($cemail) != NULL) {
			exit("0");
        } else {
            if (strcmp($cpassword, $crepassword) != 0) {
                exit("1");
            } else {
				if($this->valid_form($recaptcha) == false) {	
					exit("2");
				} else {
					$data = array(
						'cgender' => $cgender,
						'cuser' => $cuser,
						'cemail' => $cemail,
						'cphone' => $cphone,
						'cactive' => '1',
						'cactive_code' => $active_code,
						'cpassword' => md5($cpassword)
					);
					$this->db->insert('tmember', $data);
					$_SESSION['cemail_log'] = $cemail;
					exit("3");
					//$this->email_active($cuser,$active_code,$cemail);  
				}
            }
        }
    }
	/*
    function email_active($user,$active_code,$email){
    	$str="<p>Xin chào ".$user."</p><br/>";
    	$str .= "<p>Cám ơn bạn đã đăng ký tài khoản tại Gunshop.vn</p>";
    	$str .= "<p>Để có thể đăng nhập tài khoản và sử dụng các tiện ích của website. Vui lòng kích hoạt tài khoản bằng cách click vào <a href='".base_url()."active-account/".$active_code."'>link này.</p><br/>";
    	$str.="<p>Gunshop.vn</p>";
    	SendMail("no_reply", $email, "Kích hoạt tài khoản tại Gunshop", $str, $fromfullname = "Gunshop");
    }
	*/
	function valid_form($recaptcha)
    {
        $recaptcha_secret = "6Lf9Rz0dAAAAALFTS7bZOzYXDYz9PkrOVIr54AaQ";
        $response         = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=" . $recaptcha_secret . "&response=" . $recaptcha);
        $response         = json_decode($response, true);
        if ($response["success"] === true) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
	function get_pass_forgot()
	{
		$cemail      = '';
		if (isset($_POST['cemail']))
            $cemail = $_POST['cemail'];
		$obj_user = get_user_bymail($cemail);
		if ($obj_user == NULL) {	
			exit("0");
		} else {
			$new_pass = $this->randomPassword();
			$data = array('cpassword' => md5($new_pass));
			$this->db->where('cemail', $cemail);
			$this->db->update('tmember', $data);
			$this->send_mail_get_pass($obj_user['cuser'], $cemail, $new_pass);
			exit("1");
		}
	}
	function randomPassword() {
		$alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
		$pass = array(); //remember to declare $pass as an array
		$alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
		for ($i = 0; $i < 8; $i++) {
			$n = rand(0, $alphaLength);
			$pass[] = $alphabet[$n];
		}
		return implode($pass); //turn the array into a string
	}
	/*
	function send_mail_get_pass($user, $cemail, $pass){
    	$str="<p>Xin chào <strong>".$user."</strong></p><br/>";
    	$str .= "<p>Cám ơn bạn đã sử dụng dịch vụ tại <strong>Gunshop.vn</strong></p>";
		$str .= "<p>Bạn đã yêu cầu chúng tôi gửi lại mật khẩu cho bạn</p>";
    	$str .= '<p>Mật khẩu hiện tại của bạn là: <span style="font-weight:bold;">'.$pass.'</span><p>';
    	$str .= '<p style="color:red;font-weight:bold;">Gunshop.vn</p>';
    	SendMail("no_reply", $cemail, "Khôi phục mật khẩu tại Gunshop", $str, $fromfullname = "Gunshop");
    }
	*/
	function login_member()
    {
        $cemail_log      = '';
        $cpassword_log   = '';
        if (isset($_POST['cemail_log']))
			$cemail_log = $_POST['cemail_log'];		       
        if (isset($_POST['cpassword_log']))
            $cpassword_log = $_POST['cpassword_log'];
		
		$obj_user = get_user_bymail_andpass($cemail_log, $cpassword_log);
        if ($obj_user == NULL) {	
			exit("false");
		} else {
			$_SESSION['cemail_log'] = $cemail_log;
			$_SESSION['cemail'] = NULL;
			exit("true");
		}
    }
	function logout_member() {
		$_SESSION['nid_member'] = NULL;
		$_SESSION['url'] = NULL;
		redirect(base_url());
	}
	function update_name_member() {
		$cname = '';
        if (isset($_POST['cname']))
            $cname = $_POST['cname'];
		
		$members= $this->db->get("tmember");
		$members= $members->result_array();

		foreach($members as $member){
			$data = array('cuser' => $cname);
			$this->db->where('cemail', $_SESSION['cemail_log']);
			$this->db->update('tmember', $data);
		}
		exit($cname);
	}
	function update_phone_member() {
		$cphone = '';
        if (isset($_POST['cphone']))
            $cphone = $_POST['cphone'];
		
		$members= $this->db->get("tmember");
		$members= $members->result_array();

		foreach($members as $member){
			$data = array('cphone' => $cphone);
			$this->db->where('cemail', $_SESSION['cemail_log']);
			$this->db->update('tmember', $data);
		}
		exit($cphone);
	}
	function update_address_member() {
		$caddress = '';
        if (isset($_POST['caddress']))
            $caddress = $_POST['caddress'];
		
		$members= $this->db->get("tmember");
		$members= $members->result_array();

		foreach($members as $member){
			$data = array('caddress' => $caddress);
			$this->db->where('cemail', $_SESSION['cemail_log']);
			$this->db->update('tmember', $data);
		}
		exit($caddress);
	}
	function update_gender_member() {
		$cgender = '';
        if (isset($_POST['cgender']))
            $cgender = $_POST['cgender'];
		
		$members= $this->db->get("tmember");
		$members= $members->result_array();

		foreach($members as $member){
			$data = array('cgender' => $cgender);
			$this->db->where('cemail', $_SESSION['cemail_log']);
			$this->db->update('tmember', $data);
		}
		exit($cgender);
	}
	function update_pass_member() {
		$cpass_old = '';
		$cpass_new = '';
		$user = '';
		
		if (isset($_POST['cpass_old']))
            $cpass_old = $_POST['cpass_old'];
		if (isset($_POST['cpass_new']))
            $cpass_new = $_POST['cpass_new'];
		
		$this->db->where("cemail", $_SESSION['cemail_log']);
		$this->db->where("cpassword", md5($cpass_old));
		$user = $this->db->get("tmember");
		$user = $user->row_array();
		
		if(isset($user["nid"])){
			$data = array('cpassword' => md5($cpass_new));
			$this->db->where("cemail", $_SESSION['cemail_log']);
			$this->db->where("cpassword", md5($cpass_old));
			$this->db->update("tmember", $data);
			exit("1");
		}
		exit("0");
	}
	function empty_cart()
    {
        $_SESSION["cart"] 		= NULL;
		$_SESSION["cname"]     = NULL;
		$_SESSION["cemail"]    = NULL;
		$_SESSION["cphone"]    = NULL;
		$_SESSION["cquantity"] = NULL;
		$_SESSION["cnote"]     = NULL;
		$_SESSION["caddress"]     = NULL;
		$_SESSION["empty"] = NULL;
		
		$_SESSION["cemail_log"]    = NULL;
		
		$_SESSION["cgender"]  = NULL;
		$_SESSION["cfullname"] = NULL;
		$_SESSION["cphone"] = NULL;
		$_SESSION['caddress'] = NULL;
		$_SESSION['province'] = NULL ;
		$_SESSION['district'] = NULL;
		$_SESSION['cvat_company'] = NULL;
		$_SESSION['cvat_tax'] = NULL;
		$_SESSION['cvat_address'] = NULL;
		$_SESSION['cgift'] = NULL;
		
		$_SESSION['price_sale'] = NULL;
		$_SESSION['code_sale'] = NULL;
		$_SESSION['per_sale'] = NULL;
		$_SESSION['nsale'] = NULL;
		$_SESSION['nid_code_sale'] = NULL;
		$_SESSION['total_no_with'] = NULL; 
		$_SESSION['flag_dg'] = NULL;
		$_SESSION['total'] = NULL;
		exit('1');
    }
	function get_all_location() {
		$obj_loc = get_all_location();
		exit(json_encode($obj_loc));
	}
	function get_location_by_province() {
		$nid = '';
		if (isset($_POST['nid']))
			$nid = $_POST['nid'];
		$obj_loc = get_location_by_province($nid);
		exit(json_encode($obj_loc));
	}
	function get_location_by_district() {
		$nid = '';
		if (isset($_POST['nid']))
			$nid = $_POST['nid'];
		$obj_loc = get_location_by_district($nid);
		exit(json_encode($obj_loc));
	}
	function get_location_by_id() {
		$nid = '';
		if (isset($_POST['nid']))
			$nid = $_POST['nid'];
		$obj_loc = get_location_by_id($nid);
		exit(json_encode($obj_loc));
	}
	function get_district_loc_by_province() {
		$nid = '';
		if (isset($_POST['nid']))
			$nid = $_POST['nid'];
		$obj_data = get_district_loc_by_province($nid);
		exit(json_encode($obj_data));
	}
	function get_all_district_loc() {
		$obj_data = get_all_district_loc();
		exit(json_encode($obj_data));
	}	
	function get_district()
    {
        $nid_city   = '';
        $obj_district = '';
        if (isset($_POST['nid_city']))
            $nid_city = $_POST['nid_city'];
        $this->db->select('nid,cname');
        $this->db->where('nid_city', $nid_city);
        $obj_district = $this->db->get('tdistrict');
        $obj_district = $obj_district->result_array();
		$str = '';
        $str .= '<option value="">QUẬN / HUYỆN</option>';
        foreach ($obj_district as $district) {
            $str .= '<option value="' . $district['nid'] . '">' . $district['cname'] . '</option>';
        }
        exit($str);
    }
	function update_color() {
		$members= $this->db->get("tcolor");
		$members= $members->result_array();

		foreach($members as $member){
			$data = array('cbarcode' => $member['ccode_color']);
			$this->db->where("nid", $member['nid']);
			$this->db->update('tcolor', $data);
		}
		exit("done");
	}
	function save_mgg()
	{
		if(!isset($_SESSION['nid_member']))
			exit('0');
		
		$nid      = '';
		if (isset($_POST['nid']))
            $nid = $_POST['nid'];

		$code_sale_member = get_code_sale_member($nid, $_SESSION['nid_member']);
		if(isset($code_sale_member['nid']))
			exit('2');
		else {	
			$data = array(
				'nid_code' => $nid,
				'nid_member' => $_SESSION['nid_member'],
				'cactive' => 1,
				"ctime" => time()
			);
			$this->db->insert('tcode_sale_member', $data);
			exit('1');
		}
	}
	function check_code_sale()
	{
		$total      = '';
		$ccode      = '';
		if (isset($_POST['ccode']))
            $ccode = $_POST['ccode'];
		if (isset($_POST['total']))
            $total = $_POST['total'];

		$code_sale = get_code_sale_bycode($ccode);
		
		if(isset($code_sale['ccode'])) {
			if($total >= $code_sale['cprice_min']) {
				$_SESSION['price_sale'] = $code_sale['cprice'];
				$_SESSION['code_sale'] = $ccode;
				$_SESSION['total'] = $_SESSION['total'] - $code_sale['cprice'];
				exit('1');
			} else
				exit('2'); //số tiền tối thiểu ko đạt
		}
		exit('0');	
		
		/*
		if(!isset($_SESSION['nid_member']) || !isset($code_sale['nid'])) 
			exit('0');
		else {	
			$code_sale_member = get_code_sale_member($code_sale['nid'], $_SESSION['nid_member']);
			if(!isset($code_sale_member['nid'])) 
				exit('0');
			if($code_sale_member['cactive'] == "0") 
				exit('2');
			else if($total < $code_sale['cprice_min'])
				exit('3');
			else {
				$_SESSION['price_sale'] = $code_sale['cprice'];
				$_SESSION['nid_code_sale_member'] = $code_sale_member['nid'];
				exit('1');
			}
		}
		*/
	}
	/*
	function check_code_sale()
	{
		$code      = '';
		if (isset($_POST['code']))
            $code = $_POST['code'];
		if (isset($_SESSION["cart"]))
            $obj_cart = $_SESSION["cart"];
		$str = "0";

		$code_sale = get_code_sale_bycode($code);
		if(isset($code_sale['ccode'])) {
			if($code_sale['ctype'] == "0" || $code_sale['cactive'] == "0") {
				$_SESSION['price_sale'] = $code_sale['cprice'];
				$data = array('cactive' => "1");
				$this->db->where('nid',$code_sale['nid']);
				$this->db->update('tcode_sale', $data);
				$str = "1";
			} else {
				$str = "2";
			}
		}
		
		exit($str);
	}
	*/
	function phat_sinh_code()
	{
		$code_sale = get_code_sale_random();
		if(!isset($code_sale['ccode'])) 
			exit("0");
		else {
			$data = array('cphat_code' => 1, 'cip' => $_SERVER['REMOTE_ADDR']);
			$this->db->where('nid',$code_sale['nid']);
			$this->db->update('tcode_sale', $data);
			exit($code_sale['ccode']);
		}
	}
	function update_order() {
		$members= $this->db->get("torder");
		$members= $members->result_array();

		foreach($members as $member){
			$data = array('nid_code_sale' => 0);
			$this->db->where('nid',$member['nid']);
			$this->db->update('torder', $data);
		}
		exit("done");
	}
	function update_product() {
		$members= $this->db->get("tproducts");
		$members= $members->result_array();

		foreach($members as $member){
			$data = array('cdescription' => '<table id="tskt">
                                       <tr>
                                          <td>Độ phân giải</td>
                                          <td>Updating...</td>
                                       </tr>
                                       <tr>
                                          <td>Hệ điều hành</td>
                                          <td>Updating...</td>
                                       </tr>
                                       <tr>
                                          <td>Chipset</td>
                                          <td>Updating...</td>
                                       </tr>
                                       <tr>
                                          <td>Dung lượng RAM</td>
                                          <td>Updating...</td>
                                       </tr>
                                       <tr>
                                          <td>Bộ nhớ trong</td>
                                          <td>Updating...</td>
                                       </tr>
                                       <tr>
                                          <td>Camera sau</td>
                                          <td>Updating...</td>
                                       </tr>
                                       <tr>
                                          <td>Camera trước</td>
                                          <td>Updating...</td>
                                       </tr>
                                       <tr>
                                          <td>Pin</td>
                                          <td>Updating...</td>
                                       </tr>
                                       <tr>
                                          <td>Hãng sản xuất</td>
                                          <td>Updating...</td>
                                       </tr>
                                       <tr>
                                          <td>CPU</td>
                                          <td>Updating...</td>
                                       </tr>
                                       <tr>
                                          <td>GPU</td>
                                          <td>Updating...</td>
                                       </tr>
                                       <tr>
                                          <td>Kích thước</td>
                                          <td>Updating...</td>
                                       </tr>
                                    </table>');
			$this->db->where('nid',$member['nid']);
			$this->db->update('tproducts', $data);
		}
		exit("done");
	}
	
	function send_cmt()
    {
		$nid_type        = '';
		$nid_comment        = '';
		$nid_product        = '';
        $cname        = '';
		$cphone        = '';
		$cemail        = '';
		$ccontent        = '';
		$cpage        = '';
		$status        = 0;
		
		if (isset($_POST['nid_type']))
            $nid_type = $_POST['nid_type'];
		if (isset($_POST['nid_comment']))
            $nid_comment = $_POST['nid_comment'];
		if (isset($_POST['nid_product']))
            $nid_product = $_POST['nid_product'];
        if (isset($_POST['cname']))
            $cname = $_POST['cname'];
		if (isset($_POST['cphone']))
            $cphone = $_POST['cphone'];
		if (isset($_POST['cemail']))
            $cemail = $_POST['cemail'];
		if (isset($_POST['ccontent']))
            $ccontent = $_POST['ccontent'];
		if (isset($_POST['cpage']))
            $cpage = $_POST['cpage'];
		if ($cpage==2)
			$status = 1;
		
		if($nid_type==0) {
			$data = array(
				'nid_product' => $nid_product,
				'cname' => $cname,
				'cphone' => $cphone,
				'cemail' => $cemail,
				'ccontent' => $ccontent,
				'cpage' => $cpage,
				'nstatus' => $status,
				"ctime" => time()
			);
			$this->db->insert('tcomment', $data);
		} else {
			$data = array(
				'nid_product' => $nid_product,
				'nid_comment' => $nid_comment,
				'cname' => $cname,
				'cphone' => $cphone,
				'cemail' => $cemail,
				'ccontent' => $ccontent,
				'nstatus' => 1,
				"ctime" => time()
			);
			$this->db->insert('treply', $data);
		}
		exit('1');
    }
	function rating()
    {
		$nid_product        = '';
		$crating        = '';
        $cname        = '';
		$cphone        = '';
		$ccontent        = '';
		
		if (isset($_POST['nid_product']))
            $nid_product = $_POST['nid_product'];
		if (isset($_POST['crating']))
            $crating = $_POST['crating'];
        if (isset($_POST['cname']))
            $cname = $_POST['cname'];
		if (isset($_POST['cphone']))
            $cphone = $_POST['cphone'];
		if (isset($_POST['ccontent']))
            $ccontent = $_POST['ccontent'];
		if($nid_product != '') {
			$data = array(
				'nid_product' => $nid_product,
				'crating' => $crating,
				'cname' => $cname,
				'cphone' => $cphone,
				'ccontent' => $ccontent,
				'nstatus' => 1,
				"ctime" => time()
			);
			$this->db->insert('trating', $data);
		} 
		exit('1');
    }
	function check_time_today_active_news()
	{
		//$time_today = strtotime(date("m/d/Y",time()));
		$time_curr = time();
		$schedule = get_schedule_curr($time_curr);
		if(isset($schedule['nid'])) {
			$list = get_news_all();
			foreach($list as $news) {
				if(strtotime($news['cdate']) >= strtotime($schedule['ctime'])) {
					$data = array("nstatus" => 1);
					$this->db->where('nid',$news['nid']);	
					$this->db->update("tnews", $data);
				}
			}
			exit("1");
		} else {
			exit("0");
		}
	}

	function add_bid()
	{
		if (isset($_POST['nid_product']))
            $nid_product = $_POST['nid_product'];	
		if (isset($_POST['nid_product_bid']))
            $nid_product_bid = $_POST['nid_product_bid'];	
		if (isset($_POST['cprice']))
            $cprice = $_POST['cprice'];
		if (isset($_POST['cbuoc_gia']))
            $cbuoc_gia = $_POST['cbuoc_gia'];
		
		$time_today = strtotime(date("m/d/Y",time()));
		$data           = array(
				"nid_member" => $_SESSION['nid_member'],
				"nid_product" => $nid_product,
				"nid_product_bid" => $nid_product_bid,
				"cprice" => $cprice,
				"ctime" => time(),
				"ctime_search" => strtotime(date("m/d/Y",time()))
			);	
			$this->db->insert("tbid", $data);
			
			$bid_win = get_bid_win_by_product_bid_today($nid_product_bid,$time_today);
			if(isset($bid_win['nid'])) {
				$this->db->where('nid_product_bid',$nid_product_bid);	
				$this->db->where('ctime_search',$time_today);	
				$this->db->update("tbid_win", $data);
				
				/*
				$data_l  = array("nid_member" => $_SESSION['nid_member']);
				$this->db->where('nid_product_bid',$nid_product_bid);	
				$this->db->where('ctime_search',$time_today);
				$this->db->update("tproduct_bid_log", $data_l);*/
			} else {
				$this->db->insert("tbid_win", $data);
			}
			
			/*
			//lưu lại history product_bid hôm nay
				$product_bid_log = get_product_bid_log_by_id_today($nid_product_bid,$time_today);
				if(!isset($product_bid_log['nid'])) {
					$product_bid = get_product_bid_by_id($nid_product_bid);
					$data_log =	array(		
						"nid_product_bid" => $nid_product_bid,
						'cdate'						=> $product_bid['cdate'],
						'ctime_start'						=> $product_bid['ctime_start'],
						'ctime_end'						=> $product_bid['ctime_end'],
						'cgia_khoi_diem'						=> $product_bid['cgia_khoi_diem'],
						'cbuoc_gia'						=> $product_bid['cbuoc_gia'],
						'nid_product' => $product_bid['nid_product'],
						'cgia_ban' => $product_bid['cgia_ban'],
						'ctime_search'						=> $product_bid['ctime_search'],
						'cbid'						=> $product_bid['cbid']
					);
					$this->db->insert("tproduct_bid_log", $data_log);
				}*/
				
			exit("1");
	}
	function add_bid_bot()
	{
		if (isset($_POST['nid_product']))
            $nid_product = $_POST['nid_product'];	
		if (isset($_POST['nid_product_bid']))
            $nid_product_bid = $_POST['nid_product_bid'];	
		if (isset($_POST['cprice']))
            $cprice = $_POST['cprice'];
		if (isset($_POST['cbuoc_gia']))
            $cbuoc_gia = $_POST['cbuoc_gia'];
		$time_today = strtotime(date("m/d/Y",time()));
		//$bid = lay_dau_gia_cao_nhat_theo_sp($nid_product,$time_today);
		$product_bid = get_product_bid_bot_by_id($nid_product_bid);
		if(isset($product_bid['nid'])) {
			$bid = lay_dau_gia_cao_nhat_theo_sp_bid($nid_product_bid,$time_today);
			$member = get_member_by_id($bid['nid_member']);
			//if($member['ctype']==0) { //neu la bot
				$bot = get_random_bot($bid['nid_member']);
				if(isset($bid['nid'])) 
					$cprice = $bid['cprice']+$cbuoc_gia;
				$data           = array(
						"nid_member" => $bot['nid'],
						"nid_product" => $nid_product,
						"nid_product_bid" => $nid_product_bid,
						"cprice" => $cprice,
						"ctime" => time(),
						"ctime_search" => strtotime(date("m/d/Y",time()))
					);	
				$this->db->insert("tbid", $data);

				$bid_win = get_bid_win_by_product_bid_today($nid_product_bid,$time_today);
				if(isset($bid_win['nid'])) {
					$this->db->where('nid_product_bid',$nid_product_bid);	
					$this->db->where('ctime_search',$time_today);	
					$this->db->update("tbid_win", $data);
					
					/*
					$data_l  = array("nid_member" => $bot['nid']);
					$this->db->where('nid_product_bid',$nid_product_bid);	
					$this->db->where('ctime_search',$time_today);
					$this->db->update("tproduct_bid_log", $data_l);*/
				} else {
					$this->db->insert("tbid_win", $data);
				}
				
				/*
				//lưu lại history product_bid hôm nay
				$product_bid_log = get_product_bid_log_by_id_today($nid_product_bid,$time_today);
				if(!isset($product_bid_log['nid'])) {
					$product_bid = get_product_bid_by_id($nid_product_bid);
					$data_log =	array(		
						"nid_product_bid" => $nid_product_bid,
						'cdate'						=> $product_bid['cdate'],
						'ctime_start'						=> $product_bid['ctime_start'],
						'ctime_end'						=> $product_bid['ctime_end'],
						'cgia_khoi_diem'						=> $product_bid['cgia_khoi_diem'],
						'cbuoc_gia'						=> $product_bid['cbuoc_gia'],
						'nid_product' => $product_bid['nid_product'],
						'cgia_ban' => $product_bid['cgia_ban'],
						'ctime_search'						=> $product_bid['ctime_search'],
						'cbid'						=> $product_bid['cbid']
					);
					$this->db->insert("tproduct_bid_log", $data_log);
				}*/
			//}
			exit("1");
		} else {
			exit("0");
		}
	}
	function add_bid_bot_auto($nid_product_bid,$cprice,$cbuoc_gia)
	{
		$time_today = strtotime(date("m/d/Y",time()));
		//$bid = lay_dau_gia_cao_nhat_theo_sp($nid_product,$time_today);
		$product_bid = get_product_bid_bot_by_id($nid_product_bid);
		if(isset($product_bid['nid'])) {
			$bid = lay_dau_gia_cao_nhat_theo_sp_bid($nid_product_bid,$time_today);
			$member = get_member_by_id($bid['nid_member']);
			$bot = get_random_bot($bid['nid_member']);
				if(isset($bid['nid'])) 
					$cprice = $bid['cprice']+$cbuoc_gia;
				$data           = array(
						"nid_member" => $bot['nid'],
						"nid_product" => $product_bid['nid_product'],
						"nid_product_bid" => $nid_product_bid,
						"cprice" => $cprice,
						"ctime" => time(),
						"ctime_search" => strtotime(date("m/d/Y",time()))
					);	
				$this->db->insert("tbid", $data);

				$bid_win = get_bid_win_by_product_bid_today($nid_product_bid,$time_today);
				if(isset($bid_win['nid'])) {
					$this->db->where('nid_product_bid',$nid_product_bid);	
					$this->db->where('ctime_search',$time_today);	
					$this->db->update("tbid_win", $data);
				} else {
					$this->db->insert("tbid_win", $data);
				}
		} 
	}
	function kiem_tra_bot()
	{
		$time_today = strtotime(date("m/d/Y",time()));
		$list = get_product_bid_by_date($time_today); 
		if(count($list)>0) {
			foreach($list as $product_bid) {
				$bid = lay_dau_gia_cao_nhat_theo_sp_bid($product_bid['nid'],$time_today);
				$pieces = explode("-", $product_bid['cdate']);
				$date = $pieces['1'].'/'.$pieces['0'].'/'.$pieces['2'];
				$time_start = strtotime($date.' '.$product_bid['ctime_start']);
				$time_end = $date.' '.$product_bid['ctime_end'];
				$price_bid_min = $product_bid['cgia_khoi_diem']; 
				if(isset($bid['nid'])) 
				   $price_bid_min = $bid['cprice'];
				$end_bid_bot = 1;
				if(strtotime($time_end) > time() && $price_bid_min < $product_bid['cgia_ban'])	
					$end_bid_bot = 0;
				if($time_start > time())
					$end_bid_bot = 1;
				if($end_bid_bot==0) {
					$cprice = $product_bid['cgia_khoi_diem'];
					$bot = get_random_bot($bid['nid_member']);
					if(isset($bid['nid'])) 
						$cprice = $bid['cprice']+$product_bid['cbuoc_gia'];
					$data           = array(
							"nid_member" => $bot['nid'],
							"nid_product" => $product_bid['nid_product'],
							"nid_product_bid" => $nid_product_bid,
							"cprice" => $cprice,
							"ctime" => time(),
							"ctime_search" => strtotime(date("m/d/Y",time()))
						);	
					$this->db->insert("tbid", $data);

					$bid_win = get_bid_win_by_product_bid_today($nid_product_bid,$time_today);
					if(isset($bid_win['nid'])) {
						$this->db->where('nid_product_bid',$nid_product_bid);	
						$this->db->where('ctime_search',$time_today);	
						$this->db->update("tbid_win", $data);
					} else {
						$this->db->insert("tbid_win", $data);
					}
				}
			}
		}
	}
	function dang_nhap()
    {
        $cid      = '';
        $cpassword   = '';
        if (isset($_POST['cid']))
			$cid = $_POST['cid'];		       
        if (isset($_POST['cpassword']))
            $cpassword = $_POST['cpassword'];
		
		$member = get_member($cid, $cpassword);
        if (!isset($member['nid'])) {	
			exit("0");
		} else {
			if($member['cactive']=='0') 
				exit("2");
			else {
				$_SESSION['nid_member'] = $member['nid'];
				$_SESSION['url'] = base_url();
				
				//update thông tin vào đơn hàng tạm nếu trước đó có add sp vào giỏ hàng
				$order = get_order_tmp_by_ip($_SERVER["REMOTE_ADDR"], date("Y-m-d"));
				if($order['nid_member']==0) {
					$data           = array(
						"nid_member" => $member['nid'],
						"cfullname" => $member['cname'],
						"cemail" => $member['cemail'],
						"cphone" => $member['cphone'],
						"caddress" => $member['caddress'],
					);
					$this->db->where("nid", $order['nid']);
					$this->db->update("torder", $data);
				}
				
				//exit($member['ctype'].'');
				exit("1");
			}
		}
    }
	function dang_ky()
	{
		if (isset($_POST['cname']))
            $cname = $_POST['cname'];	
		if (isset($_POST['cid']))
            $cid = $_POST['cid'];
		if (isset($_POST['cemail']))
            $cemail = $_POST['cemail'];
		if (isset($_POST['cpassword']))
            $cpassword = $_POST['cpassword'];
		if (isset($_POST['recaptcha']))
            $recaptcha = $_POST['recaptcha'];

		$member = get_member_by_userid($cid);
		$member2 = get_member_by_mail($cemail);
		//if (isset($member['nid'])) {
		if (isset($member['nid']) || isset($member2['nid'])) {
			exit("0");
        } else if($this->isValidEmail($cemail) == false) {
			exit("3");
		} else if($this->valid_form($recaptcha) == false) {
			exit("2");
		} else {
			$active_code = md5($cpassword.time());
			$data           = array(
				"cname" => $cname,
				"cid" => $cid,
				"cphone" => $cid,
				"cemail" => $cemail,
				"cpassword" => md5($cpassword),
				"nstatus" => 1,
				"cactive" => 0,
				'cactive_code' => $active_code,
				"cpoint" => 0,
				"ctime" => time(),
				"ctime_search" => strtotime(date("m/d/Y",time()))
			);	
			$this->db->insert("tmember", $data);
			//$nid_member = dbget_identity();
			//$_SESSION['nid_member'] = $nid_member;
			$this->send_mail($cemail,$active_code);
			exit("1");
		}
	}
	function isValidEmail($email){ 
		return filter_var($email, FILTER_VALIDATE_EMAIL) !== false;
	}
	function send_mail($cemail,$active_code) {
		$link_active = base_url().'active-acount/'.$active_code;
		$content = '<div style="">';
		$content .= '<p style="color: #2600ff;"><strong>Cảm ơn quý khách đã tin tưởng và sử dụng sản phẩm Sendee!</strong><br>';
    	$content .= "Để có thể đăng nhập tài khoản và sử dụng các tiện ích của website. Vui lòng kích hoạt tài khoản bằng cách click vào link dưới đây<br>";
		$content .= '<a href="'.$link_active.'">'.$link_active.'</a>';
		$content .= '</p>';
		$content .= '<p>Trân trọng thông báo!</p>';
		$cf = get_config_by_id(8);
		$img_url = base_url().'upload/fb/'.$cf['cimage'];
        $content .=
            '<p><img src="'.$img_url.'" style="width:100px;"></p>';
        $content .= "</div>";
		//exit($content);
		
		//$cf = get_config_by_id(1);
		//$admin_email = $cf['cvalue'];
		/*
		$list_mail = array(
			$this->cemail,
			$cf['cvalue']
		);
		*/
		//SendMail("no_reply@sendee.com", $cemail, "Kích hoạt tài khoản Sendee", $content, "Sendee", $admin_email);
		
      $config['protocol'] = 'smtp';
      $config['charset'] = 'utf-8';
      $config['smtp_host'] = 'sg1-ss106.a2hosting.com';
      $config['smtp_user'] = 'no_reply@sendee.vn';
      $config['smtp_pass'] = 'sg7MrOGDhq6A';
      $config['smtp_port'] = '587';
      $config['mailtype'] = 'html';  
      $config['wordwrap'] = TRUE;

        $this->load->library('email');
        $this->email->initialize($config);
        $this->email->to($cemail);
        $this->email->from('no_reply@sendee.vn',"Sendee Website");
        $this->email->subject('Kích hoạt tài khoản');
        $this->email->message($content);
       // $this->email->send();
		if ( ! $this->email->send())
		{
			echo $this->email->print_debugger();
			exit("Error");
		}
	}
	function reset_password() {
		if (!isset($_POST['recaptcha']) || $this->valid_form($_POST['recaptcha']) == false)
			exit("2");
		//exit($_POST['cemail'].$_POST['recaptcha']);	
		
		$data = get_member_by_mail($_POST['cemail']);
		
		if(isset($data['cemail'])) {
			$cpassword = $data['nid'].time();
			$data_u  = array(
				"cpassword" => md5($cpassword)
			);	
			$this->db->where("nid", $data['nid']);
			$this->db->update("tmember", $data_u);
			
			$content = '<div style="">';
			$content .= '<p>Mật khẩu mới của bạn là: <strong>'.$cpassword.'</strong><br>';
			$content .= 'Vui lòng không cung cấp thông tin mật khẩu cho bất cứ ai.<br>';
			$content .= 'Trân trọng thông báo!</p>';
			$cf = get_config_by_id(8);
			$img_url = base_url().'upload/fb/'.$cf['cimage'];
			$content .=
				'<p><img src="'.$img_url.'" style="width:100px;"></p>';
			$content .= "</div>";
			//$cf = get_config_by_id(1);
			//$admin_email = $cf['cvalue'];
			//SendMail("no_reply@sendee.com", $_POST['cemail'], "Khôi phục mật khẩu Sendee", $content, "Sendee", $admin_email);
			$config['protocol'] = 'smtp';
		  $config['charset'] = 'utf-8';
		  $config['smtp_host'] = 'sg1-ss106.a2hosting.com';
		  $config['smtp_user'] = 'no_reply@sendee.vn';
		  $config['smtp_pass'] = 'sg7MrOGDhq6A';
		  $config['smtp_port'] = '587';
		  $config['mailtype'] = 'html';  
		  $config['wordwrap'] = TRUE;

			$this->load->library('email');
			$this->email->initialize($config);
			$this->email->to($data['cemail']);
			$this->email->from('no_reply@sendee.vn',"Sendee Website");
			$this->email->subject('Khôi phục mật khẩu');
			$this->email->message($content);
		   // $this->email->send();
			if ( ! $this->email->send())
			{
				echo $this->email->print_debugger();
				exit("Error");
			}
			exit('1');
		} else
			exit('0');
	}
	
	function active_acount($active_code) {
		$data = get_member_by_active_code($active_code);
		if(isset($data['cactive_code'])) {
			$data_u  = array(
				"cactive" => 1,
				"cactive_code" => "",
			);	
			$this->db->where("cactive_code", $active_code);
			$this->db->update("tmember", $data_u);
			redirect(base_url().'kich-hoat-thanh-cong');
		} else
			redirect(base_url());
	}
	
	function reset_time_flashsale() {
		/*
		$ngay_mai = time() + 86400;
		$year = date("Y", $ngay_mai);
		$month = date("m", $ngay_mai);
		$day = date("d", $ngay_mai);
		*/
		$today = time();
		$year = date("Y", $today);
		$month = date("m", $today);
		$day = date("d", $today);
		$str = $month . '/' . $day . '/' . $year . ' 13:00:00';
		$data = array(
			'cvalue' => $str
		);
		$this->db->where('nid', 8);
		$this->db->update('tconfig', $data);
		exit("1");
	}
	function set_sort()
    {
        $sort      = '';
        if (isset($_POST['sort'])) {
			$_SESSION['sort_m'] = $_POST['sort'];		
			exit('1');
		}			
    }
	function check_order()
    {
        $ccode      = '';
        $cid   = '';
        if (isset($_POST['ccode']))
			$ccode = $_POST['ccode'];		       
        if (isset($_POST['cid']))
            $cid = $_POST['cid'];
		
		$data = get_order_by_code_and_id($ccode, $cid);
        if (isset($data['nid'])) {	
			$_SESSION['nid_order_check'] = $data['nid'];
			exit("1");
		} else {
			exit("0");
		}
    }
	
	function update_data() {
		$list = get_product_all();
		//$list = get_news_all();
		//$list = get_banner_all();
		$i=0;
		foreach($list as $data) {
			$pieces = explode(".", $data['cimage']);
			//exit($pieces[1].' --- '.$pieces[0].' --- '.$pieces[2]);
			//exit(count($pieces).'');
			if(count($pieces)==2 && $pieces[1]!="webp") {
				$i++;
				$data_u = array(
					"cimage" => $data['cimage'].'.webp',
					"cimage_resize" => $data['cimage_resize'].'.webp',
					"cproduct_fb" => $data['cproduct_fb'].'.webp',
				);
				$this->db->where("nid", $data['nid']);
				$this->db->update("tproducts", $data_u);
			}
		}
		exit('Đã update '.$i .' record');
	}
	function convert_webp() {
		$handle = opendir('./upload/images_product/');
		while($file = readdir($handle)){
		  if($file !== '.' && $file !== '..'){
			//echo '<img src="upload/images_product/'.$file.'" border="0" />';
			$dir = "./upload/images_product/".$file.'/';
			$images = glob($dir."*.{jpg,png,gif,jfif}", GLOB_BRACE);
			//exit(count($images).'-');
			$str='';
			//extract only the name of the file without the extension and save in an array named $find
			foreach( $images as $image ) {
				//exit(count($images).'-');
				//$str .= $image['name'];
				//exit($image);
				$webp_img = webpConvert2($image);
				//exit($webp_img.'<br>'.$image);
				//if($webp_img!==$image)
					delfile($image);
				//echo "<img src='" . $image . "' />";
			}
		  }
		}
		exit('1');
		
		$dir = "./upload/images_product/*";
		//$dir = "./upload/image_article/*.jpg";
		//get the list of all files with .jpg extension in the directory and safe it in an array named $images
		//$images = glob( $dir );
		$images = glob($dir."*.{jpg,png,gif,jfif}", GLOB_BRACE);
		exit(count($images).'-');
		$str='';
		//extract only the name of the file without the extension and save in an array named $find
		foreach( $images as $image ) {
			//exit(count($images).'-');
			//$str .= $image['name'];
			//exit($image);
			$webp_img = webpConvert2($image);
			//exit($webp_img.'<br>'.$image);
			//if($webp_img!==$image)
				delfile($image);
			//echo "<img src='" . $image . "' />";
		}
		exit('1');
		//exit($str);
	}
	
	function convert_webp2() {
		$dir = "./upload/image_article/*.jpg";
		//get the list of all files with .jpg extension in the directory and safe it in an array named $images
		$images = glob( $dir );

		//extract only the name of the file without the extension and save in an array named $find
		foreach( $images as $image ) {
			$jpg=imagecreatefromjpeg($image);
			$w=imagesx($jpg);
			$h=imagesy($jpg);
			$webp=imagecreatetruecolor($w,$h);
			imagecopy($webp,$jpg,0,0,0,0,$w,$h);
			imagewebp($webp, 'filename.webp', 80);
			//imagedestroy($jpg);
			//imagedestroy($webp);
		}
		exit('1');
	}
	
	function create_slug($string)
    {
        $search = array(
            '#(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)#',
            '#(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)#',
            '#(ì|í|ị|ỉ|ĩ)#',
            '#(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)#',
            '#(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)#',
            '#(ỳ|ý|ỵ|ỷ|ỹ)#',
            '#(đ)#',
            '#(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)#',
            '#(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)#',
            '#(Ì|Í|Ị|Ỉ|Ĩ)#',
            '#(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)#',
            '#(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)#',
            '#(Ỳ|Ý|Ỵ|Ỷ|Ỹ)#',
            '#(Đ)#',
            "/[^a-zA-Z0-9\-\_]/",
        );
        $replace = array(
            'a',
            'e',
            'i',
            'o',
            'u',
            'y',
            'd',
            'A',
            'E',
            'I',
            'O',
            'U',
            'Y',
            'D',
            '-',
        );
        $string = preg_replace($search, $replace, $string);
        $string = preg_replace('/(-)+/', '-', $string);
        $string = strtolower($string);
        return $string;
    }
	
	function update_code_province()
    {
        $list = get_province_all(); 
		foreach($list as $data) {
			$data_u = array(
				"ccode" => $this->create_slug($data['cname'])
			);
			$this->db->where("nid", $data['nid']);
			$this->db->update("tprovince", $data_u);
		}
		exit('1');
    }
}
	