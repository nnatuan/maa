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
                     <h1>Đăng nhập</h1>
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
                     <li class="breadcrumb-item active">Login</li>
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
                           <h3>Đăng nhập</h3>
                        </div>
                        <form method="POST" action="">
                           <input type="hidden" name="_token" value="vW9I2wyT1nFATrMFbOYLVHF5mT1fFKEKkJYAHnIx">                             
                           <div class="form-group">
                              <input class="form-control" name="cemail" id="cemail" type="email" value="" placeholder="Your Email">
                           </div>
                           <div class="form-group">
                              <input class="form-control" type="password" name="cpassword" id="cpassword" placeholder="Password">
                           </div>
                           <div class="login_footer form-group">
                              <div class="chek-form">
                                 <div class="custome-checkbox">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember-me" value="1">
                                    <label class="form-check-label" for="remember-me"><span>Remember me</span></label>
                                 </div>
                              </div>
                              <a href="#">Quên mật khẩu?</a>
                           </div>
                           <div class="form-group">
                              <button type="button" class="btn btn-fill-out btn-block" onclick="dang_nhap();">Log in</button>
                           </div>
                        </form>
                        <div class="text-center">
                        </div>
                        <div class="form-note text-center">Bạn chưa có tài khoản? <a href="<?php echo base_url(); ?>dang-ky">Đăng ký</a></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>	  
	  
<script>
	function dang_nhap(){
		var _cemail = $('#cemail').val();
		var _cpassword = $('#cpassword').val();
		if(_cemail != "" && _cpassword != "") {
                $.ajax({
                    url : "<?php echo base_url(); ?>ajax_actions/dang_nhap",
                    type : "post",
                    dataType:"text",
                    data : {
                        cemail: _cemail,
						cpassword: _cpassword
                    },
					beforeSend: function(){
						$('.ajax-loader').css("visibility", "visible");
					},
                    success : function (result){
						if(result=='0')
							alert("Email hoặc mật khẩu không chính xác.");
						else if(result=='1')
							location.href = "<?php echo base_url(); ?>";
                    },
					complete: function(){
						$('.ajax-loader').css("visibility", "hidden");
					}
                });
        } else 
			alert("Email hoặc mật khẩu không chính xác.");
	}
</script> 		
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>