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
 * do_image_product class
 *
 * Quan ly them, sua thong tin danh muc quan huyen
 *
 * @subpackage	controllers
 * @category	
 * @author		Hoang Minh An 
 *------------------------------------------------------------------
 */     
class do_image_product extends Controller  
{
//He thong	
	var $m_language 		= ''; // nhan ngon ngu tu file language
	var $m_nid_user_login 	= ''; // nhan iduser tu session

	var $m_nid 				= ''; // nhan nid cua phuong xa can chinh sua
	var $m_nid_product		= ''; // nhan nid cua phuong xa can chinh sua
	var $m_event			= ''; // nhan su kien cap nhat hoac bo qua
	var $m_button_click		= ''; // nhan su kien tu hidden button o trang ap_news
	
	var	$m_link_page  		= ''; // nhan link cua su kien
	var $m_link_cancel 		='';  // link toi trang ap_news_listview

	var $m_form_title 		= ''; // tieu de cua form

// Nhung bien dung cho doi tuong.			  
	var $m_txt_nid 			  		= ''; // nhan ma tin 
	var $m_txt_nid_product			= '';
	var $m_txt_ccode				= '';
	var $m_txt_cnote				= '';
	var $m_txt_nstatus				= '';
	var $m_txt_cindex				= '';
	var $m_txt_user01				= '';
	var $m_txt_ddate01				= '';
	
	var $m_txt_cimage				= '';
	var $m_hidden_image_old			= '';
	var $m_txt_cimage_resize		= '';
	var $m_hidden_image_old_resize	= '';
	
	var $m_obj_product				= '';
	var $m_obj_data_view    		= '';
	
	// Cac bien can xuat hien thi thong bao len view cho nguoi dung xem.
	var $m_error_msg 	    		= ''; 
	var $m_link_cancel_trans	= '';
	
/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com
 * @finished date	: 2010/04/10
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
function do_image_product()
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
				
		// Kiem tra dieu kien login theo ma so he thong 1
		$this->tokaban_system_check = '1';
		// Load cac thu vien rieng can thiet khac neu co
		$this->load->model('image_product_model');
		
	}
	
	/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2010/04/10
 * @description		: Lay nid tu view ap_news_listview
 * @access	        : public
 *
 * @param string	: $nid   : truong khoa chinh cua tnews
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
		return $this->lang->line('lbl.image_products.'.$str_key);
	}
	

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2010/04/10
 * @description		: Lay nid tu view ap_news_listview
 * @access	        : public
 *
 * @param string	: $nid   : truong khoa chinh cua tnews
 *                  : 
 * @return string	: None
 *-------------------------------------------------------------------
 * @editor   	    : 
 * @finished date	: 
 * @editing content	: 
 *-------------------------------------------------------------------
 */		
