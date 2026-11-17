<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   ?>
<style>
.page-wrapper {
    padding-bottom: 0;
}	    
</style>   
<div class="container text-block">
   <nav itemscope="" itemtype="http://schema.org/BreadcrumbList" class="breadcrumbs">
      <span itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
         <a itemprop="item" href="<?php echo base_url(); ?>" title="Pagrindinis" class="breadcrumbs__link" id="breadcrumb_0"><span itemprop="name">Trang chủ</span></a>
         <meta itemprop="position" content="1">
      </span>
      <span itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
         <a title="" itemprop="item" href="<?php echo base_url(); ?>gioi-thieu" class="breadcrumbs__text active"><span itemprop="name">Giới thiệu</span></a>
         <meta itemprop="position" content="2">
      </span>
   </nav>
   <h1>Về chúng tôi</h1>
   <div class="box-content">
      <?php echo $obj_content['eng_ccontent']?>
   </div>
</div>
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>