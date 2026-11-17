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
                     <h1>Đổi mật khẩu</h1>
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
                     <li class="breadcrumb-item active">Đổi mật khẩu</li>
                  </ol>
               </div>
            </div>
         </div>
      </div>
      <!-- START MAIN CONTENT -->   
		<div class="main_content crop-avatar">
         <!-- START SECTION SHOP -->
         <div class="section">
            <div class="container">
               <div class="row">
                  <div class="col-lg-3 col-md-4">
                     <?php $this->load->view('modules/mod_left_profile');?>
                  </div>
                  <div class="col-lg-9 col-md-8">
                     <div class="dashboard_content">
                        <div class="card">
                           <div class="card-header">
                              <h3>Thay đổi mật khẩu</h3>
                           </div>
                           <div class="card-body">
                              <form method="POST" action="" accept-charset="UTF-8">
                                 <div class="form-group ">
                                    <label for="old_password">Mật khẩu hiện tại:</label>
                                    <input type="password" class="form-control" name="cpassword_old" id="cpassword_old"
                                       placeholder="Current Password">
                                 </div>
                                 <div class="form-group ">
                                    <label for="password">Mật khẩu mới:</label>
                                    <input type="password" class="form-control" name="cpassword" id="cpassword"
                                       placeholder="New Password">
                                 </div>
                                 <div class="form-group ">
                                    <label for="password_confirmation">Mật khẩu xác nhận:</label>
                                    <input type="password" class="form-control" name="cpassword_confirmation" id="cpassword_confirmation"
                                       placeholder="Password Confirmation">
                                 </div>
                                 <div class="form-group text-center">
                                    <button type="button" class="btn btn-fill-out btn-sm" onclick="update_pass();">Cập nhật</button>
                                 </div>
                              </form>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <?php $this->load->view('modules/mod_upload_avatar');?>
      </div>
<script>
	function update_pass(){
		var _cpassword_old = $('#cpassword_old').val();
		var _cpassword = $('#cpassword').val();
		var _cpassword_confirmation = $('#cpassword_confirmation').val();
		if(_cpassword_old != "" && _cpassword != "" && _cpassword_confirmation != "") {
                $.ajax({
                    url : "<?php echo base_url(); ?>ajax_actions/update_pass",
                    type : "post",
                    dataType:"text",
                    data : {
                        cpassword_old: _cpassword_old,
						cpassword: _cpassword,
						cpassword_confirmation: _cpassword_confirmation
                    },
					beforeSend: function(){
						$('.ajax-loader').css("visibility", "visible");
					},
                    success : function (result){
						if(result=='0')
							alert("Mật khẩu cũ không chính xác.");
						else if(result=='2')
							alert("Mật khẩu xác nhận không khớp.");
						else {
							alert("Cập nhật mật khẩu thành công.");
							location.href = "<?php echo base_url(); ?>profile";
						}
                    },
					complete: function(){
						$('.ajax-loader').css("visibility", "hidden");
					}
                });
        } else 
			alert("Vui lòng cung cấp đầy đủ thông tin.");
	}
</script>            
<?php $this->load->view('modules/mod_footer');?>
<?php $this->load->view('footer');?>