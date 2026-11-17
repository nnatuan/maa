<?php
class buy_product extends CI_Controller
{
    var $data_view = "";
    var $title = "";
    var $tags = "";
    var $description = "";
    var $cname = "";
    var $cemail = "";
    var $cphone = "";
    var $ctotal = "";
    var $cnote = "";
    var $cpayment_method = "";
    var $id_hidden = "";
    var $caddress = "";
    var $btn_submit = "";
    var $_empty = "";
    var $view_folder = "";
    var $msg = "";
    var $nid_province = "";
    var $nid_district = "";
    var $cshop = "";
	var $cmethod = 1;
    function __construct()
	{ 
		parent::__construct();
        session_start();
        $this->load->database();
        $this->load->helper("ap_db");
        $this->load->helper("ap_object");
        $this->load->helper("ap_function");
        $this->load->helper("ap_view");
        $this->load->helper("ap_module");
        $this->load->helper("ap_cart");
        $this->load->helper("ap_mail");
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
        $this->load->language("ap", "eng");
        $_SESSION["back_link"] = base_url();
        if (isset($_POST["cname"])) {
            $this->cname = $_POST["cname"];
        }
        if (isset($_POST["cemail"])) {
            $this->cemail = $_POST["cemail"];
        }
        if (isset($_POST["cphone"])) {
            $this->cphone = $_POST["cphone"];
        }
        if (isset($_POST["ctotal"])) {
            $this->ctotal = $_POST["ctotal"];
        }
        if (isset($_POST["cnote"])) {
            $this->cnote = $_POST["cnote"];
        }
        if (isset($_POST["caddress"])) {
            $this->caddress = $_POST["caddress"];
        }
        if (isset($_POST["cpayment_method"])) {
            $this->cpayment_method = $_POST["cpayment_method"];
        }
        if (isset($_POST["nid_province"])) {
            $this->nid_province = $_POST["nid_province"];
        }
        if (isset($_POST["nid_district"])) {
            $this->nid_district = $_POST["nid_district"];
        }
        if (isset($_POST["cshop"])) {
            $this->cshop = $_POST["cshop"];
        }

        if (isset($_POST["id_hidden"])) {
            $this->id_hidden = $_POST["id_hidden"];
        }
        if (isset($_POST["btn_submit"])) {
            $this->btn_submit = $_POST["btn_submit"];
        }
        if (isset($_SESSION["empty"])) {
            $this->_empty = $_SESSION["empty"];
        }
    }
    private function caculate_data()
    {
        //exit($_SESSION['utm_source']."aa");
        $obj_data = get_config_byid(3);
        foreach ($obj_data as $data):
            $this->title = $data["cvalue"];
        endforeach;
        $obj_data = get_config_byid(2);
        foreach ($obj_data as $data):
            $this->tags = $data["cvalue"];
        endforeach;
        $obj_data = get_config_byid(4);
        foreach ($obj_data as $data):
            $this->description = $data["cvalue"];
        endforeach;

        if ($this->btn_submit != "") {
            //if(!isset($_SESSION['ship']))
            //	$this->msg='Vui lòng chọn phương thức thanh toán phù hợp!';
            //else {
            $this->insert_cart();
            empty_cart();
            //redirect(base_url() . 'qua-thuong');
            redirect(base_url() . "hoan-tat");
            //}
        }
		
        $this->load->library("Mobile_Detect");
        $detect = new Mobile_Detect();
        if (
            $detect->isMobile() ||
            $detect->isTablet() ||
            $detect->isAndroidOS()
        ) {
            $this->view_folder = "mobile";
        } else {
            $this->view_folder = "desktop";
        }
    }

