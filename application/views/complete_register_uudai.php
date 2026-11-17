<?php
   $this->load->view($view_folder.'/header');
   $this->load->view($view_folder.'/header_end');	
   $this->load->view($view_folder.'/modules/mod_header');
   ?>
<div class="main container">
	<div class="title_box text-center"><h4 class="title">Hoàn tất đăng ký</h4></div>
   <div class="content text-center">
      <p>Bạn đã đăng ký nhận tin ưu đãi thành công.</p>
		<p><a href="<?php echo base_url(); ?>san-pham-khuyen-mai" style="background: #ff6600;color: #fff;border: 0;padding: 5px 15px;margin-top: 50px;border-radius: 50px;" onclick="dang_ky();">MUA SẮM NGAY</a></p>
   </div>
</div>
<?php 
	$this->load->view($view_folder.'/modules/mod_footer');
	$this->load->view($view_folder.'/footer');
?>