function f_edit($nid_product,$nid) // ham chinh sua, tham so la nid cua phuong xa can chinh sua
	{
		$this->m_event = 'edit';
		$this->m_nid   = $nid;
		$this->m_txt_nid_product = $nid_product;		 	
		$this->do_process();		
	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2010/04/10
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

 * @finished date	: 2010/04/10
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
function f_add($nid_product) // ham them phuong xa
	{				
		$this->m_event 	= 'add';
		$this->m_nid 	= '0';
		$this->m_txt_nid_product = $nid_product;
		$this->do_process();
	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2010/04/10
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

 * @finished date	: 2010/04/10
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
		if(isset($_FILES["txt_cimage"]))
		{
			if($_FILES["txt_cimage"]["name"]!='')
			{
				$path_full					= '.././upload/images_product/full_images/';
				$this->m_txt_cimage 		= Fupload_resize_img($_FILES["txt_cimage"],$path_full,450,338);
				
				$path_detail				= '.././upload/images_product/resize_images/';
				$this->m_txt_cimage_resize	= resize_img($_FILES["txt_cimage"],$this->m_txt_cimage,$path_full.$this->m_txt_cimage,$path_detail,45,34);
				
				if($this->m_txt_cimage != '')
				{
					$path				='.././upload/images_product/full_images/';
					delfile($path.$_POST['hidden_image_old']);
					$this->m_hidden_image_old	= $this->m_txt_cimage;		
				}
				else
					$this->m_hidden_image_old	= $_POST['hidden_image_old'];
				if($this->m_txt_cimage_resize != '')
				{
					$path				='.././upload/images_product/resize_images/';
					delfile($path.$_POST['hidden_image_old_resize']);
					$this->m_hidden_image_old_resize	= $this->m_txt_cimage_resize;		
				}
				else
					$this->m_hidden_image_old_resize	= $_POST['hidden_image_old'];
			}									
		}
		
		if (isset($_POST['txt_ccode']))
		{
			$this->m_txt_ccode		 				= trim($_POST['txt_ccode']);
			$this->m_txt_cindex		 				= trim($_POST['txt_cindex']);
			$this->m_txt_cnote		 				= trim($_POST['txt_cnote']);
			$this->m_txt_nstatus	 				= trim($_POST['txt_nstatus']);
			
			
		}

// Kiem tra va nhan cac bien hidden neu co.
		if (isset($_POST['hidden_nid']))
			$this->m_nid 			= $_POST['hidden_nid'];
			
		if (isset($_POST['hidden_nid_product']))
			$this->m_txt_nid_product= $_POST['hidden_nid_product'];
			
		if (isset($_POST['hidden_event']))
			$this->m_event			= $_POST['hidden_event'];
			
		if (isset($_POST['hidden_button_click']))
			$this->m_button_click	= $_POST['hidden_button_click'];
			
		if (isset($_POST['hidden_image_old']))
			$this->m_hidden_image_old			= $_POST['hidden_image_old'];
			
		if (isset($_POST['hidden_image_old_resize']))
			$this->m_hidden_image_old_resize	= $_POST['hidden_image_old_resize'];
	}
		

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2010/04/10
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
		$this->m_link_page 		= base_url() . 'index.php/do_image_product/f_update_edit';	
		$this->m_link_cancel 	= base_url() . 'index.php/do_image_product_listview';	
		
		$this->m_obj_product 	= $this->image_product_model->get_product_byid($this->m_txt_nid_product); 

		switch ($this->m_event)
		{
			case 'edit':	
				$this->m_form_title = $this->m_language_key('FormEditTitle');
				$this->m_link_page 	= base_url() . 'index.php/do_image_product/f_update_edit';	

				$obj_data = $this->image_product_model->get_byid($this->m_nid);
					$this->m_txt_ccode				 	= $obj_data['ccode'];
					$this->m_txt_cimage				 	= $obj_data['cimage'];
					$this->m_txt_cimage_resize		 	= $obj_data['cimage_resize'];
					$this->m_txt_cnote					= $obj_data['cnote'];
					$this->m_txt_cindex					= $obj_data['cindex'];
					$this->m_txt_nstatus				= $obj_data['nstatus'];


				$this->m_event 	= 'update_edit';
				break;
			case 'add':
				$this->m_form_title = $this->m_language_key('FormAddTitle');
				$this->m_event 	= 'update_add';
				break;
			case 'update_edit':
				$this->m_form_title = $this->m_language_key('FormEditTitle');
				
				if ($this->m_button_click == 'btn_submit')
				if ($this->update_data()==TRUE)
							redirect ('do_image_product_listview');
			
				
				$this->m_link_page 	= base_url() . 'index.php/do_image_product/f_update_edit';
				break;
			
			case 'update_add':
				$this->m_form_title = $this->m_language_key('FormAddTitle');
				if ($this->m_button_click == 'btn_submit')
						if ($this->insert_data()==TRUE)
							redirect ('do_image_product_listview');
				$this->m_link_page 	= base_url() . 'index.php/do_image_product/f_update_add';
			
					break;
		}		
	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2010/04/10
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
//He thong					
		$data['event'] 				= $this->m_event;
		$data['menu'] 				= Fget_menu_html($this->m_nid_user_login);
		
		$data['fr_img']				= Fstr_replace('admin/','',base_url());
		$img_product 				= '<img  align="absmiddle" width="50" src = "'.$data['fr_img'].'upload/images_product/resize_images/'.$this->m_obj_product['cimage_resize'].'" alt = "'.$this->m_obj_product['cproducts'].'" /> ';
		$data['lbl_form_title'] 		= $this->m_form_title .'<label style="color:#FF6633"> '.$this->m_obj_product['cproducts']. '</label> ' . $img_product ;
		
		$data['link_page'] 			= $this->m_link_page;
		$data['link_cancel'] 		= $this->m_link_cancel;		
		$data['link_cancel_trans'] 	= $this->m_link_cancel_trans;
// Ten cac button		
		$data['btn_update'] 		= $this->lang->line('btn.0000.Update');
		$data['btn_cancel'] 		= $this->lang->line('btn.0000.Cancel');

// Ky hieu dung de xac dinh cac truong thong tin khong duoc phep thieu.
		$data['get_icon_notnull']   	= Fget_icon_notnull();		
		$data['get_message_notnull']   	= Fget_icon_notnull() . $this->lang->line('msg.0000.NotNullValue');;
		
//lbl_form
		$data['lbl_ccode']				= $this->m_language_key('ccode');
		$data['lbl_cimage']				= $this->m_language_key('cimage');
		$data['lbl_index'] 				= $this->m_language_key('index');
		$data['lbl_cnote'] 				= $this->m_language_key('cnote');
		$data['lbl_nstatus'] 			= $this->m_language_key('nstatus');
// lbl err
		$data['lbl_error_msg']			= $this->m_error_msg;

//Bien doi tuong 
		if($this->m_txt_cimage == '')
			$this->m_txt_cimage			= $this->m_hidden_image_old;
		$data['txt_cimage'] 			= $this->m_txt_cimage;
		if($this->m_txt_cimage_resize == '')
			$this->m_txt_cimage_resize	= $this->m_hidden_image_old_resize;
		$data['txt_cimage_resize'] 		= $this->m_txt_cimage_resize;
		
		$data['txt_ccode']				= $this->m_txt_ccode;
		$data['txt_cindex']				= $this->m_txt_cindex;
		$data['txt_cnote']				= $this->m_txt_cnote;
		$data['txt_nstatus']			= $this->m_txt_nstatus;
		
		$data['gen_cbo_status']			= Fget_combobox_yes_no('no','txt_nstatus',$this->m_txt_nstatus,'width:250px',$this->lang->line('lbl.0000.Yes'),$this->lang->line('lbl.0000.No'));
		
//Truyen bien nid cho view
		$data['nid']					= $this->m_nid;
		$data['nid_product']			= $this->m_txt_nid_product;

		

	
		$data['menu_active']		= 'image_product';
// Load view voi su kien tuong ung.
		$this->load->view('image_product_view/index.php',$data);
		
	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2010/04/10
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
		
		if($this->m_txt_ccode == '')
		{
			$this->m_error_msg	= $this->m_language_key('ccode') . $this->lang->line('msg.0000.ErorNotNull');
			return FALSE;
		}
		
		
		
		return TRUE;
	}
