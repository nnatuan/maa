<?php
class data_prize extends Controller
{
    var $data_view = '';
    var $title = '';
    var $tags = '';
    var $description = '';
	var $nid = '';
	var $type = '';
    function data_prize()
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
        $nid_prize='';
		$cname_prize='';
		if (isset($_POST['nid_prize']))
            $nid_prize = $_POST['nid_prize'];
		if (isset($_POST['cname_prize']))
            $cname_prize = $_POST['cname_prize'];
		
		$data = array(
			'nid_prize' => $nid_prize,
			'cname_prize' => $cname_prize,
			'nid_order' => $_SESSION['nid_order'],
			'ctime' => time()
		);
		$this->db->insert('tprize', $data);
		
		$data_o = array(
			'nid_prize' => $nid_prize,
			'cname_prize' => $cname_prize
		);
		$this->db->where('nid', $_SESSION['nid_order']);
		$this->db->update('torder', $data_o);
		
		$_SESSION['nid_order'] = NULL;
		$_SESSION['total_no_with'] = NULL;
    }
    private function do_business()
    {
    
    }
    private function destroy_data()
    {
    }
}