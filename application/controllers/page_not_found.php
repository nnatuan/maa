<?php
class page_not_found extends Controller
{
    var $event = '';
    var $obj_page_not_found = '';
    var $m_language = 'eng';
    var $nid_material = '';
    var $nid_cat = '';
    var $title = '';
    var $tags = '';
    var $description = '';
	var $langsite = '';
	var $view_folder = '';
    function page_not_found()
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
        reset_page();
    }
    private function f_set_cookie($cookie_name, $cookie_value)
    {
        return dbset_cookie('cookie_guide_' . $cookie_name, $cookie_value);
    }
    private function f_get_cookie($cookie_name)
    {
        return dbget_cookie('cookie_page_not_found_' . $cookie_name);
    }
    private function m_language_key($str_key)
    {
        return $this->lang->line('lbl.page_not_found.' . $str_key);
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
		$lang_ = 'eng';
		if (isset($_SESSION['_lang']))
			$lang_ = $_SESSION['_lang'];
		$this->load->language('ap', $lang_);
		$this->langsite = $lang_;
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
        $obj_data            = Bget_article(1);
        $data['title']       = "Page not found";
        $data['tags']        = $obj_data['ctag'];
        $data['description'] = strip_tags($obj_data['cshort_content']);
        $data['menu_sec']    = '';
        $data['menu_cat']    = '';
        $data['menu_top']    = 'page_not_found';
        $data['g_ishome']    = 0;
        $data['obj_content'] = $obj_data;
		$data['langsite']    = $this->langsite;
		$data['view_folder']    = $this->view_folder;
        $this->load->view($this->view_folder.'/page_not_found', $data);
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