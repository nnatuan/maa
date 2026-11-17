<?php 
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   ?>
<script>
	function edit_name() {
		$('#view-name').css('display', 'none');
		$('#edit-name').css('display', 'block');
	}
	function cancel_edit_name() {
		$('#view-name').css('display', 'block');
		$('#edit-name').css('display', 'none');
		var old_name = $('#old-name').html();
		$("input[name='cname']").val(old_name);
		$("#name-empty").attr('style', 'opacity:0 !important');
	}
	function change_name() {
		var _cname = $("input[name='cname']").val();
		if(_cname == ""){
		    $("#name-empty").attr('style', 'opacity:1 !important');
		} else {
			$.post("<?php echo base_url().'thao-tac/update-name-member'?>", {
				cname: _cname
			}).done(function(data) {
				$('#old-name').html(_cname);
				$('#view-name').css('display', 'block');
				$('#edit-name').css('display', 'none');
				$("#name-empty").attr('style', 'opacity:0 !important');
			});
		}
	}
	
	function edit_phone() {
		$('#view-phone').css('display', 'none');
		$('#edit-phone').css('display', 'block');	
	}
	function cancel_edit_phone() {
		$('#view-phone').css('display', 'block');
		$('#edit-phone').css('display', 'none');
		var old_phone = $('#old-phone').html();
		$("input[name='cphone']").val(old_phone);
		$("#phone-empty").attr('style', 'opacity:0 !important');
	}
	function change_phone() {
		var _cphone = $("input[name='cphone']").val();
		if(_cphone == ""){
		    $("#phone-empty").attr('style', 'opacity:1 !important');
		} else {
			$.post("<?php echo base_url().'thao-tac/update-phone-member'?>", {
				cphone: _cphone
			}).done(function(data) {
				$('#old-phone').html(_cphone);
				$('#view-phone').css('display', 'block');
				$('#edit-phone').css('display', 'none');
				$("#phone-empty").attr('style', 'opacity:0 !important');
			});
		}
	}
	
	function edit_address() {
		$('#view-address').css('display', 'none');
		$('#edit-address').css('display', 'block');
	}
	function cancel_edit_address() {
		$('#view-address').css('display', 'block');
		$('#edit-address').css('display', 'none');
		var old_address = $('#old-address').html();
		$("input[name='caddress']").val(old_address);
		$("#address-empty").attr('style', 'opacity:0 !important');
	}
	function change_address() {
		var _caddress = $("input[name='caddress']").val();
		if(_caddress == ""){
		    $("#address-empty").attr('style', 'opacity:1 !important');
		} else {
			$.post("<?php echo base_url().'thao-tac/update-address-member'?>", {
				caddress: _caddress
			}).done(function(data) {
				$('#old-address').html(_caddress);
				$('#view-address').css('display', 'block');
				$('#edit-address').css('display', 'none');
				$("#address-empty").attr('style', 'opacity:0 !important');
			});
		}
	}
	
	function edit_pass() {
		$('#view-pass').css('display', 'none');
		$('#edit-pass').css('display', 'block');
		$("input[name='cpass_old']").val("");
		$("input[name='cpass_new']").val("");
		$("input[name='cpass_re']").val("");
	}
	function cancel_edit_pass() {
		$('#view-pass').css('display', 'block');
		$('#edit-pass').css('display', 'none');
		$("#pass-old-empty").attr('style', 'opacity:0 !important');
		$("#pass-new-empty").attr('style', 'opacity:0 !important');
		$("#pass-re-empty").attr('style', 'opacity:0 !important');
	}
	function change_pass() {
		var _cpass_old = $("input[name='cpass_old']").val();
		var _cpass_new = $("input[name='cpass_new']").val();
		var _cpass_re = $("input[name='cpass_re']").val();
		//alert (_cpassold);
		if (_cpass_old == "") {
		    $("#pass-old-empty").attr('style', 'opacity:1 !important');
			$("#pass-new-empty").attr('style', 'opacity:0 !important');
			$("#pass-re-empty").attr('style', 'opacity:0 !important');
			$("#pass-old-empty").html("Không được để trống!");
			return;
		} 
		if (_cpass_new == "") {
			$("#pass-old-empty").attr('style', 'opacity:0 !important');
		    $("#pass-new-empty").attr('style', 'opacity:1 !important');
			$("#pass-re-empty").attr('style', 'opacity:0 !important');
			return;
		}
		if (_cpass_re == "") {
			$("#pass-old-empty").attr('style', 'opacity:0 !important');
			$("#pass-new-empty").attr('style', 'opacity:0 !important');
		    $("#pass-re-empty").attr('style', 'opacity:1 !important');
			$("#pass-re-empty").html("Không được để trống!");
			return;
		}
		if (_cpass_new != _cpass_re) {
			$("#pass-old-empty").attr('style', 'opacity:0 !important');
			$("#pass-new-empty").attr('style', 'opacity:0 !important');
			$("#pass-re-empty").attr('style', 'opacity:1 !important');
			$("#pass-re-empty").html("Mật khẩu nhập lại không khớp!");
			return;
		}
		
			$.post("<?php echo base_url().'thao-tac/update-pass-member'?>", {
				cpass_old: _cpass_old,
				cpass_new: _cpass_new
			}).done(function(data) {
				//$('#old-pass').html(_cpass);
				$("#pass-new-empty").attr('style', 'opacity:0 !important');
				$("#pass-re-empty").attr('style', 'opacity:0 !important');
				if(data == "1") {
					$('#view-pass').css('display', 'block');
					$('#edit-pass').css('display', 'none');
					$("#pass-old-empty").attr('style', 'opacity:0 !important');
				} else {
					$("#pass-old-empty").attr('style', 'opacity:1 !important');
					$("#pass-old-empty").html("Mật khẩu hiện tại không đúng!");
				}
			});
	}
	
	function edit_gender() {
		$('#view-gender').css('display', 'none');
		$('#edit-gender').css('display', 'block');
	}
	function cancel_edit_gender() {
		$('#view-gender').css('display', 'block');
		$('#edit-gender').css('display', 'none');
		var old_gender = $('#old-gender').text();
		if (old_gender.trim() == "Anh") {
			//$("#anh").checked = true;
			//$("#anh").attr('checked', 'checked');
			$("#anh").prop("checked", true);
		} else if (old_gender.trim() == "Chị") {
			$("#chi").prop("checked", true);
		} else if (old_gender.trim() == "Cô") {
			$("#co").prop("checked", true);
		} else {
			$("#chu").prop("checked", true);
		}
	}
	function change_gender() {
		var _cgender = $("input[name='cgender']:checked").val();
		$.post("<?php echo base_url().'thao-tac/update-gender-member'?>", {
			cgender: _cgender
		}).done(function(data) {
			$('#view-gender').css('display', 'block');
			$('#edit-gender').css('display', 'none');
			if (_cgender == "0") {
				$("#anh").prop("checked", true);
				$("#old-gender").html("Anh");
			} else if (data == "1") {
				$("#chi").prop("checked", true);
				$("#old-gender").html("Chị");
			} else if (data == "2") {
				//$("#co").checked = true;
				$("#co").prop("checked", true);
				$("#old-gender").html("Cô");
			} else {
				$("#chu").prop("checked", true);
				$("#old-gender").html("Chú");	
			}		
		});		
	}	
</script>
<div class="breadcrumb_section bg_gray">
         <div class="container">
            <div class="row align-items-center">
               <div class="col-md-6">
                  <div class="page-title">
                     <h1>Thông tin tài khoản</h1>
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
                     <li class="breadcrumb-item active">Tài khoản</li>
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
                              <h3>Thông tin tài khoản</h3>
                           </div>
                           <div class="card-body">
                              <div class="form-group"><i class="fa fa-user"></i> Họ Tên: <strong><?php echo $member['cname']; ?></strong></div>
                              <div class="form-group"><i class="fa fa-calendar"></i> Ngày sinh: <strong><?php echo $member['cbirthday']; ?></strong></div>
                              <div class="form-group"><i class="fa fa-envelope"></i> Email: <strong><?php echo $member['cemail']; ?></strong></div>
                              <div class="form-group"><i class="fa fa-phone"></i> Số điện thoại: <strong><?php echo $member['cphone']; ?></strong></div>
							  <div class="form-group"><i class="fa fa-location-arrow"></i> Địa chỉ: <strong><?php echo $member['caddress']; ?></strong></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <?php $this->load->view('modules/mod_upload_avatar');?>
      </div>
<?php $this->load->view('modules/mod_footer');?>
<?php $this->load->view('footer');?>