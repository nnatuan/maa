<?php
class tra_gop extends Controller
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
	
    function tra_gop()
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
		if(isset($_POST['btn_submit']))
			$this->btn_submit = $_POST['btn_submit'];
		if(isset($_POST['nid_product']))
			$this->nid_product = $_POST['nid_product'];
		if(isset($_POST['nid_product_moi']))
			$this->nid_product_moi = $_POST['nid_product_moi'];
		if(isset($_POST['ctype']))
			$this->ctype = $_POST['ctype'];
		if(isset($_POST['coption']))
			$this->coption = $_POST['coption'];
		if(isset($_POST['cname']))
			$this->cname = $_POST['cname'];
		if(isset($_POST['cphone']))
			$this->cphone = $_POST['cphone'];
		if(isset($_POST['caddress']))
			$this->caddress = $_POST['caddress'];
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
        $data['menu_top']     = 'tra_gop';
		$data['view_folder']    = $this->view_folder;
		$data['ccode']    = $this->ccode;
        $this->load->view($this->view_folder.'/tra_gop', $data);
    }
    private function destroy_data()
    {
    }
}