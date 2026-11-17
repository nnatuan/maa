<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
 
/**
 * =================================================================
 * Tokaban Standard System.
 * CodeIniter Tokaban framework for PHP.
 *
 * @package		: CI-TKB 
 * @author		: Tokaban R&D Team.
 * 				: an_hm87
 * @copyright	: Copyright (c) 2009, Tokaban, Inc.
 * @since		: Version 2.0
 * =================================================================
 */    
   
/**
 *------------------------------------------------------------------
 * do_wood class
 *
 * Quan ly them, sua thong tin danh muc quan huyen
 *
 * @subpackage	controllers
 * @category	
 * @author		Hoang Minh An  
 *------------------------------------------------------------------
 */     
class do_wood extends Controller  
{	
	var $m_language 		= ''; // nhan ngon ngu tu file language
	var $m_nid_user_login 	= ''; // nhan iduser tu session

	var $m_nid 				= ''; // nhan nid cua phuong xa can chinh sua
	var $m_event			= ''; // nhan su kien cap nhat hoac bo qua
	var $m_button_click		= ''; // nhan su kien tu hidden button o trang ap_news
	
	var	$m_link_page  		= ''; // nhan link cua su kien
	var $m_link_cancel 		='';  // link toi trang ap_news_listview

	var $m_form_title 		= ''; // tieu de cua form
	var $m_hidden_height_old = ''; // giu lai duong dan cua hinh anh cu
	var $m_hidden_image_old = ''; // giu lai duong dan cua hinh anh cu
	var $m_hidden_image_old_fb = '';
	var $m_hidden_image_old_iphone = '';
	
	// Nhung bien dung cho doi tuong.			  
	var $m_txt_nid 				= ''; // nhan ma tin tuc
	var $m_txt_ctitle	 		= ''; // nhan ten tin tuc
	var $m_txt_cauthor	 		= '';
	var $m_txt_ctag		 		= ''; 
	var $m_txt_cindex	 		= ''; 
	var $m_txt_cheight_img		= ''; // nhan ten hinh anh
	var $m_txt_cthumb_img		= ''; // nhan ten hinh anh
	var $m_txt_cfb_img			= ''; // nhan ten hinh anh
	var $m_txt_ciphone_img		= ''; // nhan ten hinh anh
	var $m_cbof_nid_cat_news	= ''; // nhan category
	var $m_cbof_nid_section_news	= '';

	//var $m_chk_nstatus			= ''; // nhan trang thai
	var $m_txt_cshort_content 	= ''; // nhan tom tat tin
	var $m_txt_ccontent	 	    = ''; // nhan chi tiet tin

	var $m_arr_new				= ''; // nhan thong tin goc cua tin can dich
	var $m_chk_alwcmt			= ''; 

	 
	// bien nhan ve combobox category
	var $m_obj_section_news_view 	= '';
	var $m_obj_cat_news_view 	= '';
	
	// Cac bien can xuat hien thi thong bao len view cho nguoi dung xem.
	var $m_error_ccontent 	    = ''; 
	var $m_error_ctitle		 	= '';
	var $m_error_cshort_content	= '';	
	//
	
/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com
 * @finished date	: 2009/12/13
 * @description		: Ham khoi tao, load cac thu vien can dung cho class
 * @access	        : public
 *
 * @param string	: None
 * 					: 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */	  
function do_wood()
	{ 			
		
		parent::Controller();
		session_start();
		//Load cac thu vien he thong.
		$this->load->database();
		
		$this->load->helper('ap_db');	
		$this->load->helper('ap_function');
		$this->load->helper('ap_html');
		$this->load->helper('ap_view');
		$this->load->helper('ap_object');
		$this->load->helper('ap_fck'); // load thu vien de xuat ra trinh soan thao van ban
				
		// Kiem tra dieu kien login theo ma so he thong 1
		$this->tokaban_system_check = '1';
		// Load cac thu vien rieng can thiet khac neu co
		$this->load->model('wood_model');
		$this->load->model('cat_wood_model');
		init_fck();
		
	}
	
	/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/12/13
 * @description		: Lay nid tu view ap_news_listview
 * @access	        : public
 *
 * @param string	: $nid   : truong khoa chinh cua twood
 *                  : 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
 
