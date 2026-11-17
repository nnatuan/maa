<?php 
class search_product_brand extends Controller {

var $event 				= '';
var	$obj_search_product_brand			='';
var $m_language			='eng';

var $nid_material		= '';
var $nid_cat			= '';

var	$title					= '';
var	$tags					= '';
var	$description			= ''; 
var $key_word_brand				= '';
var $key_code				= '';
var $key_main				= '';

var $ncurr_page 		= '';
var $nrow_per_page 	= '24';
var $ntotal_page	 	= '';
var $ccode_group				= '';
var $ccode_brand				= '';
var $flag = 0;
var $view_folder = '';
function search_product_brand()
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
	return dbget_cookie('cookie_search_product_brand_'.$cookie_name);
 }
	
// Dinh nghia ham rut gon khi set language cho cac label.
// 
private function m_language_key($str_key)
{
	return $this->lang->line('lbl.search_product_brand.'.$str_key);
}

function page($ccode_group, $ccode_brand, $key, $page)
{
	$this->key_code = $key;
	$this->ccode_group = $ccode_group;
	$this->ccode_brand = $ccode_brand;
	$this->ncurr_page = $page;
	$this->flag = 1;
	$this->do_process();
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
	if(isset($_POST['key_word_brand'])){
		$this->key_word_brand = $_POST['key_word_brand'];
		//$_SESSION['ncurr_page_search_product_brand'] = 1;
	}
//		exit($this->key_word_brand.'b');
	if(isset($_POST['ccode_group']))
		$this->ccode_group = $_POST['ccode_group'];
	if(isset($_POST['ccode_brand']))
		$this->ccode_brand = $_POST['ccode_brand'];
}
	
private function caculate_data()
{
	$this->load->language('ap', $this->m_language);
	if($this->flag == 0) {
		
		if($this->key_word_brand == "")
			redirect(base_url());
		else {
			$str_code = $this->vn_to_str(implode('-', explode(' ',$this->key_word_brand)));
			redirect(base_url().'tim-kiem/'.$this->ccode_group.'/'.$this->ccode_brand.'/'.$str_code);
		}
 	} else {
		$this->key_main = $this->vn_to_str(implode(' ', explode('-',$this->key_code)));
		//exit($this->key_code.'--'.$key_main);

		if($this->ncurr_page == '' OR $this->ncurr_page <0)
			$this->ncurr_page  = 1;
		//exit($this->key_main);
		$this->ntotal_page = round(get_count_search_brand($this->key_main, $this->ccode_group, $this->ccode_brand)/$this->nrow_per_page + 0.4, 0);
		//exit(get_count_search_brand($this->key_word_brand, $this->ccode_group, $this->ccode_brand).'');
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
	//$data['key_word_brand']		= $this->key_word_brand;
	$data['key_word_brand']		= $this->key_main;
	$data['ncurr_page']		= $this->ncurr_page;
	$data['nrow_per_page']	= $this->nrow_per_page;
	$data['ntotal_page']	= $this->ntotal_page;

	$data['menu_top']		= 'search_product_brand';	
	$data['menu_sec']		= '';
	$data['menu_cat']		= '';	
	$data['g_ishome']		= 0;
	$data['ccode_group']		= $this->ccode_group;
	$data['ccode_brand']		= $this->ccode_brand;
	$data['key_code']		= $this->key_code;
	$data['key_main']		= $this->key_main;
	$data['obj_group']            = get_product_group_by_code($this->ccode_group);
	$data['obj_brand']               = get_product_brand_by_code($this->ccode_brand);
	$data['view_folder']    = $this->view_folder;
	$this->load->view($this->view_folder.'/search_product_brand',$data);	
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
}