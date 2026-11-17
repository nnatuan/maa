<?php 
class search extends CI_Controller {
var $event 				= '';
var	$title					= '';
var	$tags					= '';
var	$description			= ''; 

var $ncurr_page 		= '';
var $nrow_per_page 	= '36';
var $ntotal_page	 	= '';
var $view_folder = '';

var $cdia_diem				= '';
var $nid_loai_tin				= '';
var $nid_loai_bds				= '';
var $nid_province = '';
var $nid_district = '';
var $nid_huong = '';
var $nid_dien_tich = '';
var $nid_muc_gia = '';
var $btn_submit = '';
var $kq = '';

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

// Dinh nghia ham rut gon khi set cookie cho cac bien.
//
private function f_set_cookie($cookie_name,$cookie_value)
 { 
	return dbset_cookie('cookie_guide_'.$cookie_name,$cookie_value);
 }
 
// Dinh nghia ham rut gon khi get cookie cho cac bien.
//
private function f_get_cookie($cookie_name)
 { 
	return dbget_cookie('cookie_search_'.$cookie_name);
 }
	
// Dinh nghia ham rut gon khi set language cho cac label.
// 
private function m_language_key($str_key)
{
	return $this->lang->line('lbl.search.'.$str_key);
}

function page($key, $page)
{
	$this->key_code = $key;
	$this->ncurr_page = $page;
	$this->flag = 1;
	if(!isset($_SESSION['cdia_diem']))
		$_SESSION['cdia_diem'] = $key;
	$this->do_process();
}


function set_page()
{
	$ncurr_page = 1;
	if(isset($_POST['ncurr_page']))
		$ncurr_page = $_POST['ncurr_page'];
	$_SESSION['ncurr_page_search']=$ncurr_page;
	
}

function next_()
{
	if(isset($_POST['btn_click_next']))	
	{
		if(isset($_SESSION['ncurr_page_search']))
			$this->ncurr_page = $_SESSION['ncurr_page_search'];
		if($this->ncurr_page == '' )
			$this->ncurr_page  = 1;
		$this->ncurr_page  += 1;	
		$_SESSION['ncurr_page_search'] = $this->ncurr_page;
		$this->do_process();
	}	
}

function previous_()
{
	if(isset($_POST['btn_click_previous']))	
	{
		if(isset($_SESSION['ncurr_page_search']))
			$this->ncurr_page = $_SESSION['ncurr_page_search'];
		if($this->ncurr_page == '' )
			$this->ncurr_page  = 1;
		$this->ncurr_page  -= 1;	
		$_SESSION['ncurr_page_search'] = $this->ncurr_page;
		$this->do_process();
	}	
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
	if(isset($_POST['cdia_diem']))
		$this->cdia_diem = $_POST['cdia_diem'];
	if(isset($_POST['nid_loai_tin']))
		$this->nid_loai_tin = $_POST['nid_loai_tin'];
	if(isset($_POST['nid_loai_bds']))
		$this->nid_loai_bds = $_POST['nid_loai_bds'];
	if(isset($_POST['nid_province']))
		$this->nid_province = $_POST['nid_province'];
	if(isset($_POST['nid_district']))
		$this->nid_district = $_POST['nid_district'];
	if(isset($_POST['nid_huong']))
		$this->nid_huong = $_POST['nid_huong'];
	if(isset($_POST['nid_dien_tich']))
		$this->nid_dien_tich = $_POST['nid_dien_tich'];
	if(isset($_POST['nid_muc_gia']))
		$this->nid_muc_gia = $_POST['nid_muc_gia'];
	if(isset($_POST['btn_submit']))
		$this->btn_submit = $_POST['btn_submit'];
}

function vn_to_str ($str){
 
$unicode = array(
 
	'a'=>'á|à|ả|ã|ạ|ă|ắ|ặ|ằ|ẳ|ẵ|â|ấ|ầ|ẩ|ẫ|ậ',
	 
	'd'=>'đ',
	 
	'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
	 
	'i'=>'í|ì|ỉ|ĩ|ị',
	 
	'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
	 
	'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
	 
	'y'=>'ý|ỳ|ỷ|ỹ|ỵ',
	 
	'A'=>'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ặ|Ằ|Ẳ|Ẵ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
	 
	'D'=>'Đ',
	 
	'E'=>'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
	 
	'I'=>'Í|Ì|Ỉ|Ĩ|Ị',
	 
	'O'=>'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
	 
	'U'=>'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
	 
	'Y'=>'Ý|Ỳ|Ỷ|Ỹ|Ỵ',
	 
	);
	 
	foreach($unicode as $nonUnicode=>$uni){
	 
	$str = preg_replace("/($uni)/i", $nonUnicode, $str);
	 
	}
	//$str = str_replace(' ','_',$str);
	 
	return $str;
 
}
	
private function caculate_data()
{
	if($this->ncurr_page == '' )
		$this->ncurr_page  = 1;
	if($this->btn_submit!="") {
		$this->kq = get_search($this->cdia_diem,$this->nid_loai_tin,$this->nid_loai_bds,$this->nid_province,$this->nid_district,$this->nid_huong,$this->nid_dien_tich,$this->nid_muc_gia,$this->nrow_per_page,$this->ncurr_page);
	}
}
	
private function do_business()
{	
	$data['title']			= $this->title;
	$data['tags']			= $this->tags;
	$data['description']	= $this->description;

	$data['ncurr_page']		= $this->ncurr_page;
	$data['nrow_per_page']	= $this->nrow_per_page;
	$data['ntotal_page']	= $this->ntotal_page;

	$data['menu_top']		= 'search';	
	$data['menu_sec']		= '';
	$data['menu_cat']		= '';

	$data['cdia_diem']    = $this->cdia_diem;
	$data['nid_loai_tin']    = $this->nid_loai_tin;
	$data['nid_loai_bds']    = $this->nid_loai_bds;
	$data['nid_province']    = $this->nid_province;
	$data['nid_district']    = $this->nid_district;
	$data['nid_huong']    = $this->nid_huong;
	$data['nid_dien_tich']    = $this->nid_dien_tich;
	$data['nid_muc_gia']    = $this->nid_muc_gia;
	$data['list']    = $this->kq;
	
	$this->load->view('search',$data);	
}
	
private function destroy_data()
{
			
}
private function get_where_guide_string()
{
		$str		= 'where nstatus = "1"';	
		//$str	   .= 'AND ccode_cat_news = "'.$this->m_nid_cat_news.'" ';
//Dieu kien get record nstatus
//0:Khong active
//1:Active

		return $str ;
}

}