<?php 
class search extends CI_Controller {

var $event 				= '';
var	$obj_search			='';
var $m_language			='eng';

var $nid_material		= '';
var $nid_cat			= '';

var	$title					= '';
var	$tags					= '';
var	$description			= ''; 
var $key_word				= '';

var $ncurr_page 		= '';
var $nrow_per_page 	= '36';
var $ntotal_page	 	= '';
var $view_folder = '';

var $key_code				= '';
var $key_main				= '';
var $flag = 0;

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
	if(!isset($_SESSION['key_word']))
		$_SESSION['key_word'] = $key;
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
	if(isset($_POST['key_word'])){
		$this->key_word = $_POST['key_word'];
		$_SESSION['key_word'] = $this->key_word;
		//$_SESSION['ncurr_page_search'] = 1;
	}
//		exit($this->key_word.'b');
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
{exit('1');
	//$this->load->language('ap', $this->m_language);
	/*
	if(isset($_SESSION['ncurr_page_search']))
			$this->ncurr_page = $_SESSION['ncurr_page_search'];
	if($this->ncurr_page == '' OR $this->ncurr_page <0 )
		$this->ncurr_page  = 1;
//		exit(get_count_search($this->key_word).'a');
	$this->ntotal_page = round(get_count_search($this->key_word)/$this->nrow_per_page + 0.4, 0);
	
	if($this->ncurr_page > $this->ntotal_page) {
		$this->ncurr_page  = 1;
		if (isset($_SESSION['ncurr_page_search'])) 
			$_SESSION['ncurr_page_search'] = 1;
	}	*/
	
	$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://"; 
	$_SESSION['back_url'] = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
	
	if($this->flag == 0) {
		if($this->key_word == "")
			redirect(base_url());
		else {	
			$str_code = $this->vn_to_str(implode('-', explode(' ',$this->key_word)));
			//$str_code = $this->vn_to_str(implode(':', explode(' ',$str_code)));
			$str_code = str_replace('%', 'pt', $str_code);
			//exit($str_code);
			redirect(base_url().'tim-kiem/'.$str_code);
			
			//Đốc: vẫn search ko dc, co the dung cach thay the ky tu
			$key_convert = str_replace(':', ' ', $key_word); //thay ky tu : bằng ' ' trong chuỗi $key_word
			$key_convert = str_replace('%', ' ', $key_word);
			exit($key_convert);
		}
 	} else {
		//$this->key_code = str_replace('%', ' ', $this->key_word);
		//$this->key_code = str_replace(':', ' ', $this->key_code);
		$this->key_main = $this->vn_to_str(implode(' ', explode('-',$this->key_code)));
		$this->key_main = str_replace('pt', ' ', $this->key_main);
		//exit($this->key_code.'--'.$this->key_main);

		if($this->ncurr_page == '' OR $this->ncurr_page <0)
			$this->ncurr_page  = 1;

		$this->ntotal_page = round(get_count_search($this->key_main)/$this->nrow_per_page + 0.4, 0);
		
	}
	//exit($this->ntotal_page);
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
	$data['key_word']		= $this->key_word;
	$data['ncurr_page']		= $this->ncurr_page;
	$data['nrow_per_page']	= $this->nrow_per_page;
	$data['ntotal_page']	= $this->ntotal_page;

	$data['menu_top']		= 'search';	
	$data['menu_sec']		= '';
	$data['menu_cat']		= '';	
	$data['g_ishome']		= 0;
	$data['key_code']		= $this->key_code;
	$data['key_main']		= $this->key_main;
	$data['view_folder']    = $this->view_folder;
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