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
       
	   if(!isset($_SESSION['nid_member']))
			redirect(base_url().'dang-nhap');
		
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
		$ccode = "SED".time();
        $data           = array(
			"ccode" => $ccode,
			"nid_member" => $_SESSION['nid_member'],
            "cfullname" => $this->cname,
            "cemail" => $this->cemail,
            "cphone" => $this->cphone,
            "caddress" => $this->caddress,
            "nid_order_status" => 1,
			"nstatus" => 1,
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

		$qty=0;$total = 0;
        if (isset($_SESSION["cart"]))
            $obj_cart = $_SESSION["cart"];
        foreach ($obj_cart as $cart) {
			$qty += $cart['qty'];
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
			$total += $price*$cart['qty'];    
			
            $data_detail = array(
                'nid_order' => $id_cart,
                'nid_product' => $cart['id'],
                'nquantity' => $cart['qty'],
				'niscolor' => $cart['iscolor'],
				'cprice' => $price
            );
            $this->db->insert('torder_detail', $data_detail);
        }

		$cf = get_config_by_id(8);
		$img_url = base_url().'upload/fb/'.$cf['cimage'];
		$content = '<table width="100%" align="center" style="border-collapse:collapse;border-spacing:0;margin:0 auto;text-align:left;box-sizing:border-box;width:640px;min-width:640px">
   <tbody>
      <tr style="box-sizing:border-box">
         <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;box-sizing:border-box;padding:0;vertical-align:middle;background:#8cb630b3 no-repeat center;background-size:cover;background-image:url()">
            <table width="100%" style="border-collapse:collapse;border-spacing:0;box-sizing:border-box;width:100%;min-width:100%">
               <tbody>
                  <tr style="box-sizing:border-box">
                     <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;padding:0;width:196px">
                        <p style="margin-top:0;margin:0 0 8px;box-sizing:border-box;width:196px;margin-bottom:0;padding:20px 40px;border-radius:0 99px 99px 0;border-right:1px solid #8cb630 ;background:#8cb630 no-repeat center;background-size:cover;background-image:url()">
                           <a href="#" style="color:#1b1a19;text-decoration:none;box-sizing:border-box;display:block" target="_blank">
                           <img width="116" src="'.$img_url.'" alt="" border="0" style="border:0;height:auto;line-height:100%;outline:none;text-decoration:none;box-sizing:border-box;display:block" class="CToWUd" data-bit="iit">
                           </a>
                        </p>
                     </td>
                     <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;box-sizing:border-box;padding:4px 40px 4px 0;vertical-align:middle;text-align:right;font-weight:700;color:#fafafa;text-transform:uppercase">
                        <table style="border-collapse:collapse;border-spacing:0;box-sizing:border-box;margin-left:auto;margin-right:0">
                           <tbody>
                              <tr style="box-sizing:border-box">
                                 <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;padding:4px 0 4px 24px"></td>
                                 <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;padding:4px 0 4px 24px"></td>
                              </tr>
                           </tbody>
                        </table>
                     </td>
                  </tr>
               </tbody>
            </table>
         </td>
      </tr>
      <tr style="box-sizing:border-box">
         <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;background-color:#fef1e6;padding:40px;box-sizing:border-box">
            <table border="0" width="100%" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border-spacing:0;box-sizing:border-box;background:#fafafa;border-radius:12px;overflow:hidden;font-size:16px;line-height:1.5;color:#474645;width:100%;min-width:100%">
               <tbody>
                  <tr style="box-sizing:border-box">
                     <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;padding:40px">
                        <h1 style="margin-top:0;margin-bottom:12px;margin:0 0 16px;font-size:22px;line-height:1.45455;font-weight:700;box-sizing:border-box;text-transform:capitalize;color:#1b1a19">Hành Trình Đơn Hàng</h1>
                        <p style="margin-top:0;margin-bottom:10px;margin:0 0 8px;box-sizing:border-box;color:#1b1a19">Xin chào <b style="font-weight:700;box-sizing:border-box">'.$this->cname.'</b></p>
                        <p style="margin-top:0;margin-bottom:10px;margin:0 0 8px;box-sizing:border-box">
                           Để xem chi tiết tình trạng đơn hàng
                           <span style="box-sizing:border-box;font-weight:500;color:#8cb630">'.$ccode.'</span>, 
                           vui lòng bấm vào nút dưới để kiểm tra.
                        </p>
                        <p style="margin-top:0;margin-bottom:10px;margin:0 0 8px;box-sizing:border-box"><small style="box-sizing:border-box;font-size:14px;line-height:1.429">Cảm ơn bạn đã lựa chọn Seedee!</small></p>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border-spacing:0;margin-bottom:0;text-transform:uppercase;font-weight:700;box-sizing:border-box;width:100%;min-width:100%;margin-top:24px">
                           <tbody>
                              <tr style="box-sizing:border-box">
                                 <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;padding:0;padding-bottom:0">
                                    <table border="0" cellspacing="0" cellpadding="0" align="center" style="border-collapse:collapse;border-spacing:0;box-sizing:border-box;margin-left:0;margin-right:auto">
                                       <tbody>
                                          <tr style="box-sizing:border-box">
                                             <td align="center" style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;padding:0;border-radius:44px;background-color:#8cb630">
                                                <a href="https://seedee.com/tra-cuu-don-hang" style="box-sizing:border-box;border-radius:44px;border:1px solid #8cb630;color:#fafafa;display:inline-block;font-size:14px;text-decoration:none;padding:9px 23px;font-weight:700;line-height:1.429" target="_blank">Theo dõi đơn hàng</a>
                                             </td>
                                          </tr>
                                       </tbody>
                                    </table>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                     </td>
                  </tr>
               </tbody>
            </table>
            <table border="0" width="100%" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border-spacing:0;box-sizing:border-box;margin-top:20px;background:#fafafa;border-radius:12px;overflow:hidden;width:100%;min-width:100%">
               <tbody>
                  <tr style="box-sizing:border-box">
                     <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;padding:24px;border-bottom:1px solid #f0efed">
                        <table style="border-collapse:collapse;border-spacing:0;box-sizing:border-box">
                           <tbody>
                              <tr style="box-sizing:border-box">
                                 <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;padding:0">
                                    <h2 style="margin-top:25px;margin-bottom:20px;box-sizing:border-box;margin:0 8px 0 0;font-size:16px;line-height:1.5;font-weight:500">Mã đơn: <span style="box-sizing:border-box;font-weight:700">'.$ccode.'</span></h2>
                                 </td>
                                 <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;padding:0"><span style="box-sizing:border-box;display:inline-block;padding:2px 8px;color:#fff;font-size:10px;line-height:1.6;font-weight:700;border-radius:30px;background:#2e90fa">Đã đặt hàng</span></td>
                              </tr>
                           </tbody>
                        </table>
                        <p style="margin:0 0 8px;box-sizing:border-box;margin-top:8px;margin-bottom:0;font-size:12px;line-height:1.5;font-weight:500;color:#474645">
                           Ngày đặt hàng: <span style="box-sizing:border-box;margin-right:15px;font-weight:600;color:#1b1a19">'.date("d-m-Y").'</span>
                           Thời gian: <span style="box-sizing:border-box;margin-right:15px;font-weight:600;color:#1b1a19">'.date("H:i:s").'</span>
                           Số lượng sản phẩm: <span style="box-sizing:border-box;margin-right:15px;font-weight:600;color:#1b1a19">'.$qty.'</span>
                        </p>
                     </td>
                  </tr>
                  <tr style="box-sizing:border-box">
                     <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;font-size:12px;line-height:1.5;font-weight:500;padding:24px;border-bottom:1px solid #f0efed">
                        <p style="margin-top:0;margin:0 0 8px;box-sizing:border-box;margin-bottom:0"></p>
                        <h3 style="margin-top:15px;margin-bottom:10px;box-sizing:border-box;margin:0 0 8px;font-size:16px;line-height:1.5;font-weight:700">'.$this->cname.' - <a href="tel:'.$this->cphone.'" style="color:#1b1a19;text-decoration:none;box-sizing:border-box" target="_blank">'.$this->cphone.'</a></h3>
                        <span style="box-sizing:border-box;color:#545453">Địa chỉ: </span><a href="#">'.$this->caddress.'</a>
                     </td>
                  </tr>
                  <tr style="box-sizing:border-box">
                     <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;padding:0;border-bottom:none">
                        <table border="0" width="100%" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border-spacing:0;max-width:100%;box-sizing:border-box;width:100%;min-width:100%;border:none">
                           <tbody style="box-sizing:border-box">
                              <tr style="box-sizing:border-box">
                                 <td colspan="3" style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;box-sizing:border-box;vertical-align:top;border-top:1px solid #cccac6;padding:14px 24px;border:none">
                                    <table border="0" width="100%" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border-spacing:0;box-sizing:border-box;width:100%;min-width:100%">
                                       <tbody style="box-sizing:border-box">'; 
										
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
						$src_img = base_url().'/upload/images_product/resize_images/'.$product['cimage_resize'];	


										  $content .= '<tr style="box-sizing:border-box">
                                             <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;padding:10px 0;width:70px;padding-right:8px"> <img src="'.$src_img.'" width="62" style="border:0;height:auto;line-height:100%;outline:none;text-decoration:none;box-sizing:border-box;display:block;width:62px;border-radius:8px" class="CToWUd" data-bit="iit"></td>
                                             <td colspan="2" style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;padding:10px 0">
                                                <p style="margin-top:0;margin:0 0 8px;box-sizing:border-box;margin-bottom:4px;font-weight:500">'.$product['cproducts'].'</p>
                                                <p style="margin-top:0;margin:0 0 8px;box-sizing:border-box;margin-bottom:0;font-size:12px;line-height:1.5;font-weight:500;color:#545453">';
												if($cart['iscolor']==1) {
												$content .= '<span style="box-sizing:border-box"><span style="box-sizing:border-box">Phân loại:</span> 
												<span style="box-sizing:border-box;color:#1b1a19;margin-right:20px">'.$color['cname'].'</span></span>';
												}
												
												$content .= '<span style="box-sizing:border-box;text-align:center"><span style="box-sizing:border-box">Số lượng:</span> <span style="box-sizing:border-box;color:#1b1a19;margin-right:20px">x'.$cart['qty'].'</span></span> <span style="box-sizing:border-box;text-align:right"><span style="box-sizing:border-box">Đơn giá:</span> <span style="box-sizing:border-box;color:#1b1a19;margin-right:20px">     <span style="box-sizing:border-box">'.number_format($price).'</span>  </span></span></p>
                                             </td>
                                          </tr>';
										  }
										  
                                       $content .= '</tbody>
                                    </table>
                                 </td>
                              </tr>
                           </tbody>
                           <tfoot style="box-sizing:border-box">
                              <tr style="box-sizing:border-box">
                                 <td colspan="3" style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;box-sizing:border-box;vertical-align:top;background-color:#f2f2f2;padding:17px 24px;background:0 0;border-top:1px solid #f0efed">
                                    <table border="0" width="100%" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border-spacing:0;box-sizing:border-box;width:100%;min-width:100%">
                                       <tfoot style="box-sizing:border-box">
                                          <tr style="box-sizing:border-box">
                                             <th colspan="2" scope="row" style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;box-sizing:border-box;background-color:#f2f2f2;padding:10px;padding-left:0;padding-right:0;padding-top:7px;padding-bottom:7px;background:0 0;text-align:left;font-weight:500;color:#545453"> Tạm tính </th>
                                             <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;background-color:#f2f2f2;padding:10px;text-align:right;padding-left:0;padding-right:0;padding-top:7px;padding-bottom:7px;background:0 0;color:#1b1a19;font-weight:700"> <span style="box-sizing:border-box;white-space:nowrap">'.number_format($total).'</span> </td>
                                          </tr>
                                          <tr style="box-sizing:border-box">
                                             <th colspan="2" scope="row" style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;box-sizing:border-box;background-color:#f2f2f2;padding:10px;padding-left:0;padding-right:0;padding-top:7px;padding-bottom:7px;background:0 0;text-align:left;font-weight:500;color:#545453">
                                                Phí giao hàng  
                                                <div style="box-sizing:border-box"><span style="box-sizing:border-box;font-size:12px;color:#8cb630">Giao hàng tiêu chuẩn</span></div>
                                                <div style="box-sizing:border-box"><span style="box-sizing:border-box;font-family:&quot;Quicksand&quot;,&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:10px;font-style:normal;font-weight:600;line-height:16px;color:#545453">Phí giao 20K (nội thành HCM &amp; Hà Nội); phí giao 30K (ngoại tỉnh). MIỄN PHÍ GIAO HÀNG đơn từ 89K. Dự kiến giao hàng từ 2-5 ngày, trừ Chủ Nhật, Lễ Tết.</span></div>
                                             </th>
                                             <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;background-color:#f2f2f2;padding:10px;text-align:right;padding-left:0;padding-right:0;padding-top:7px;padding-bottom:7px;background:0 0;color:#1b1a19;font-weight:700"> <span style="box-sizing:border-box;white-space:nowrap">0</span> </td>
                                          </tr>
                                          <tr style="box-sizing:border-box">
                                             <th colspan="2" scope="row" style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;box-sizing:border-box;background-color:#f2f2f2;padding:10px;padding-left:0;padding-right:0;background:0 0;text-align:left;font-weight:500;color:#545453;padding-top:9px;padding-bottom:4px"> <strong style="box-sizing:border-box;font-size:16px;line-height:1.5;color:#1b1a19;font-weight:500">Tổng tiền</strong> <span style="box-sizing:border-box;font-size:10px;color:#8f8d8a">(Đã bao gồm VAT)</span> </th>
                                             <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;background-color:#f2f2f2;padding:10px;text-align:right;padding-left:0;padding-right:0;background:0 0;color:#1b1a19;font-weight:700;padding-top:9px;padding-bottom:4px"> <strong style="font-weight:700;box-sizing:border-box;font-size:16px;line-height:1.5;color:#f04438"><span style="box-sizing:border-box;white-space:nowrap">'.number_format($total).'</span></strong> </td>
                                          </tr>
                                          <tr style="box-sizing:border-box">
                                             <th colspan="2" style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;box-sizing:border-box;background-color:#f2f2f2;padding:10px;padding-left:0;padding-right:0;padding-bottom:7px;background:0 0;text-align:left;padding-top:0;font-size:10px;line-height:1.6;font-weight:400;color:#474645">Thanh toán khi nhận hàng</th>
                                             <td style="font-family:&quot;Roboto&quot;,&quot;RobotoDraft&quot;,&quot;Quicksand&quot;,&quot;Google Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;vertical-align:top;box-sizing:border-box;background-color:#f2f2f2;padding:10px;text-align:right;padding-left:0;padding-right:0;padding-bottom:7px;background:0 0;padding-top:0;font-size:10px;line-height:1.6;font-weight:400;color:#474645"></td>
                                          </tr>
                                       </tfoot>
                                    </table>
                                 </td>
                              </tr>
                           </tfoot>
                        </table>
                     </td>
                  </tr>
                  </tr>
               </tbody>
            </table>
         </td>
      </tr>
   </tbody>
</table>';
		//exit($content);
		
		$cf = get_config_by_id(1);
		$list_mail = array(
			$this->cemail,
			$cf['cvalue']
		);
		//SendMail("no_reply@seedee.com", $list_mail, "Xác nhận đơn hàng Seedee", $content, "Seedee");
		SendMail("no_reply@seedee.com", $this->cemail, "Xác nhận đơn hàng Seedee", $content, "Seedee");
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
	