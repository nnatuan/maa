<?php 
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   ?>
<div class="breadcrumb_section bg_gray">
         <div class="container">
            <div class="row align-items-center">
               <div class="col-md-6">
                  <div class="page-title">
                     <h1>Đăng ký</h1>
                  </div>
               </div>
               <div class="col-md-6">
                  <ol class="breadcrumb justify-content-md-end" itemscope itemtype="http://schema.org/BreadcrumbList">
                     <li class="breadcrumb-item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                        <meta itemprop="position" content="1" />
                        <a href="<?php echo base_url(); ?>" itemprop="item" title="Home">
                           Trang chủ
                           <meta itemprop="name" content="Home" />
                        </a>
                     </li>
                     <li class="breadcrumb-item active">Đăng ký</li>
                  </ol>
               </div>
            </div>
         </div>
      </div>
<div class="login_register_wrap section">
         <div class="container">
            <div class="row justify-content-center">
               <div class="col-xl-6 col-md-10">
                  <div class="login_wrap">
                     <div class="padding_eight_all bg-white">
                        <div class="heading_s1">
                           <h3>Đăng ký</h3>
                        </div>
                        <form method="POST" action="">                         
                           <div class="form-group">
                              <input class="form-control" name="cname" id="cname" type="text" value="" placeholder="Your Name">
                           </div>
                           <div class="form-group">
                              <input class="form-control" name="cemail" id="cemail" type="email" value="" placeholder="Your Email">
                           </div>
                           <div class="form-group">
                              <input class="form-control" type="password" name="cpassword" id="cpassword" placeholder="Password" pattern=".{6,}" title="Six or more characters">
                           </div>
                           <div class="form-group">
                              <input class="form-control" type="password" name="cpassword_confirmation" id="cpassword_confirmation" placeholder="Password Confirmation" pattern=".{6,}" title="Six or more characters">
                           </div>
                           <div class="login_footer form-group">
                              <div class="chek-form">
                                 <div class="custome-checkbox">
                                    <input type="hidden" name="agree_terms_and_policy" value="0">
                                    <input class="form-check-input" type="checkbox" name="agree_terms_and_policy" id="terms-policy" value="1">
                                    <label class="form-check-label" for="terms-policy"><span><small class="text-muted">
                              Tôi xác nhận rằng đã đọc và hiểu <a href="" target="_blank">Điều khoản sử dụng</a> của Website.</small></span></label>
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <button type="button" class="btn btn-fill-out btn-block" onclick="dang_ky();">Sign up</button>
                           </div>
                        </form>
                        <div class="text-center">
                        </div>
                        <div class="form-note text-center">Bạn đã có tài khoản? <a href="<?php echo base_url(); ?>dang-nhap">Đăng nhập</a></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
	  
<script>
	function dang_ky(){
		var _cname = jQuery('#cname').val();
		var _cemail = jQuery('#cemail').val();
		var _cpassword = jQuery('#cpassword').val();
		var _cpassword_confirmation = jQuery('#cpassword_confirmation').val();
		if(_cname != "" && _cemail != "" && _cpassword != "" && cpassword_confirmation != "") {
                jQuery.ajax({
                    url : "<?php echo base_url(); ?>ajax_actions/dang_ky",
                    type : "post",
                    dataType:"text",
                    data : {
						cname: _cname,
						cemail: _cemail,
						cpassword: _cpassword,
						cpassword_confirmation: _cpassword_confirmation
                    },
					beforeSend: function(){
						jQuery('.ajax-loader').css("visibility", "visible");
					},
                    success : function (result){
						if(result=='1')
							location.href = "<?php echo base_url(); ?>";
						else if(result=='2')
							alert("Mật khẩu xác nhận không khớp.");
						else
							alert("Email này đã được sử dụng.");
                    },
					complete: function(){
						jQuery('.ajax-loader').css("visibility", "hidden");
					}
                });
        } else 
			alert("Vui lòng nhập đầy đủ thông tin.");
	}
</script> 		
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>