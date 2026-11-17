<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3><small></small></h3>
						</div>

						<div class="title_right">
							
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 ">
							<div class="x_panel">
								<div class="x_title">
									<h2>Thêm mới / Chỉnh sửa</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<form name='form_main' method="post" action="<?php echo $link_page; ?>" enctype="multipart/form-data">
										<ul class="nav nav-tabs bar_tabs" id="myTab" role="tablist">
										  <li class="nav-item">
											<a class="nav-link active" id="" data-toggle="tab" href="#tab1" role="tab" aria-controls="home" aria-selected="true">Tiếng Việt</a>
										  </li>
										  <li class="nav-item">
											<a class="nav-link" id="" data-toggle="tab" href="#tab2" role="tab" aria-controls="profile" aria-selected="false">Tiếng Anh</a>
										  </li>
										</ul>
										<div class="tab-content" id="myTabContent">
											<div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1">
												<div class="item form-group">
													<label class="col-form-label col-md-2 col-sm-2 label-align">Tiêu đề <span class="required">*</span></label>
													<div class="col-md-8 col-sm-8 ">
														<input type="text" name="txt_cmodule" value="<?php echo $txt_cmodule; ?>" required="required" class="form-control ">
													</div>
												</div>
												<div class="item form-group">
													<label class="col-form-label col-md-2 col-sm-2 label-align">Nội dung <span class="required">*</span></label>
													<div class="col-md-8 col-sm-8 ">
														<textarea class="form-control" id="editor1" name="txt_cnote"><?php echo $txt_cnote; ?></textarea>
													</div>
												</div>
												<div class="item form-group">
													<label class="col-form-label col-md-2 col-sm-2 label-align">Link </label>
													<div class="col-md-8 col-sm-8 ">
														<input type="text" name="clink" value="<?php echo $clink; ?>" placeholder="Nhập đường dẫn nếu có" class="form-control ">
													</div>
												</div>										
												<div class="item form-group">
													<?php $note = ''; 
													if($nid==2) 
														$note = '<br><span style="color:red;">(1920x300)</span>';
													elseif($nid==11) 
														$note = '<br><span style="color:red;">(500x1000)</span>';
													elseif($nid==12) 
														$note = '<br><span style="color:red;">(1920x1080)</span>';	
													?>
													<label class="col-form-label col-md-2 col-sm-2 label-align">Image/Background <?php echo $note; ?></label>
													<div class="col-md-8 col-sm-8 ">
														<input name="txt_cthumb_img" type="file" id="txt_cimage" value ="" size="25" style="width:400px;"/>
														 <br>
														 <?php if($txt_cthumb_img != ''): ?>
														 <img style="margin-top:10px" width="200" src="<?php echo $fr_img.'upload/images_module/'.$txt_cthumb_img; ?>"/>
														 <?php endif; ?>
													</div>
												</div>
											</div>
										   <div class="tab-pane fade " id="tab2" role="tabpanel" aria-labelledby="tab2">
												<div class="item form-group">
													<label class="col-form-label col-md-2 col-sm-2 label-align">Nội dung <span class="required">*</span></label>
													<div class="col-md-8 col-sm-8 ">
														<textarea class="form-control" id="editor2" name="eng_cnote"><?php echo $eng_cnote; ?></textarea>
													</div>
												</div>
											</div>
										</div>	
										
										
										
										<div class="ln_solid"></div>
										<div class="item form-group">
											<div class="col-md-8 col-sm-8 offset-md-2">
												<button type="button" class="btn btn-primary" name="btn_submit" value ="<?php echo $btn_update; ?>" 
													onclick ="js_SetSubmitButtonClick(this.form, this.name);">Xác nhận</button>
												<button class="btn btn-danger" type="button" name="btn_cancel" value ="<?php echo $btn_cancel; ?>" 
													onclick ="location.href='<?php echo $link_cancel; ?> '">Quay về</button>
											</div>
										</div>
										<input name="hidden_nid" type="hidden" value = "<?php echo $nid; ?>"  />
									  <input name="hidden_event" type="hidden" value = "<?php echo $event; ?>"  />
									  <input type="hidden" name="hidden_button"  value = "" />
									  <input name="hidden_image_old" type="hidden" value = "<?php echo $txt_cthumb_img; ?>"  />
									</form>
								</div>
							</div>
						</div>
					</div>

					
				</div>
			</div>
			<!-- /page content -->