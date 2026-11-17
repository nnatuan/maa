<?php 
class profile extends CI_Controller {

var $event 				= '';
var	$obj_about			='';
var $m_language			='eng';

var $nid		= '';
var $nid_cat			= '';

var	$title					= '';
var	$tags					= '';
var	$description			= ''; 
var $view_folder = '';
var $btn_submit ='';

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
function detail($nid)	
{
	$this->nid = $nid;
	$this->do_process();

}
private function get_data()
{  
	if(isset($_POST['btn_submit']))
		$this->btn_submit = $_POST['btn_submit'];
}
	
private function caculate_data()
{
	if(!isset($_SESSION['nid_member']))
		redirect(base_url().'dang-nhap');
	
	if($this->btn_submit != '')
	{		
		$data = array(
                'nid_member' => $_SESSION['nid_member'],
                'ctime' => time(),
				'ctime_search' => strtotime(date("d-m-Y",time()))
            );
        $this->db->insert('tpoint_list', $data);
		
		$this->db->set('cpoint', 'cpoint+50', FALSE);	
		$this->db->where('nid', $_SESSION['nid_member']);
		$this->db->update('tmember');	
		
		redirect(base_url().'profile');
	}
	
		$this -> load -> library('Mobile_Detect');
    	$detect = new Mobile_Detect();
    	if ($detect->isMobile() || $detect->isTablet() || $detect->isAndroidOS()) {
        	$this->view_folder ='mobile';
    	}else
    		$this->view_folder ='desktop';
}
	
private function do_business()
{	
	$data['title']			= $this->title;
	$data['tags']			= $this->tags;
	$data['description']	= $this->description;
	$data['nid']			= $this->nid;
	$data['menu_sec']		= '';
	$data['menu_cat']		= '';
	
	$data['menu_top']		= 'profile';
	$data['g_ishome']		= 0;

	$data['view_folder']    = $this->view_folder;
	$this->load->view($this->view_folder.'/profile',$data);	
}
	
private function destroy_data()
{
			
}
private function get_where_guide_string()
{
		

		return $str ;
}

}