/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2010/04/10
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
		{
			return FALSE;
		}
		if (fbcheck_exists_key_addnew('timage_products', 'ccode',$this->m_txt_ccode)==FALSE)
		{
			$this->m_error_msg	 	= $this->m_language_key('ccode') . $this->lang->line('msg.0000.ErorDoubleKey');
			return FALSE;		
		}
	
		return TRUE;		
	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2010/04/10
 * @description		: Insert du lieu vao tnews
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
						'cimage'					=> $this->m_txt_cimage,
						'ccode'						=> $this->m_txt_ccode,
						'cimage_resize'				=> $this->m_txt_cimage_resize,
						'nid_products'				=> $this->m_txt_nid_product,
						'cnote'						=> $this->m_txt_cnote,
						'cindex'					=> $this->m_txt_cindex,
						'nstatus'					=> $this->m_txt_nstatus,		
						'niduser01'     			=> $this->m_nid_user_login,
						'niduser02'     			=> $this->m_nid_user_login,
						'ddate01'					=> dbget_current_date(),
						'ddate02'					=> dbget_current_date()
						);
		
		// Goi phuong thuc cap nhat thong tin vao database.	
		$this->image_product_model->insert($data);
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

 * @finished date	: 2010/04/10
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

			if (fbcheck_exists_key_update('timage_products', 'ccode',$this->m_txt_ccode, $this->m_nid)==FALSE)
		{
		
			$this->m_error_msg	 	= $this->m_language_key('ccode') . $this->lang->line('msg.0000.ErorDoubleKey');

			return FALSE;		
		}
		
		return TRUE;
	}

/**
 *-------------------------------------------------------------------
 * @creator 		: Hoang Minh An - an_hm87@tokaban.com

 * @finished date	: 2010/04/10
 * @description		: Update du lieu vao tnews
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
		if ($this->check_valid_before_update()==TRUE)
		{
						$data =	array(								
						'nid_products'				=> $this->m_txt_nid_product,
						'ccode'						=> $this->m_txt_ccode,
						'cnote'						=> $this->m_txt_cnote,
						'cindex'					=> $this->m_txt_cindex,
						'nstatus'					=> $this->m_txt_nstatus,		
						'niduser01'     			=> $this->m_nid_user_login,
						'ddate01'					=> dbget_current_date()
	    			    );
			if($this->m_txt_cimage !='')
				{
					$path				='.././upload/images_product/full_images/';
					delfile($path.$this->m_hidden_image_old);
					$data['cimage']		=  $this->m_txt_cimage ;
				}
			if($this->m_txt_cimage_resize !='')
				{
					$path				='.././upload/images_product/resize_images/';
					delfile($path.$this->m_hidden_image_old_resize);
					$data['cimage_resize']		=  $this->m_txt_cimage_resize ;
				}
			$this->image_product_model->update_bynid($this->m_nid, $data);		
			return TRUE; 
		}
		else
		{
			return FALSE;
		}
	}

}


// End do_image_product class
	
// End of file do_image_product.php
// Location: controllers/do_image_product.php