 private function m_language_key($str_key)
	{
		return $this->lang->line('lbl.news.'.$str_key);
	}
	
//Function Set Cookies
private function f_set_cookie($cookie_name,$cookie_value)
 { 
	return dbset_cookie('cookie_news_listview_'.$cookie_name,$cookie_value);
 }
//Get Cookie

private function f_get_cookie($cookie_name)
 { 
	return dbget_cookie('cookie_news_listview_'.$cookie_name);
 }

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/12/13
 * @description		: Lay nid tu view ap_news_listview
 * @access	        : public
 *
 * @param string	: $nid   : truong khoa chinh cua twood
 *                  : 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
function f_edit($nid) // ham chinh sua, tham so la nid cua phuong xa can chinh sua
	{
		$this->m_event = 'edit';
		$this->m_nid   = $nid;		 	
		$this->do_process();		
	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/12/13
 * @description		: 
 * @access	        : public
 *
 * @param string	: None
 *                  : 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
function f_update_edit() // ham update cac thong tin da chinh sua
	{	
		$this->m_event = 'update_edit';		
		$this->do_process();
	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/12/13
 * @description		: 
 * @access	        : public
 *
 * @param string	: None
 *                  : 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
function f_add() // ham them phuong xa
	{				
		$this->m_event 	= 'add';
		$this->m_nid 	= '0';
		$this->do_process();
	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/12/13
 * @description		: 
 * @access	        : public
 *
 * @param string	: None
 *                  : 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
function f_update_add() // ham cap nhat thong tin cua phuong xa moi can tao
	{		
		$this->m_event = 'update_add';
		$this->do_process();
				
	}
	
/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/11/11
 * @description		: Goi tuan tu cac ham theo dung quy dinh ve luong du lieu
 * @access	        : public
 *
 * @param string	: None
 * 					: 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
function do_process() // ham xu ly
	{
		$this->get_data();
		$this->caculate_data();
		$this->do_business();
		$this->destroy_data();
	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/12/13
 * @description		: Nhan du lieu
 * @access	        : private
 *
 * @param string	: None
 * 					: 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */
private function get_data()
	{
		// Lay nid user tu session
		$this->m_nid_user_login = Fget_userdata('session_nid_user');
		// Load file ngon ngu can su dung
		$this->load->language('ap', 'eng');
		// Kiem tra hinh anh duoc upload
		if(isset($_FILES["txt_cthumb_img"]))
		{
			
		 	$path						= './upload/image_article/';
			$this->m_txt_cthumb_img 	= Fupload_resize_img($_FILES["txt_cthumb_img"],'../'.$path,200,100);
		}
		if(isset($_FILES["txt_cheight_img"]))
		{
			
		 	$path						= './upload/image_height_article/';
			$this->m_txt_cheight_img 	= Fupload_resize_img($_FILES["txt_cheight_img"],'../'.$path,180,235);
		}
		
		if(isset($_FILES["txt_cfb_img"]))
		{
			
		 	$path						= './upload/fbthumb/';
			$this->m_txt_cfb_img 		= Fupload_resize_img($_FILES["txt_cfb_img"],'../'.$path,300,300);
		}
		
		if(isset($_FILES["txt_ciphone_img"]))
		{
			
		 	$path						= './upload/ios/';
			$this->m_txt_ciphone_img 	= Fupload_resize_img($_FILES["txt_ciphone_img"],'../'.$path,80,80);
		}
		
		// Can kiem tra tren tung form cu the.
		if (isset($_POST['cbof_nid_cat_news']))
			$this->m_cbof_nid_cat_news		= $_POST['cbof_nid_cat_news'];
		if (isset($_POST['txt_ctitle']))
		{
			$this->m_txt_ctitle		 		= $_POST['txt_ctitle'];
			$this->m_txt_cauthor		 	= $_POST['txt_cauthor'];
			
//			$this->m_txt_ctag		 		= $_POST['txt_ctag'];
			$this->m_txt_cindex		 		= $_POST['txt_cindex'];
			
			$this->m_cbof_nid_section_news	= $_POST['cbof_nid_section_news'];
		
			if (!empty($_POST['chk_alwcmt']))
				$this->m_chk_alwcmt			= 1;
			else
				$this->m_chk_alwcmt			= 0;
			$this->m_txt_cshort_content	= $_POST['txt_cshort_content'];
			$this->m_txt_ccontent 		= $_POST['txt_ccontent'];
		}
	
		// Kiem tra va nhan cac bien hidden neu co.
		if (isset($_POST['hidden_nid']))
			$this->m_nid 			= $_POST['hidden_nid'];
			
		if (isset($_POST['hidden_event']))
			$this->m_event			= $_POST['hidden_event'];
			
			
		if (isset($_POST['hidden_button_click']))
			$this->m_button_click	= $_POST['hidden_button_click'];
		
		if (isset($_POST['hidden_height_old']))
			$this->m_hidden_height_old	= $_POST['hidden_height_old'];
		
		if (isset($_POST['hidden_image_old']))
			$this->m_hidden_image_old	= $_POST['hidden_image_old'];
		
		if (isset($_POST['hidden_image_old_fb']))
			$this->m_hidden_image_old_fb	= $_POST['hidden_image_old_fb'];
		
		if (isset($_POST['hidden_image_old_iphone']))
			$this->m_hidden_image_old_iphone	= $_POST['hidden_image_old_iphone'];
	
	}
		

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/12/13
 * @description		: Tinh toan du lieu
 * @access	        : private
 *
 * @param string	: None
 * 					: 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
private function caculate_data()
	{
// Link khi click nut cancel
		$this->m_link_cancel = base_url() . 'index.php/do_wood_listview';	
		
		
// Xu ly tuy theo su kien.
//echo $this->m_event;

		switch ($this->m_event)
		{
			case 'edit':	
				$this->m_form_title = $this->m_language_key('FormEditTitle');
				$this->m_link_page 	= base_url() . 'index.php/do_wood/f_update_edit';	
// Chi trong truong hop edit thi moi lay thong tin doi tuong.
// Chi to chuc bien va nhan nhung thong tin can thiet phuc vu cho viec xu ly ma thoi.	
//nhan object de chuan bi cho combobox 
				$this->m_arr_new			= $this->wood_model->get_new_byid($this->m_nid);
				$news 						= $this->wood_model->get_byid($this->m_nid);		
	
				$this->m_txt_cheight_img  	= $news['cimage_height'];
				$this->m_txt_cthumb_img  	= $news['cimage_thumb'];
				$this->m_txt_cfb_img  		= $news['cimage_fb'];
				$this->m_txt_ciphone_img  	= $news['cimage_iphone'];
					
				$this->m_txt_ctitle		 	= $news['ctitle'];
				$this->m_txt_cauthor	 	= $news['cauthor'];
				$this->m_txt_ctag		 	= $news['ctag'];
				$this->m_txt_cindex		 	= $news['cindex'];
	//			$this->m_chk_nstatus	 	= $news['nstatus'];
				$this->m_cbof_nid_cat_news	= $news['nid_cat_news'];
				$this->m_cbof_nid_section_news	= $news['nid_section_news'];
				$this->m_chk_alwcmt			= $news['alwcmt'];	
				$this->m_txt_cshort_content	= $news['cshort_content'];
				$this->m_txt_ccontent 		= $news['ccontent'];				 
				
				$this->m_event 	= 'update_edit';	
				break;
			
			case 'add':
				$this->m_form_title = $this->m_language_key('FormAddTitle');
				$this->m_link_page 	= base_url() . 'index.php/do_wood/f_update_add';
				$this->m_event 	= 'update_add';
				break;
								
			case 'update_edit':
				$this->m_form_title = $this->m_language_key('FormEditTitle');
				if ($this->m_button_click == 'btn_submit')
						if ($this->update_data()==TRUE)
								redirect ('do_wood_listview');
				
				$this->m_form_title = $this->m_language_key('FormEditTitle');
				$this->m_link_page 	= base_url() . 'index.php/do_wood/f_update_edit';
				break;
			
			case 'update_add':
				$this->m_form_title = $this->m_language_key('FormAddTitle');
				if ($this->m_button_click == 'btn_submit')
						if ($this->insert_data()==TRUE)
							redirect ('do_wood_listview');
				break;
			default:{}
							
		}		
			
			$this->m_obj_section_news_view 	= Obj_get_section_wood();
			$this->m_obj_cat_news_view 		= Obj_get_cat_wood_by_nidsec($this->m_cbof_nid_section_news);

	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/12/13
 * @description		: Xu ly nghiep vu
 * @access	        : private
 *
 * @param string	: None
 * 					: 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
private function do_business()
	{
								
		$data['event'] 				= $this->m_event;
		$data['menu'] 				= Fget_menu_html($this->m_nid_user_login);
		$data['lbl_form_title'] 	= $this->m_form_title;
		
		$data['link_page'] 			= $this->m_link_page;
		$data['link_cancel'] 		= $this->m_link_cancel;		
		// Ten cac button		
		$data['btn_update'] 		= $this->lang->line('btn.0000.Update');
		$data['btn_cancel'] 		= $this->lang->line('btn.0000.Cancel');
		$data['lbl_tag'] 			= $this->lang->line('lbl.0000.Tag');
		$data['fr_img']				= Fstr_replace('admin/','',base_url());

		// Ky hieu dung de xac dinh cac truong thong tin khong duoc phep thieu.
		$data['get_icon_notnull']   	= Fget_icon_notnull();		
		$data['get_message_notnull']   	= Fget_icon_notnull() . $this->lang->line('msg.0000.NotNullValue');;
		
		$data['nid'] 				= $this->m_nid;
		
		// tieu de form
		$data['lbl_form_title'] 	= $this->m_form_title;
		
		// Tieu de cac truong
		$data['lbl_nid']          	= $this->m_language_key('nid');
		$data['lbl_image_height']	= $this->m_language_key('image_height');
		$data['lbl_image']			= $this->m_language_key('image');
		$data['lbl_image_fb']		= $this->m_language_key('image_fb');
		$data['lbl_image_iphone']	= $this->m_language_key('image_iphone');
		$data['lbl_title']    		= $this->m_language_key('title');
		$data['lbl_author']    		= $this->m_language_key('author');
		$data['lbl_cat']    		= $this->m_language_key('cat');
		$data['lbl_index']    		= $this->m_language_key('index');
		$data['lbl_section_news']  	= $this->m_language_key('section_news');
		$data['lbl_short_content']  = $this->m_language_key('shortcontent');
		$data['lbl_content']     	= $this->m_language_key('content');
		$data['lbl_status']			= $this->m_language_key('status');
		$data['lbl_lang']			= $this->m_language_key('lang');
		$data['lbl_first']			= $this->m_language_key('first');
		$data['lbl_alwcmt']	        = $this->m_language_key('alwcmt');
		
		$this->load->library('fckeditor');
		$this->fckeditor->BasePath = base_url().'ap_application/plugins/fckeditor/';
		$data['fck2'] = $this->fckeditor->CreateHtml('txt_cshort_content',$this->m_txt_cshort_content,'Default');
		// Gia tri hien thi
		$data['gencbo_section_news_list']	= Fgen_html_combobox('no', 'cbof_nid_section_news', $this->m_cbof_nid_section_news, 'width:350px;', $this->m_obj_section_news_view, 'nid', 'csection_news','submit','');
		$data['gencbo_cat_news_list']	= Fgen_html_combobox('no', 'cbof_nid_cat_news', $this->m_cbof_nid_cat_news, 'width:350px;', $this->m_obj_cat_news_view, 'nid', 'ccat_news','nosubmit','');

		$data['txt_ctitle'] 		= $this->m_txt_ctitle;
		$data['txt_cauthor'] 		= $this->m_txt_cauthor;
		$data['txt_ctag']	 		= $this->m_txt_ctag;
		$data['txt_cindex']	 		= $this->m_txt_cindex;
		
		$data['hidden_height_old']			= $this->m_hidden_height_old;
		$data['hidden_image_old']			= $this->m_hidden_image_old;
		$data['hidden_image_old_fb']		= $this->m_hidden_image_old_fb;
		$data['hidden_image_old_iphone']	= $this->m_hidden_image_old_iphone;
		
			
		if($this->m_txt_cheight_img != '')
			$data['txt_cheight_img'] 	= $this->m_txt_cheight_img;
		else
			$data['txt_cheight_img'] 	= $this->m_hidden_height_old;

		if($this->m_txt_cthumb_img != '')
			$data['txt_cthumb_img'] 	= $this->m_txt_cthumb_img;
		else
			$data['txt_cthumb_img'] 	= $this->m_hidden_image_old;
		
		if($this->m_txt_cfb_img != '')
			$data['txt_cfb_img'] 	= $this->m_txt_cfb_img;
		else
			$data['txt_cfb_img'] 	= $this->m_hidden_image_old_fb;
		
		if($this->m_txt_ciphone_img != '')
			$data['txt_ciphone_img'] 	= $this->m_txt_ciphone_img;
		else
			$data['txt_ciphone_img'] 	= $this->m_hidden_image_old_iphone;
			
		//$data['chk_nstatus'] 		= $this->m_chk_nstatus;
		$data['chk_alwcmt']			= $this->m_chk_alwcmt;
		$data['txt_cshort_content'] = $this->m_txt_cshort_content;
		$data['txt_ccontent'] 		= $this->m_txt_ccontent;

		// Message thogn bao loi
		$data['error_ctitle']		= $this->m_error_ctitle;
		$data['error_ccontent']		= $this->m_error_ccontent;
		$data['error_cshort_content']= $this->m_error_cshort_content;
		
		$data['menu_active']		= 'news';
		// Load view voi su kien tuong ung.
		$this->load->view('wood_view/index.php',$data);
		
	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/12/13
 * @description		: Huy du lieu
 * @access	        : private
 *
 * @param string	: None
 * 					: 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
private function destroy_data()
    {
        	
    }


/**
 |====================================================================
 | DANH SACH CAC HAM DINH NGHIA THEM
 |====================================================================
 */
private function check_valid_not_null()
	{
		
		// Kiem tra truong title khong rong
		
		if($this->m_txt_ctitle == '')
		{
			$this->m_error_ctitle	= $this->m_language_key('title') . $this->lang->line('msg.0000.ErorNotNull');
			return FALSE;
		}
		if($this->m_cbof_nid_section_news == '')
		{
			$this->m_error_ctitle	= $this->m_language_key('section_news') . $this->lang->line('msg.0000.ErorNotNull');
			return FALSE;
		}
		if($this->m_cbof_nid_cat_news == '')
		{
			$this->m_error_ctitle	= $this->m_language_key('cat') . $this->lang->line('msg.0000.ErorNotNull');
			return FALSE;
		}
		//// Kiem tra truong short content khong rong
//		if($this->m_txt_cshort_content == '')
//		{
//			$this->m_error_cshort_content	= $this->m_language_key('shortcontent') . $this->lang->line('msg.0000.ErorNotNull');
//			return FALSE;
//		}	
		// Kiem tra truong content khong rong
		if($this->m_txt_ccontent == '')
		{
			$this->m_error_ccontent	= $this->m_language_key('content') . $this->lang->line('msg.0000.ErorNotNull');
			return FALSE;
		}

		
		return TRUE;
	}
/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/12/13
 * @description		: Kiem tra du lieu truoc khi insert
 * @access	        : private
 *
 * @param string	: None
 * 					: 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
private function check_valid_before_insert()
	{
	
		if ($this->check_valid_not_null()== FALSE)
			return FALSE;
		
		if (fbcheck_exists_key_addnew('twood', 'ctitle',$this->m_txt_ctitle)==FALSE)
		{
			$this->m_error_ctitle	 	= $this->m_language_key('title') . $this->lang->line('msg.0000.ErorDoubleKey');
			return FALSE;		
		}
	
		return TRUE;		
	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/12/13
 * @description		: Insert du lieu vao twood
 * @access	        : private
 *
 * @param string	: None
 * 					: 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
private function insert_data()
	{
	
		if ($this->check_valid_before_insert()== TRUE)
		{
				$data =	array(								
				'ccode'			=> khongdau($this->m_txt_ctitle),
				'ctitle'		=> $this->m_txt_ctitle,
				'cauthor'		=> $this->m_txt_cauthor,
				'ctag'			=> $this->m_txt_ctag,
				'cindex'		=> $this->m_txt_cindex,
				'nstatus'		=> 1,
				'nimg'		=> 0,
				'nactive'		=> 0,
				'cimage_height'	=> $this->m_txt_cheight_img,
				'cimage_thumb'	=> $this->m_txt_cthumb_img,
				'cimage_fb'		=> $this->m_txt_cfb_img,
				'cimage_iphone'	=> $this->m_txt_ciphone_img,
				'cshort_content'=> $this->m_txt_cshort_content,
				'ccontent'		=> $this->m_txt_ccontent,
				'nid_section_news' => $this->m_cbof_nid_section_news,
				'nid_cat_news' => $this->m_cbof_nid_cat_news,
				'alwcmt' 		=> $this->m_chk_alwcmt,				
				'niduser01'     => $this->m_nid_user_login,
				'niduser02'     => $this->m_nid_user_login,
				'ddate01'		=> dbget_current_date(),
				'ddate02'		=> dbget_current_date()
				);
		
		// Goi phuong thuc cap nhat thong tin vao database.	
		$this->wood_model->insert($data);
		
		return TRUE;
		}
		else
		{
			return FALSE;
		}
	}


/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/12/13
 * @description		: Kiem tra du lieu truoc khi update
 * @access	        : private
 *
 * @param string	: None
 * 					: 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
private function check_valid_before_update()
	{
		if ($this->check_valid_not_null()== FALSE)
			return FALSE;
		
		if (fbcheck_exists_key_update('twood', 'ctitle',$this->m_txt_ctitle,$this->m_nid)==FALSE)
		{
			$this->m_error_ctitle	 	= $this->m_language_key('title') . $this->lang->line('msg.0000.ErorDoubleKey');
			return FALSE;		
		}
		
		return TRUE;
	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2009/12/13
 * @description		: Update du lieu vao twood
 * @access	        : private
 *
 * @param string	: None
 * 					: 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
private function update_data()
	{	
		if ($this->check_valid_before_update())
		{
			$data =	array(		
				'ccode'				=> khongdau($this->m_txt_ctitle),
				'ctitle'			=> $this->m_txt_ctitle,
				'cauthor'			=> $this->m_txt_cauthor,
				'ctag'				=> $this->m_txt_ctag,
				'cindex'			=> $this->m_txt_cindex,
		//		'nstatus'			=> $this->m_chk_nstatus,
				'cshort_content'	=> $this->m_txt_cshort_content,
				'ccontent' 			=> $this->m_txt_ccontent,
				'alwcmt' 			=> $this->m_chk_alwcmt,
				'nid_section_news' => $this->m_cbof_nid_section_news,	
				'nid_cat_news'		=> $this->m_cbof_nid_cat_news,
				'niduser02'			=> $this->m_nid_user_login,
				'ddate02'		=> dbget_current_date()
		        );
			
			if($this->m_txt_cheight_img !='')
			{
				$path						='.././upload/image_height_article/';
				delfile($path.$this->m_hidden_height_old);
				$data	['cimage_height']	=  $this->m_txt_cheight_img ;
			}
			if($this->m_txt_cthumb_img !='')
			{
				$path						='.././upload/image_article/';
				delfile($path.$this->m_hidden_image_old);
				$data	['cimage_thumb']	=  $this->m_txt_cthumb_img ;
			}
			if($this->m_txt_cfb_img !='')
			{
				$path						='.././upload/fbthumb/';
				delfile($path.$this->m_hidden_image_old_fb);
				$data	['cimage_fb']		=  $this->m_txt_cfb_img ;
			}
			if($this->m_txt_ciphone_img !='')
			{
				$path						='.././upload/ios/';
				delfile($path.$this->m_hidden_image_old_iphone);
				$data	['cimage_iphone']	=  $this->m_txt_ciphone_img ;
			}
			$this->wood_model->update_bynid($this->m_nid,$data);
					
			return TRUE; 
		}
		else
		{
			return FALSE;
		}
	}




function delete_image_iphone($nid)
	{
		$obj_data = $this->wood_model->get_byid($nid);
		$path				= '.././upload/ios/';
		if(file_exists($path.$obj_data['cimage_iphone']))
			unlink($path.$obj_data['cimage_iphone']);
		
		$data['cimage_iphone']		=  '' ;
		$this->wood_model->update_bynid($nid, $data);
		
		//Gen file xml for iphone and ipad
		gen_xml_category($nid);
		gen_xml_article($nid);	
		echo 'Deleted images!!';
	}

function delete_image_thumb($nid)
	{
		$obj_data = $this->wood_model->get_byid($nid);
		$path				= '.././upload/image_article/';
		if(file_exists($path.$obj_data['cimage_thumb']))
			unlink($path.$obj_data['cimage_thumb']);
		
		$data['cimage_thumb']		=  '' ;
		$this->wood_model->update_bynid($nid, $data);	
		echo 'Deleted images!!';
	}
function delete_height_thumb($nid)
	{
		$obj_data = $this->wood_model->get_byid($nid);
		$path				= '.././upload/image_height_article/';
		if(file_exists($path.$obj_data['cimage_height']))
			unlink($path.$obj_data['cimage_height']);
		
		$data['cimage_height']		=  '' ;
		$this->wood_model->update_bynid($nid, $data);	
		echo 'Deleted images!!';
	}

function delete_image_fb($nid)
	{
		$obj_data = $this->wood_model->get_byid($nid);
		$path					= '.././upload/fbthumb/';
		if(file_exists($path.$obj_data['cimage_fb']))
			unlink($path.$obj_data['cimage_fb']);
		
		$data['cimage_fb']		=  '' ;
		$this->wood_model->update_bynid($nid, $data);	
		echo 'Deleted images!!';
	}


}
// End do_wood class
	
// End of file do_wood.php
// Location: controllers/do_wood.php




