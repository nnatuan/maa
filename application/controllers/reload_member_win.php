<?php
class reload_member_win extends Controller
{
    var $data_view = '';
    var $title = '';
    var $tags = '';
    var $description = '';
	var $nid = '';
	var $view_folder = '';
    function reload_member_win()
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
	private function get_cookie_card($cookie_name, $nid_card)
    {
        return dbget_cookie_card('cookie_card_' . $cookie_name, $nid_card);
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
        $data['menu_sec']     = '';
        $data['menu_cat']     = '';
        $data['menu_top']     = 'reload_member_win';
        $data['g_isdata']     = 0;
		$data['view_folder']    = $this->view_folder;
		$this->load->view($this->view_folder.'/reload_member_win',$data);
    }
    private function destroy_data()
    {
    }
}