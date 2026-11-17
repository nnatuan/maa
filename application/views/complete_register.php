<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   $this->load->view('modules/mod_slideshow');
   ?>  
<style>
.tf-section {
    background: #fff;
    color: #000;
	padding: 120px 0;
}
.tf-section h5 {
    color: #000;
}
</style>
		<section class="tf-section" id="complete">
			<div class="container">
				<h5 class="title">Thank you! Your registration has been received.</h5>
				<p>A NetApp representative may reach out to you to verify your details if required, and you should receive a confirmation email shortly.</p>
				<h5 class="title">Cảm ơn bạn! Đăng ký của bạn đã được hệ thống ghi nhận.</h5>
				<p>Đại diện NetApp có thể liên hệ với bạn để xác minh thông tin chi tiết. Email xác nhận đăng ký sẽ sớm được gửi đến bạn.</p>
			</div>
		</section>         

<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>