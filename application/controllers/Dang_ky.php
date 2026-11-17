<?php
class dang_ky extends CI_Controller
{
    var $event = '';
    var $obj_dang_ky = '';
    var $m_language = 'eng';
    var $nid_material = '';
    var $nid_cat = '';
    var $title = '';
    var $tags = '';
    var $description = '';
	var $view_folder = '';
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
        reset_page();
    }
    private function f_set_cookie($cookie_name, $cookie_value)
    {
        return dbset_cookie('cookie_guide_' . $cookie_name, $cookie_value);
    }
    private function f_get_cookie($cookie_name)
    {
        return dbget_cookie('cookie_dang_ky_' . $cookie_name);
    }
    private function m_language_key($str_key)
    {
        return $this->lang->line('lbl.dang_ky.' . $str_key);
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
    }
    private function caculate_data()
    {
        if(isset($_SESSION['nid_member']))
			redirect(base_url());
		
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
        //$obj_data            = Bget_article(32);
        $data['title']       = "Đăng ký";
        $data['tags']        = "Đăng ký";
        $data['description'] = "Đăng ký";
        $data['menu_sec']    = '';
        $data['menu_cat']    = '';
        $data['menu_top']    = 'dang_ky';
        $data['g_ishome']    = 0;
        $data['view_folder']    = $this->view_folder;
		$this->load->view($this->view_folder.'/dang_ky',$data);	
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