<?php 
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   ?>
<link media="all" type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>css/bootstrap-datepicker3.min.css">   
<div class="breadcrumb_section bg_gray">
         <div class="container">
            <div class="row align-items-center">
               <div class="col-md-6">
                  <div class="page-title">
                     <h1>Cập nhật thông tin</h1>
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
                     <li class="breadcrumb-item active">Cập nhật thông tin</li>
                  </ol>
               </div>
            </div>
         </div>
      </div>
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
                              <h3>Cập nhật thông tin</h3>
                           </div>
                           <div class="card-body">
                              <form method="POST" action="" accept-charset="UTF-8">
                                 <div class="form-group">
                                    <label for="name">Họ tên:</label>
                                    <input id="cname" type="text" class="form-control" name="name" value="<?php echo $member['cname']; ?>">
                                 </div>
                                 <div class="form-group ">
                                    <label for="cbirthday">Ngày sinh:</label>
                                    <input id="date_of_birth" type="text" class="form-control" name="cbirthday" value="<?php echo $member['cbirthday']; ?>" autocomplete="off">
                                 </div>
                                 <div class="form-group ">
                                    <label for="cemail">Email:</label>
                                    <input id="cemail" type="text" class="form-control" disabled="disabled" value="<?php echo $member['cemail']; ?>" name="cemail">
                                 </div>
                                 <div class="form-group ">
                                    <label for="cphone">Số điện thoại</label>
                                    <input type="text" class="form-control" name="cphone" id="cphone" placeholder="Phone" value="<?php echo $member['cphone']; ?>">
                                 </div>
								 <div class="form-group ">
                                    <label for="caddress">Địa chỉ</label>
                                    <input type="text" class="form-control" name="caddress" id="caddress" placeholder="Address" value="<?php echo $member['caddress']; ?>">
                                 </div>
                                 <div class="form-group text-center">
                                    <button type="button" class="btn btn-fill-out btn-sm" onclick="update_profile();">Update</button>
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
	function update_profile(){
		var _cname = $('#cname').val();
		var _cbirthday = $('#date_of_birth').val();
		var _cphone = $('#cphone').val();
		var _caddress = $('#caddress').val();
		if(_cname != "" && _cphone != "") {
                $.ajax({
                    url : "<?php echo base_url(); ?>ajax_actions/update_profile",
                    type : "post",
                    dataType:"text",
                    data : {
                        cname: _cname,
						cphone: _cphone,
						cbirthday: _cbirthday,
						caddress: _caddress
                    },
					beforeSend: function(){
						$('.ajax-loader').css("visibility", "visible");
					},
                    success : function (result){
						alert("Cập nhật thông tin thành công.");
						location.href = "<?php echo base_url(); ?>profile";
                    },
					complete: function(){
						$('.ajax-loader').css("visibility", "hidden");
					}
                });
		} else 
			alert("Họ tên và số điện thoại không được để trống.");
	}
</script>            
<?php $this->load->view('modules/mod_footer');?>
<?php $this->load->view('footer');?>