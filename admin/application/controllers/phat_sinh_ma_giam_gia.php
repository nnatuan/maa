<?php	if (!defined('BASEPATH')) exit('No direct script access allowed');
/*
 * Tokaban Standard System
 *
 * Tokaban framework for PHP
 *
 * @package		ap_standard_system
 * @author		Tokaban R&D Team
 * @copyright	Copyright (c) 2009, Tokaban, Inc.
 * @since		Version 2.0
 *  
 */
  
// ------------------------------------------------------------------------
class phat_sinh_ma_giam_gia extends Controller 
{
	var $m_language 		= ''; 
	var $m_nid_user_login 	= ''; 
	
	var $m_event			= 'view';
		
	var $m_action			= ''; 	 
	var $m_frm_link_to_		= ''; 

	var $m_txt_user_name	= ''; 
	var $m_txt_password		= ''; 

	var $btn_submit = '';

	// ------------------------------------------------------------------------
	
/**
 * Constructor
 *
 * Load cac thu vien can su dung cho class
 *
 * @access	public
 */	
function phat_sinh_ma_giam_gia()
	{ 
		parent::Controller();  
		session_start();
		$this->load->database();
		$this->load->helper('ap_function');
		$this->load->helper('ap_db');
		$this->load->helper('ap_html');
		$this->load->helper('ap_object');
		//$this->load->helper('ap_module');
		//$this->load->helper('ap_cart');
		$this->tokaban_system_check = '1';  
	}
	
	// ------------------------------------------------------------------------
	
/**
 * Goi tuan tu cac ham theo dung quy dinh ve luong du lieu
 * 
 * @access	public
 */		
function index()
	{
		$this->get_data(); 
		$this->caculate_data(); 
		$this->do_business();
		$this->destroy_data();
	}		
	
	// ------------------------------------------------------------------------
	
/**
 * Khong can xu ly
 *
 * @access	private
 */	
private function get_data()
	{
		$this->m_nid_user_login = Fget_userdata('session_nid_user');
		$this->m_language = Fget_userdata('session_user_language');	
		// Load file ngon ngu can su dung.
		$this->load->language('ap', $this->m_language);
		
		
	}

	// ------------------------------------------------------------------------
	
/**
 * Khong can xu ly
 *
 * @access	private
 */		
private function caculate_data()
	{
		// Your code at here	
		if ($this->btn_submit != '') {
            $this->insert_cart();
        }	
	}

// ------------------------------------------------------------------------

/**
 * Thiet lap cac session dung chung cho toan he thong 
 * Redirect do_login controller
 *
 * @access	private
 */
private function do_business()
	{				 
		/*$data['view'] = 'sell';
		$data['password'] = Fget_userdata('session_user_full_name');		
		$data['user_fullname'] = Fget_userdata('session_user_full_name');
		$data['user_encode'] = Obj_get_encode($str);
		$data['user_decode'] = Obj_get_decode(Obj_get_encode($str));*/
		$data['lbl_form_title'] 	= "Phát sinh mã giảm giá";
		$data['menu'] = Fget_menu_html($this->m_nid_user_login);
		$data['menu_active']	= 'code_sale';
		$data['menu_group_active']		= '';
		$this->m_event = 'phat_sinh_ma_giam_gia';
		$data['event'] = $this->m_event;
		$this->load->view('code_sale_view/index', $data);
	}
		
	// ------------------------------------------------------------------------
	
/**
 * Khong can xy ly
 *
 * @access	private
 */			
private function destroy_data()
	{
	
	}

// END do_init class		
}		
/* End of file do_init.php */
/* Location: controller/do_init.php */