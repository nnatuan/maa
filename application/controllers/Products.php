<?php
class products extends CI_Controller
{
    var $event = '';
    var $obj_products = '';
    var $ccode_province = '';
    var $ccode_sec = '';
    var $ccode_cat = '';
    var $title = '';
    var $tags = '';
    var $description = '';
    var $ncurr_page = '';
    var $nrow_per_page = '40';
    var $ntotal_page = '';
    var $ntotal_row = 0;
	var $type_view = '';
	var $type_sort = '';
	var $langsite = '';
	var $tt = '';
	var $arr_tt = '';
	var $flag_tt = 0;
	var $ccode_group = '';
	var $ccode_brand = '';
	var $view_folder = '';
	var $price = '';
	var $sort_price = '';
    function __construct()
	{ 
		parent::__construct();
        session_start();
        $this->load->database();
        $this->load->helper('ap_function');
        $this->load->helper('ap_object');
        $this->load->helper('ap_html');
        $this->load->helper('ap_view_helper');
        $this->load->helper('ap_db');
        $this->load->helper('ap_module');
    }
	function set_page($type_view, $type_sort, $page)
    {
		$this->type_view = $type_view;
		$this->type_sort = $type_sort;
        $this->ncurr_page = $page;
        $this->do_process();
    }
	function set_page_xakho($page)
    {
		//exit($ccode_sec. $type_view. $type_sort. $page);
        $this->ncurr_page = $page;
		$this->event  = 'xakho';
        $this->do_process();
    }
	function set_page_giamsoc($page)
    {
		//exit($ccode_sec. $type_view. $type_sort. $page);
        $this->ncurr_page = $page;
		$this->event  = 'giamsoc';
        $this->do_process();
    }
	function set_page_brand($ccode_brand, $page)
    {
		//exit($ccode_sec. $type_view. $type_sort. $page);
		$this->ccode_brand = $ccode_brand;
        $this->ncurr_page = $page;
		$this->event  = 'list_brand';
        $this->do_process();
    }
	function set_page_brand_filter($ccode_group, $ccode_brand, $page, $price)
    {
		//exit($ccode_sec. $type_view. $type_sort. $page);
		$this->ccode_group = $ccode_group;
		$this->ccode_brand = $ccode_brand;
        $this->ncurr_page = $page;
		$this->price = $price;
		$this->event  = 'list_brand_filter';
        $this->do_process();
    }
	function set_page_group($ccode_group, $page)
    {
		//exit($ccode_group. $page);
		$this->ccode_group = $ccode_group;
        $this->ncurr_page = $page;
		$this->event  = 'list_group';
        $this->do_process();
    }
	function set_page_group_filter($ccode_group, $page, $price)
    {
		//exit($ccode_sec. $type_view. $type_sort. $page);
		$this->ccode_group = $ccode_group;
        $this->ncurr_page = $page;
		$this->price = $price;
		$this->event  = 'list_group_filter';
        $this->do_process();
    }
	function set_page_by_province($ccode_sec, $ccode_province, $page)
    {
		$this->ccode_sec = $ccode_sec;
		$this->ccode_province = $ccode_province;
        $this->ncurr_page = $page;
		$this->event  = 'list_by_province';
        $this->do_process();
    }
	function set_page_sec($ccode_sec, $page)
    {
		$this->ccode_sec = $ccode_sec;
        $this->ncurr_page = $page;
		$this->event  = 'list_sec';
        $this->do_process();
    }
	function set_page_sec_check_hh($ccode_sec, $page)
    {
		$this->ccode_sec = $ccode_sec;
        $this->ncurr_page = $page;
		$this->event  = 'list_sec_check_hh';
        $this->do_process();
    }
	function set_page_sec_filter($ccode_sec, $page, $price)
    {
		$this->ccode_sec = $ccode_sec;
        $this->ncurr_page = $page;
		$this->price = $price;
		$_SESSION['filter'] = $price;
		$this->event  = 'list_sec_filter';
        $this->do_process();
    }
	function set_page_sec_tt($ccode_sec, $type_view, $type_sort, $page, $tt)
    {
		//exit($ccode_sec. $type_view. $type_sort. $page);
		$this->ccode_sec = $ccode_sec;
		$this->type_view = $type_view;
		$this->type_sort = $type_sort;
        $this->ncurr_page = $page;
		$this->tt = $tt;
		//exit($this->tt.'');
		if($this->tt==0)
			redirect(base_url().$this->ccode_sec);
		$this->event  = 'list_sec';
		$this->flag_tt = 1;
        $this->do_process();
    }
	function set_page_cat($ccode_cat, $page)
    {
		$this->ccode_cat = $ccode_cat;
        $this->ncurr_page = $page;
		$this->event  = 'list_cat';
        $this->do_process();
    }
	function set_page_cat_check_hh($ccode_sec, $ccode_cat, $page)
    {
		$this->ccode_sec = $ccode_sec;
		$this->ccode_cat = $ccode_cat;
        $this->ncurr_page = $page;
		$this->event  = 'list_cat_check_hh';
        $this->do_process();
    }
	function set_page_cat_filter($ccode_sec, $ccode_cat, $page, $price)
    {
		$this->ccode_sec = $ccode_sec;
		$this->ccode_cat = $ccode_cat;
        $this->ncurr_page = $page;
		$this->price = $price;
		$_SESSION['filter'] = $price;
		$this->event  = 'list_cat_filter';
        $this->do_process();
    }
	function set_page_cat_tt($ccode_sec, $ccode_cat, $type_view, $type_sort, $page, $tt)
    {
		//exit($ccode_sec. $ccode_cat. $type_view. $type_sort. $page);
        exit('a');
		$this->ccode_sec = $ccode_sec;
		$this->ccode_cat = $ccode_cat;
		$this->type_view = $type_view;
		$this->type_sort = $type_sort;
        $this->ncurr_page = $page;
		$this->tt = $tt;
		//exit($this->tt.'');
		if($this->tt==0)
			redirect(base_url().$this->ccode_sec.'/'.$this->ccode_cat);
		$this->event  = 'list_cat';
		$this->flag_tt = 1;
        $this->do_process();
    }
    private function f_set_cookie($cookie_name, $cookie_value)
    {
        return dbset_cookie('cookie_products_' . $cookie_name, $cookie_value);
    }
    private function f_get_cookie($cookie_name)
    {
        return dbget_cookie('cookie_products_' . $cookie_name);
    }
    private function m_language_key($str_key)
    {
        return $this->lang->line('lbl.products.' . $str_key);
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
		if(isset($_SESSION['sort'])) 
			$this->sort_price = $_SESSION['sort'];
    }
    private function caculate_data()
    {
        //$this->load->language('ap', $this->m_language);
        if ($this->ncurr_page == '' OR $this->ncurr_page < 0)
            $this->ncurr_page = 1;
		if($this->type_view == '0')
			$this->nrow_per_page = '10';
		if ($this->ccode_sec == 'khuyen-mai')
			$trow = get_count_product_km();
		else if ($this->ccode_sec == 'ban-chay')
			$trow = get_count_product_ban_chay();
		else if ($this->ccode_sec == 'hang-moi')
			$trow = get_count_product_hang_moi();
		else if ($this->ccode_sec == 'thanh-ly')
			$trow = get_count_product_thanh_ly();
		else if ($this->event == 'ctkm') 
			$trow = get_count_product_ctkm_by_cat($this->ccode_cat);
        else if ($this->event == 'list_cat') {
			if(isset($_SESSION['filter']))
				$trow = get_count_product_by_cat_filter($this->ccode_cat, $_SESSION['filter']);
			else
				$trow = get_count_product_by_cat($this->ccode_cat);
        } else if ($this->event == 'list_cat_filter') {
            //$trow = get_count_product_by_cat_filter($this->ccode_cat, $this->price);
			$trow = get_count_product_by_cat_filter($this->ccode_cat, $_SESSION['filter']);
        } else if ($this->event == 'list_cat_check_hh') {
            $trow = get_count_product_by_cat_het_hang($this->ccode_cat);
        } else if ($this->event == 'list_sec') {
            $trow = get_count_product_by_sec($this->ccode_sec);
        } else if ($this->event == 'list_by_province') {
            $trow = get_count_product_by_province($this->ccode_sec,$this->ccode_province);
        } else if ($this->event == 'list_sec_filter') {
            //$trow = get_count_product_by_sec_filter($this->ccode_sec, $this->price);
			$trow = get_count_product_by_sec_filter($this->ccode_sec, $_SESSION['filter']);
        } else if ($this->event == 'list_group') {
            //$trow = get_count_product_group($this->ccode_group);
        } else if ($this->event == 'list_group_filter') {
            //$trow = get_count_product_group_filter($this->ccode_group, $this->price);
        } else if ($this->event == 'list_brand') {
            $trow = get_count_product_brand($this->ccode_brand);
        } else if ($this->event == 'list_brand_filter') {
            $trow = get_count_product_brand_filter($this->ccode_group, $this->ccode_brand, $this->price);
        } else if ($this->event == 'xakho') {
            $trow = get_count_product_xakho();
        } else if ($this->event == 'giamsoc') {
            $trow = get_count_product_giamsoc();
        } else {
			redirect(base_url());
			$trow = get_count_product();
		}
		
		$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://"; 
	    $_SESSION['back_url'] = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
	   
		$this -> load -> library('Mobile_Detect');
    	$detect = new Mobile_Detect();
    	if ($detect->isMobile() || $detect->isTablet() || $detect->isAndroidOS()) {
			/*
			if(isset($_SESSION['sort_m'])) {
				if ($this->event == 'list_sec')
					$trow = get_count_product_by_sec_mobile($this->ccode_sec, $_SESSION['sort_m']);
				else
					$trow = get_count_product_by_cat_mobile($this->ccode_cat, $_SESSION['sort_m']);
			}*/
        	$this->view_folder ='mobile';
    	}else {
			$_SESSION['sort_m'] = NULL;
    		$this->view_folder ='desktop';
		}
		
		//$this->ntotal_row = $trow;	
        //$this->ntotal_page = round($trow / $this->nrow_per_page + 0.4);
		
		//exit($this->ntotal_row.'-'.$this->ntotal_page);
    }
    private function do_business()
    {
		$this->title = "Products";
        $data['title']        = $this->title;
        $data['tags']         = $this->tags;
        $data['description']  = $this->description;
        $data['ccode_cat']       = $this->ccode_cat;
        $data['ccode_sec']       = $this->ccode_sec;
		$data['ccode_province']       = $this->ccode_province;

        $data['menu_sec']     = '';
        $data['menu_cat']     = '';
        $data['ncurr_page']    = $this->ncurr_page;
        $data['nrow_per_page'] = $this->nrow_per_page;
        $data['ntotal_page']   = $this->ntotal_page;
        $data['total_row']    = $this->ntotal_row;
        //$data['menu_top']     = $this->ccode_cat;
		$data['type_view']    = $this->type_view;
		$data['type_sort']    = $this->type_sort;
        $data['g_ishome']     = 0;
		$data['menu_top'] = "products";
		$data['langsite']    = $this->langsite;
		$data['sort_price']    = $this->sort_price;
		$data['view_folder']    = $this->view_folder;
		
		$data['cdia_diem']    = "";
		$data['nid_loai_tin']    = "";
		$data['nid_loai_bds']    = "";
		$data['nid_province']    = "";
		$data['nid_district']    = "";
		$data['nid_huong']    = "";
		$data['nid_dien_tich']    = "";
		$data['nid_muc_gia']    = "";
		
		if ($this->event == 'list_by_province') {
			//$data['title']       = "Chương trình khuyến mãi";
			$obj_sec = get_product_sec_byid($this->ccode_sec);
			$data['obj_sec']     = $obj_sec;
			$obj_province = get_province_by_code($this->ccode_province);
			$data['obj_province']     = $obj_province;
			$data['title']       = $obj_sec['cmaterial_products'].' theo tỉnh '.$obj_province['cname'];
			$this->load->view('list_by_province', $data);
		}
		else if ($this->ccode_sec == 'khuyen-mai') {
			$data['title']       = "Khuyến mãi";
			$this->load->view('list_km', $data);
		}
		else if ($this->ccode_sec == 'ban-chay') {
			$data['title']       = "Sản phẩm bán chạy";
			$this->load->view('list_ban_chay', $data);
		}
		else if ($this->ccode_sec == 'hang-moi') {
			$data['title']       = "Hàng mới";
			$this->load->view('list_hang_moi', $data);
		}
		else if ($this->ccode_sec == 'thanh-ly') {
			$data['title']       = "Khuyến Mãi Noel Happy New Year 2023";
			$this->load->view('list_thanh_ly', $data);
		}
        else if ($this->event == 'list_cat' || $this->event == 'list_cat_filter') {
            $obj_cat             = get_product_cat_byid($this->ccode_cat);
			if($obj_cat == NULL)
				redirect(base_url().'page-not-found.html');

			$obj_sec             = get_product_sec_byid($this->ccode_sec);
			$data['obj_sec']     = $obj_sec;
            $data['title']       = $obj_cat['ccat_products'];
			$data['title_sec']   = $obj_sec['cmaterial_products'];
            $data['tags']        = $obj_cat['ctag'];
            $data['description'] = $obj_cat['cnote'];
			$data['price']       = $this->price;
            $data['obj_cat']     = $obj_cat;
			$this->load->view('list_cat', $data);
        } else if ($this->event == 'list_cat_check_hh') {
            $obj_cat             = get_product_cat_byid($this->ccode_cat);
			if($obj_cat == NULL)
				redirect(base_url().'page-not-found.html');

			$obj_sec             = get_product_sec_byid($this->ccode_sec);
			$data['obj_sec']     = $obj_sec;
            $data['title']       = $obj_cat['ccat_products'];
			$data['title_sec']   = $obj_sec['cmaterial_products'];
            $data['tags']        = $obj_cat['ctag'];
            $data['description'] = $obj_cat['cnote'];
			$data['price']       = $this->price;
            $data['obj_cat']     = $obj_cat;
			$this->load->view('list_cat_check_hh', $data);
        } else if ($this->event == 'list_sec' || $this->event == 'list_sec_filter') {
			$obj_sec             = get_product_sec_byid($this->ccode_sec);
			if($obj_sec == NULL)
				redirect(base_url().'page-not-found.html');
			
			$obj_group             = get_product_group_byid($obj_sec['nid_group']);
			$data['obj_group']     = $obj_group;
            $data['title']       = $obj_sec['cmaterial_products'];
            $data['tags']        = $obj_sec['ctag'];
            $data['description'] = $obj_sec['cnote'];
            $data['obj_sec']     = $obj_sec;
			$data['price']       = $this->price;
			$this->load->view('list_sec', $data);
        } else if ($this->event == 'list_sec_check_hh') {
			$obj_sec             = get_product_sec_byid($this->ccode_sec);
			if($obj_sec == NULL)
				redirect(base_url().'page-not-found.html');
            $data['title']       = $obj_sec['cmaterial_products'];
            $data['tags']        = $obj_sec['ctag'];
            $data['description'] = $obj_sec['cnote'];
            $data['obj_sec']     = $obj_sec;
			$data['price']       = $this->price;
			$this->load->view('list_sec_check_hh', $data);
        } else if ($this->event == 'list_group' || $this->event == 'list_group_filter') {
			$obj_group             = get_product_group_by_code($this->ccode_group);
			if($obj_group == NULL)
				redirect(base_url().'page-not-found.html');
            $data['title']       = $obj_group['cname'];
			$data['price']       = $this->price;
            //$data['tags']        = $obj_sec['ctag'];
            //$data['description'] = $obj_sec['cnote'];
            $data['obj_group']     = $obj_group;
			$this->load->view('list_group', $data);
        } else if ($this->event == 'list_brand' || $this->event == 'list_brand_filter') {
			$obj_brand             = get_product_brand_by_code($this->ccode_brand);
			if($obj_brand == NULL)
				redirect(base_url().'page-not-found.html');
            $data['title']       = $obj_brand['cbrand_products'];
			$data['obj_brand']     = $obj_brand;
			$data['price']       = $this->price;
			$this->load->view('list_brand', $data);
        } else if ($this->event == 'xakho') {
			$this->load->view('xakho', $data);
        } else if ($this->event == 'giamsoc') {
			$this->load->view('giamsoc', $data);
        } else {
			$this->load->view('products', $data);
		}
    }
    private function destroy_data()
    {
    }
    private function get_where_guide_string()
    {
        $str = 'where nstatus = "1"';
        return $str;
    }
}