    function insert_cart()
    {
        $cgiam_gia = 0;
        $code_sale = "";
        $utm_source = "";
        if (isset($_SESSION["price_sale"])) {
            $cgiam_gia = $_SESSION["price_sale"];
            //$code_sale = $_SESSION["code_sale"];
        }
        if (isset($_SESSION["utm_source"])) {
            $utm_source = $_SESSION["utm_source"];
        }
		$nid_member='';
		if (isset($_SESSION["nid_member"])) {
            $nid_member = $_SESSION["nid_member"];
        }
        date_default_timezone_set("Asia/Saigon");
        $obj_cart = "";
        $ccode = "SED" . time();
        $data = [
			"nid_member" => $nid_member,
            "ccode" => $ccode,
			"cmethod" => $this->cmethod,
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
			"ctime_search" => strtotime(date("m/d/Y",time())),
            "ddate01" => date("Y-m-d"),
            "ctime01" => date("H:i:s"),
            "cnote" => $this->cnote,
            "cip" => $_SERVER["REMOTE_ADDR"],
            "ntotal" => $this->ctotal,
            "cgiam_gia" => $cgiam_gia,
            "ccode_sale" => $code_sale,
            "utm_source" => $utm_source
        ];
        $this->db->insert("torder", $data);
        $id_cart = dbget_identity();
        $_SESSION["nid_order"] = $id_cart;
        $_SESSION["total"] = $this->ctotal;
        $_SESSION["luot_quay"] = 1;
		
		if(isset($_SESSION['nid_code_sale_member'])) {
			$this->db->set('cactive','0');
			$this->db->where('nid',$_SESSION['nid_code_sale_member']);
			$this->db->update('tcode_sale_member');
		}
		
        $str = '<div style="width:860px;margin:0 auto;">';
        $str .=
            '<p style="color: #2600ff;"><strong>Cảm ơn quý khách ' .
            $this->cname .
            " đã tin tưởng và sử dụng sản phẩm Seedee!</strong></p>";
        $str .=
            "<p>Seedee rất vui thông báo đơn hàng <strong>" .
            $ccode .
            "</strong> của quý khách đã được tiếp nhận và đang trong quá trình xử lý, chúng tôi sẽ thông báo đến Quý Khách ngay khi hàng chuẩn bị được giao.</p>";
        $str .= '<h3 style="color: #2600ff;"><u>Thông tin đơn hàng</u></h3>';
        $str .= "<h4>Thông tin thanh toán</h4>";
        $str .= '			<table width="100%" style="border-collapse: collapse;">';
        $str .= "			  <tr>";
        $str .=
            '				 <td style="border: 1px solid #ddd;padding: 10px;width: 30%;"><strong>Họ tên</strong></td>';
        $str .=
            '				 <td style="border: 1px solid #ddd;padding: 10px;">' .
            $this->cname .
            "</td>";
        $str .= "			  </tr>";
        $str .= "			  <tr>";
        $str .=
            '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>Số điện thoại</strong></td>';
        $str .=
            '				 <td style="border: 1px solid #ddd;padding: 10px;">' .
            $this->cphone .
            "</td>";
        $str .= "			  </tr>";
        $str .= "			  <tr>";
        $str .=
            '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>Địa chỉ</strong></td>';
        $str .=
            '				 <td style="border: 1px solid #ddd;padding: 10px;">' .
            $this->caddress .
            "</td>";
        $str .= "			  </tr>";
        $str .= "			 </table>";
        $str .= "<h4>Chi tiết đơn hàng:</h4>";

        $str .= '			<table width="100%" style="border-collapse: collapse;">';
        $str .= "			  <tr>";
        $str .=
            '				 <td style="border: 1px solid #ddd;padding: 10px;background: #ddd;"><strong>Sản phẩm</strong></td>';
        $str .=
            '				 <td style="border: 1px solid #ddd;padding: 10px;background: #ddd;"><strong>Đơn giá</strong></td>';
        $str .=
            '				 <td style="border: 1px solid #ddd;padding: 10px;background: #ddd;"><strong>Số lượng</strong></td>';
        $str .=
            '				 <td style="border: 1px solid #ddd;padding: 10px;background: #ddd;"><strong>Thành tiền</strong></td>';
        $str .= "			  </tr>";
        $total = 0;
        $sl_sp_dong_gia = 0;
        $giam_gia = 0;
        $count_sale = 0;
        $flag = 0;
        $total_ko_gom_sp_dg = 0;
        if (isset($_SESSION["cart"])) {
            $obj_cart = $_SESSION["cart"];
        }
        foreach ($obj_cart as $cart) {
            if ($cart["iscolor"] == 2) {
                $color_lv2 = get_color_lv2_by_id($cart["id"]);
                $color = get_color_detail($color_lv2["nid_color"]);
                $product = get_product_detail($color["nid_product"]);
                $name =
                    $product["cproducts"] .
                    " " .
                    $color["cname"] .
                    " " .
                    $color_lv2["cname"];
                if (
                    $color_lv2["fprice_sale"] < $color_lv2["fprice"] &&
                    $product["ncheck"] == 1
                ) {
                    $price = $color_lv2["fprice_sale"];
                } else {
                    $price = $color_lv2["fprice"];
                }
            } elseif ($cart["iscolor"] == 1) {
                $color = get_color_detail($cart["id"]);
                $product = get_product_detail($color["nid_product"]);
                $name = $product["cproducts"] . " " . $color["cname"];
                if (
                    $color["fprice_sale"] < $color["fprice"] &&
                    $product["ncheck"] == 1
                ) {
                    $price = $color["fprice_sale"];
                } else {
                    $price = $color["fprice"];
                }
            } else {
                $product = get_product_detail($cart["id"]);
                $name = $product["cproducts"];
                if (
                    $product["fprice_sale"] < $product["fprice"] &&
                    $product["ncheck"] == 1
                ) {
                    $price = $product["fprice_sale"];
                } else {
                    $price = $product["fprice"];
                }
            }
            $cmua_kem = 0;
            $qty = $cart["qty"];
            //if($product['cdong_gia']==1) {
            //if($product['cdong_gia']==1 && isset($_SESSION['total_no_with']) && $_SESSION['total_no_with']>=$product['cap_dung_bill']) {
            //if($product['cdong_gia']==1 && $product['cprice_dong_gia']!="" && $flag == 0 && isset($_SESSION['total_ko_gom_sp_dg'])) {
            if ($product["nid_dong_gia"] != "") {
                $dg = get_dong_gia_by_id($product["nid_dong_gia"]);
            }
            if (
                $product["cdong_gia"] == 1 &&
                $product["cprice_dong_gia"] != "" &&
                $flag == 0 &&
                isset($dg["nid"]) &&
                isset($_SESSION["total_ko_gom_sp_dg"]) &&
                $_SESSION["total_ko_gom_sp_dg"] >= $dg["cmin"]
            ) {
                //$dg = get_dong_gia_by_id($product['nid_dong_gia']);
                //if(isset($dg['nid']) && $_SESSION['total_ko_gom_sp_dg']>=$dg['cmin']) {
                $price = $product["cprice_dong_gia"];
                $cmua_kem = 1;
                $qty = 1;
                $flag = 1;
                //}
            }

            $data_detail = [
                "nid_order" => $id_cart,
                "nid_product" => $cart["id"],
                //'nquantity' => $cart['qty'],
                "nquantity" => $qty,
                "niscolor" => $cart["iscolor"],
                "cprice" => $price,
                "cmua_kem" => $cmua_kem,
            ];
            $this->db->insert("torder_detail", $data_detail);

            if ($product["cdong_gia"] == 1) {
                $thanh_tien = $price;
            } else {
                $thanh_tien = $price * $cart["qty"];
            }

            if ($product["cdat_truoc"] != 1) {
                $total += $price * $cart["qty"];
            }

            $str .= "			  <tr>";
            $str .=
                '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>' .
                $name .
                "</strong></td>";
            $str .=
                '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>' .
                number_format($price) .
                "đ</strong></td>";
            $str .=
                '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>' .
                $cart["qty"] .
                "</strong></td>";
            $str .=
                '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>' .
                number_format($thanh_tien) .
                "đ</strong></td>";
            $str .= "			  </tr>";
        }

        if (isset($_SESSION["price_sale"])) {
            $str .= "			  <tr>";
            $str .=
                '				 <td colspan="3" style="border: 1px solid #ddd;padding: 10px;text-align:right;"><strong>Giảm giá (Mã GG):</strong></td>';
            $str .=
                '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>- ' .
                number_format($cgiam_gia) .
                "đ</strong></td>";
            $str .= "			  </tr>";
        }
        $str .= "			  <tr>";
        $str .=
            '				 <td colspan="3" style="border: 1px solid #ddd;padding: 10px;text-align:right;"><strong>Tổng giá trị đơn hàng:</strong></td>';
        $str .=
            '				 <td style="border: 1px solid #ddd;padding: 10px;"><strong>' .
            number_format($total - $cgiam_gia) .
            "đ</strong></td>";
        $str .= "			  </tr>";
        $str .= "			 </table>";
        $str .= "<p>Một lần nữa, xin cảm ơn Quý khách!</p>";
		$cf = get_config_by_id(8);
		$img_url = base_url().'upload/fb/'.$cf['cimage'];
        $str .=
            '<p><img src="'.$img_url.'" style="width:100px;"></p>';
        $str .= "</div>";
        //exit($str);
		SendMail("no_reply@seedee.com", "tuan250990@gmail.com", "Xác nhận đơn hàng Seedee", $str, "Seedee");
    }

