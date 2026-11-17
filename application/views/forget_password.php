<?php 
   $this->load->view($view_folder.'/header');
   $this->load->view($view_folder.'/header_end');	
   $this->load->view($view_folder.'/modules/mod_header');
   ?>
<script src='https://www.google.com/recaptcha/api.js'></script>   
<style>
.ajax-loader {
  visibility: hidden;
  background-color: rgba(0,0,0,0.5);
  position: fixed;
  z-index: +100 !important;
  width: 100%;
  height:100%;
  top: 0;
  left: 0;
  text-align: center;
}
.ajax-loader .fa-spin {
	font-size:40px !important;
	position: absolute;
	top: 50%;
	color: #fff;
}
.form-control {
	border: 1px solid #eee;
    margin-bottom: 10px;
}
</style>
<div class="ajax-loader">
	<i class="fa fa-spinner fa-spin fa-3x"></i>
</div>
<div class="main-wrap full">
<div class="div-dk" style="padding:100px 0;padding-bottom:150px;background:#eee;">	
	<div class="box-dk" style="width:350px;margin:0 auto;position: relative;background:#fff;">
		<h4 class="title-dn-dk">KHÔI PHỤC MẬT KHẨU</h4>
		<div id="register_box" style="padding:15px;min-height: 200px;font-size: 14px;">

					<p class="text-danger" style="margin-bottom: 10px;text-align: center;">Vui lòng nhập Email mà bạn đã đăng ký, chúng tôi sẽ gửi một mật khẩu mới đến Email này.</p>
					<input id="cemail" name="cemail" type="email" class="form-control" placeholder="" autocomplete="off" />
					<div class="g-recaptcha" data-sitekey="6Lf9Rz0dAAAAAOVHMuWHKEFCXad_HLjn5g21reHr"></div>	
					<button style="width: 100%;background: #159fde;color: #fff;border: 0;padding: 9px 0;margin-top: 20px;margin-bottom: 20px;border-radius: 4px;" onclick="reset_password();">YÊU CẦU</button>

			</div>	
		</div>
	</div>

</div>
<script>
	function reset_password(){
		var _cemail = jQuery('#cemail').val();
		if(_cemail != "") {
                jQuery.ajax({
                    url : "<?php echo base_url(); ?>ajax_actions/reset_password",
                    type : "post",
                    dataType:"text",
                    data : {
                        cemail: _cemail,
						recaptcha: grecaptcha.getResponse()
                    },
					beforeSend: function(){
						jQuery('.ajax-loader').css("visibility", "visible");
					},
                    success : function (result){
						//alert(result);
						if(result=='2') {
							alert("Vui lòng xác nhận Captcha!");
							//location.reload();
						} else if(result=='0') {
							alert("Email không đúng hoặc chưa được đăng ký, vui lòng kiểm tra lại.");
							location.reload();
						} else 
							alert("Mật khẩu đã được gửi đến Email của bạn.");
                    },
					complete: function(){
						jQuery('.ajax-loader').css("visibility", "hidden");
					}
                });
        } else 
			alert("Vui lòng nhập Email đã đăng ký.");
	}
</script> 		
<?php 
	$this->load->view($view_folder.'/modules/mod_footer');
	$this->load->view($view_folder.'/footer');
?>