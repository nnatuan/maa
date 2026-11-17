<?php
class shop_dong_gia extends Controller
{
    var $data_view = '';
    var $title = '';
    var $tags = '';
    var $description = '';
	var $view_folder = '';
	var $ccode = '';
	var $btn_submit = '';
	var $nid_product = '';
	var $nid_product_moi = '';
	var $ctype = '';
	var $coption = '';
	var $cname = '';
	var $cphone = '';
	var $caddress = '';
	
    function shop_dong_gia()
    {
        parent::Controller();
        session_start();
        $this->load->database();
        $this->load->helper('ap_db');
        $this->load->helper('ap_object');
        $this->load->helper('ap_function');
        $this->load->helper('ap_view');
        $this->load->helper('ap_module');
        reset_page();
    }
    function index()
    {
        $this->do_process();
    }
	function get($ccode)
    {
        $this->ccode = $ccode;
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
		
    }
    private function caculate_data()
    {
		$this -> load -> library('Mobile_Detect');
    	$detect = new Mobile_Detect();
    	if ($detect->isMobile() || $detect->isTablet() || $detect->isAndroidOS()) {
        	$this->view_folder ='mobile';
    	}else
    		$this->view_folder ='desktop';

    }
    private function do_business()
    {
    //$this->output->cache(10);
        $data['title']        = $this->title;
        $data['tags']         = $this->tags;
        $data['description']  = $this->description;
        $data['menu_top']     = 'shop_dong_gia';
		$data['view_folder']    = $this->view_folder;
		$data['ccode']    = $this->ccode;
        $this->load->view($this->view_folder.'/shop_dong_gia', $data);
    }
    private function destroy_data()
    {
    }
}