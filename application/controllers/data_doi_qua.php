<?php
class data_doi_qua extends Controller
{
    var $data_view = '';
    var $title = '';
    var $tags = '';
    var $description = '';
	var $nid = '';
	var $type = '';
    function data_doi_qua()
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
	function type($type)
    {
         $this->type = $type;
		 $this->do_process();
    }
    private function get_data()
    {
		
    }
    private function caculate_data()
    {
        $nid='';
		$cpoint_product='';
		$cpoint_member='';
		if (isset($_POST['nid']))
            $nid = $_POST['nid'];
		if (isset($_POST['cpoint_product']))
            $cpoint_product = $_POST['cpoint_product'];		
		if (isset($_POST['cpoint_member']))
            $cpoint_member = $_POST['cpoint_member'];	
		
		$data = array(
			'nid_member' => $_SESSION['nid_member'],
			'nid_product' => $nid,
			'cpoint' => $cpoint,
			'ctime' => time(),
			'ctime_search' => strtotime(date("d-m-Y",time()))
		);
		$this->db->insert('tdoi_qua', $data);
		
		$data_u = array(
			'cpoint' => $cpoint_member - $cpoint_product,
		);
		$this->db->where('nid', $_SESSION['nid_member']);
		$this->db->update('tmember', $data_u);
		
		exit('1');
    }
    private function do_business()
    {
    
    }
    private function destroy_data()
    {
    }
}