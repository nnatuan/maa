<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * =================================================================
 * Tokaban Standard System.
 * CodeIniter Tokaban framework for PHP.
 *
 * @package		: CI-TKB 
 * @author		: Tokaban R&D Team.
 * @copyright	: Copyright (c) 2009, Tokaban, Inc.
 * @since		: Version 2.0
 * =================================================================
 */    
   
/**
 *------------------------------------------------------------------
 * do_change_password class
 *
 * Quan ly them, sua thong tin danh muc thanh pho
 *
 * @subpackage	controllers
 * @category	 
 *------------------------------------------------------------------
 */	
class do_change_password extends Controller 
{	
	var $m_language 		= '';
	var $m_nid_user_login 	= '';
	var $m_username_login 	= '';

	var $m_nid 				= ''; 	
	var $m_event			= '';  
	var $m_button_click		= ''; 
	
	var	$m_link_page  		= '';
	var $m_link_cancel 		='';

	var $m_form_title 		= '';
	
	// Nhung bien dung cho doi tuong.			
	var $m_txt_old_password		= '';
	var $m_txt_new_password		= '';
	var $m_txt_comfirm_password	= '';
	
	// Cac bien can xuat hien thi thong bao len view cho nguoi dung xem.
	var $m_error_ccode 	    	= '';
	var $m_error_cchange_password		 	= '';
	
/**
 *-------------------------------------------------------------------
 * @finished date	: 2009/11/11
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
function do_change_password()
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
				
		// Kiem tra hook dieu kien xem view.
		$this->tokaban_system_check = '1';
		// Load cac thu vien rieng can thiet khac neu co.
		$this->load->model('change_password_model');
		
	}

/**
 *-------------------------------------------------------------------
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
function index()
	{
		$this->do_process();
	}

/**
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
function do_process()
	{
		$this->get_data();
		$this->caculate_data();
		$this->do_business();
		$this->destroy_data();
	}

/**
 *-------------------------------------------------------------------
 * @finished date	: 2009/09/08
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
		$this->m_username_login	= $this->change_password_model->get_byid($this->m_nid_user_login);
		
		// Lay ma ngon ngu tu session.
		// Load file ngon ngu can su dung.
		$this->m_language 		= Fget_userdata('session_user_language');	
		$this->load->language('tokaban', $this->m_language);

		$this->m_event			= 'edit';
		// Xac dinh cac gia tri duoc post tu view.
		// Can kiem tra tren tung form cu the.
		if (isset($_POST['txt_old_password']))
		{
			$this->m_txt_old_password		= $_POST['txt_old_password'];
			$this->m_txt_new_password		= $_POST['txt_new_password'];
			$this->m_txt_comfirm_password 	= $_POST['txt_comfirm_password'];	
		}
		
		// Kiem tra va nhan cac bien hidden neu co.
		if (isset($_POST['hidden_nid']))
			$this->m_nid 			= $_POST['hidden_nid'];
			
		if (isset($_POST['hidden_event']))
			$this->m_event			= $_POST['hidden_event'];
			
		if (isset($_POST['hidden_button_click']))
			$this->m_button_click	= $_POST['hidden_button_click'];
	}

/**
 *-------------------------------------------------------------------
 * @finished date	: 2009/09/08
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
		$this->m_link_cancel = base_url() . '/index.php/do_home';		
		// Xu ly tuy theo su kien.
		switch ($this->m_event)
		{
			case 'edit':										
				$this->m_form_title = $this->lang->line('lbl.0001.FormTitleChangePass');
				$this->m_link_page 	= base_url() . 'index.php/do_change_password';	
				$this->m_event 	= 'update_edit';	
				break;
			case 'update_edit':
				if ($this->m_button_click == 'btn_submit')
						if ($this->update_data()==TRUE)
							redirect (base_url() . '/index.php');
				//
				$this->m_form_title = $this->lang->line('lbl.0001.FormTitleChangePass');
				$this->m_link_page 	= base_url() . 'index.php/do_change_password';
				break;
		}		
	}

/**
 *-------------------------------------------------------------------
 * @finished date	: 2009/09/08
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
		$data['menu'] = Fget_menu_html($this->m_nid_user_login);
								
		$data['lbl_form_title'] 	= $this->m_form_title;
		
		$data['link_page'] 			= $this->m_link_page;
		$data['link_cancel'] 		= $this->m_link_cancel;		
		
		// Ten cac button		
		$data['btn_update'] 		= $this->lang->line('btn.0000.Update');
		$data['btn_cancel'] 		= $this->lang->line('btn.0000.Cancel');
		
		// Ky hieu dung de xac dinh cac truong thong tin khong duoc phep thieu.
		$data['get_icon_notnull']   	= Fget_icon_notnull();		
		$data['get_message_notnull']   	= Fget_icon_notnull() . $this->lang->line('msg.0000.NotNullValue');;
		
		$data['nid'] 				= 	$this->m_nid;
		
		// Tieu de cac truong
		$data['lbl_old_password']        = $this->lang->line('lbl.0001.old_password');
		$data['lbl_new_password']    	 = $this->lang->line('lbl.0001.new_password');
		$data['lbl_comfirm_password']    = $this->lang->line('lbl.0001.comfirm_password');
		$data['lbl_username']			 = $this->lang->line('lbl.0001.UserName');

		// Gia tri hien thi
		$data['username_login'] 			= $this->m_username_login['cuserid'];
		$data['txt_old_password'] 			= $this->m_txt_old_password;
		$data['txt_new_password'] 			= $this->m_txt_new_password;
		$data['txt_comfirm_password'] 		= $this->m_txt_comfirm_password;

		// Message thogn bao loi
		$data['error_ccode']		= $this->m_error_ccode;		
		$data['error_cchange_password']		= $this->m_error_cchange_password;
		
		// Load view voi su kien tuong ung.
		$this->load->view('change_password_view/index.php',$data);
		
	}

/**
 *-------------------------------------------------------------------
 * @finished date	: 2009/09/08
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
		// Kiem tra truong ccode khong rong.
		if(trim($this->m_txt_old_password) == '')
		{
			$this->m_error_ccode = $this->lang->line('lbl.0001.old_password') . $this->lang->line('msg.0000.ErorNotNull');
			return FALSE;
		}
		
		// Kiem tra truong cchange_password khong rong
		if(trim($this->m_txt_new_password) == '')
		{
			$this->m_error_cchange_password 	= $this->lang->line('lbl.0001.new_password') . $this->lang->line('msg.0000.ErorNotNull');
			return FALSE;
		}
		// Kiem tra truong cchange_password khong rong
		if(trim($this->m_txt_comfirm_password) == '')
		{
			$this->m_error_cchange_password 	= $this->lang->line('lbl.0001.comfirm_password') . $this->lang->line('msg.0000.ErorNotNull');
			return FALSE;
		}
		return TRUE;
	}

/**
 *-------------------------------------------------------------------
 * @finished date	: 2009/09/08
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
		
		if ($this->change_password_model->check_password_user($this->m_nid_user_login,md5($this->m_txt_old_password)) <= 0)
		{
			$this->m_error_cchange_password	 	= $this->lang->line('err.0001.err_old_password') . $this->lang->line('msg.0000.ErorDoubleKey');
			return FALSE;		
		}

		if ($this->m_txt_new_password != $this->m_txt_comfirm_password)
		{
			$this->m_error_cchange_password	 	= $this->lang->line('err.0001.err_comfirm_password');
			return FALSE;
		}
			
		//
		return TRUE;
	}

/**
 * @finished date	: 2009/09/08
 * @description		: Update du lieu vao tchange_password
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
				'cpassword' 				=> md5($this->m_txt_new_password),
				'ddate02'					=> dbget_current_date(),
				'niduser02'					=> $this->m_nid_user_login
		        );

			$this->change_password_model->update_bynid($this->m_nid_user_login, $data);		
			return TRUE;
		}
		else
		{
			return FALSE;
		}
	}


}
// End do_change_password class
	
// End of file do_change_password.php
// Location: controllers/do_change_password.php