	private function do_business()
    {
        $data["title"] = $this->title;
        $data["tags"] = $this->tags;
        $data["description"] = $this->description;
        $data["menu_sec"] = "";
        $data["menu_cat"] = "";
        $data["menu_top"] = "buy_product";
        $data["data_view"] = $this->data_view;
        $data["g_isbuy_product"] = 0;
        $data["msg"] = $this->msg;
        $data["view_folder"] = $this->view_folder;

		/*
        //temp
        $obj_cart = $_SESSION["cart"];
        $flag = 0;
        $total_ko_gom_sp_dg = 0;
        foreach ($obj_cart as $cart) {
            $flag_dg = 0;
            $price_old = "";
            if ($cart["iscolor"] == 1) {
                $color = get_color_detail($cart["id"]);
                $product = get_product_detail($color["nid_product"]);
                if (
                    $color["fprice_sale"] < $color["fprice"] &&
                    $product["ncheck"] == 1
                ) {
                    $price = $color["fprice_sale"];
                    $price_old = $color["fprice"];
                } else {
                    $price = $color["fprice"];
                }
            } else {
                $product = get_product_detail($cart["id"]);
                if (
                    $product["fprice_sale"] < $product["fprice"] &&
                    $product["ncheck"] == 1
                ) {
                    $price = $product["fprice_sale"];
                    $price_old = $product["fprice"];
                } else {
                    $price = $product["fprice"];
                }
            }

            if ($product["nid_dong_gia"] != "") {
                $dg = get_dong_gia_by_id($product["nid_dong_gia"]);
            }
            if (
                $product["cdong_gia"] == 1 &&
                $product["cprice_dong_gia"] != "" &&
                $flag == 0 &&
                isset($dg["nid"]) &&
                isset($_SESSION["total_ko_gom_sp_dg"]) &&
                $_SESSION["total_ko_gom_sp_dg"] >= $dg["cmin"]
            ) {
                $price = $product["cprice_dong_gia"];
                $flag_dg = 1;
                $flag = 1;
            } else {
                $total_ko_gom_sp_dg += $price * $cart["qty"];
            }
        }
        $_SESSION["total_ko_gom_sp_dg"] = $total_ko_gom_sp_dg;
        //endtemp
		*/
        $this->load->view($this->view_folder . "/buy_product", $data);
    }
    function destroy_data()
    {
    }
    function empty_cart()
    {
        $_SESSION["cart"] = null;
        $_SESSION["cname"] = null;
        $_SESSION["cemail"] = null;
        $_SESSION["cphone"] = null;
        $_SESSION["ctotal"] = null;
        $_SESSION["cnote"] = null;
        $_SESSION["caddress"] = null;
        $_SESSION["utm_source"] = null;
        $_SESSION["total_no_with"] = null;
        $_SESSION["flag_dg"] = null;
		$_SESSION['nsale'] = null;
		$_SESSION['price_sale'] = null;
		$_SESSION['nid_code_sale_member'] = null;
        //$_SESSION["empty"] = NULL;
    }
    function ajax_post_cart()
    {
        $id_pro = "";
        $qty_pro = "";
        if (isset($_POST["id_pro"])) {
            $id_pro = $_POST["id_pro"];
        }
        if (isset($_POST["qty_pro"])) {
            $qty_pro = $_POST["qty_pro"];
        }
        add_cart($id_pro, $qty_pro);
        // echo 'done';
        exit("done");
    }
    function ajax_update_cart()
    {
        $id_pro = "";
        $qty_pro = "";
        if (isset($_POST["id"])) {
            $id_pro = $_POST["id"];
        }
        if (isset($_POST["qty"])) {
            $qty_pro = $_POST["qty"];
        }
        update_cart($id_pro, $qty_pro);
        exit("done");
    }
    function ajax_remove_cart()
    {
        $id_pro = "";
        if (isset($_POST["id"])) {
            $id_pro = $_POST["id"];
        }
        remove_cart($id_pro);
        exit("done");
    }
    function update2($id, $qty)
    {
        exit($_SESSION["cemail"]);
    }
}
