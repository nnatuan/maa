<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   ?>
<div class="main container" style="padding-bottom:50px;">
	<div class="title_box text-center"><h4 class="title">Hoàn tất liên hệ</h4></div>
   <div class="content text-center">
      <p>Thông tin liên hệ của quý khách đã được ghi nhận. Chân thành cảm ơn!</p>
		<p><a href="<?php echo base_url(); ?>" style="margin-top: 50px;">Về trang chủ</a></p>
   </div>
</div>
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>