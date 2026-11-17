<?php
class news_list extends CI_Controller
{
    var $event = '';
    var $obj_news_list = '';
    var $m_nid = '';
    var $m_language = 'eng';
    var $ctr_name = '';
    var $cur_page = 1;
    var $nrow_per_page = 10;
    var $ntotal_row = 0;
    var $total_page = 0;
    var $nid_section = '';
    var $nid_cat = '';
    var $title = '';
    var $tags = '';
    var $description = '';
	var $langsite = '';
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
    private function m_language_key($str_key)
    {
        return $this->lang->line('lbl.news_list.' . $str_key);
    }
    function cat($nid_cat)
    {
        $this->nid_cat = $nid_cat;
        $this->event   = 'view_cat';
        $this->do_process();
    }
	function cat_page($nid_cat, $page)
    {
		$this->nid_cat = $nid_cat;
        $this->cur_page = $page;
        $this->do_process();
    }
	function cat_page_code($ccode, $page)
    {
		$this->ccode = $ccode;
		$news = get_news_by_id_detail($this->ccode);
		$this->nid_cat = $news['nid'];
        $this->cur_page = $page;
        $this->do_process();
    }
    function sec($nid_sec)
    {
        $this->nid_section   = $nid_sec;
        $this->event         = 'view_sec';
        $this->nrow_per_page = $this->nrow_per_page;
        $this->do_process();
    }
    function set_page()
    {
        $curr_page = 1;
        if (isset($_POST['curr_page']))
            $curr_page = $_POST['curr_page'];
        $_SESSION['curr_page'] = $curr_page;
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
		$lang_ = 'eng';
        if (isset($_SESSION['_lang']))
            $lang_ = $_SESSION['_lang'];
        $this->load->language('ap', $lang_);
        $this->langsite = $lang_;
    }
    private function caculate_data()
    {
        if ($this->cur_page < 1)
            $this->cur_page = 1;
        $this->ntotal_row = get_count_news_by_cat($this->nid_cat);
		//$this->ntotal_row = get_count_news();
        $this->total_page = Fget_total_page($this->nrow_per_page, $this->ntotal_row);
        $this->obj_news   = get_news_by_cat($this->nid_cat, $this->nrow_per_page, $this->cur_page);
		//$this->obj_news   = get_news_paging($this->nrow_per_page, $this->cur_page);
        $this->event      = $this->event == '' ? 'view' : $this->event;
		
    }
    private function do_business()
    {
        //$this->output->cache(10);
        $data['lbl_tinmoi'] = $this->m_language_key('tinmoi');
        $data['lbl_tin']    = $this->m_language_key('tin');
        $data['link_page']  = base_url() . 'news_list';
        if ($this->nid_cat != '') {
            $obj_data    = get_section_news_byid($this->nid_cat);
            $this->title = $obj_data['ccat_news'];
			$data['ccode']        = $obj_data['ccode'];
			//exit($this->nid_cat.'1');
        }
        $data['event']        = $this->event;
        $data['nid_cat']      = $this->nid_cat;
        $data['nid_sec']      = $this->nid_section;
        $data['total_row']    = $this->ntotal_row;
        $data['row_per_page'] = $this->nrow_per_page;
        $data['total_page']   = $this->total_page;
        $data['cur_page']     = $this->cur_page;
        $data['title']        = $this->title;
        $data['tags']         = $this->tags;
        $data['description']  = $this->description;
        $data['obj_news_list'] = $this->obj_news;
        $data['menu_sec']     = '';
        $data['menu_cat']     = '';
		$data['langsite']    = $this->langsite;
        if ($this->nid_cat == 1) {
			$data['title']        = "News";
            $data['menu_top'] = 'news_list';
        } elseif ($this->nid_cat == 2) {
			$data['title']        = "Services";
            $data['menu_top'] = 'services';
        } elseif ($this->nid_cat == 3) {
			$data['title']        = "Projects";
            $data['menu_top'] = 'projects';
		}
		
		//$data['menu_top'] = 'news_list';
        //if ($this->nid_cat == 2) 
		//	$this->load->view('news_list_service', $data);
		//else	
			$this->load->view('news_list', $data);
    }
    private function destroy_data()
    {
    }
    private function get_where_news_list_string()
    {
        $str = ' WHEREa nid is not null ';
        if ($this->ccat_news != '')
            $str .= ' AND nid_cat_news = ' . $this->nid_cat;
        return $str;
    }
}