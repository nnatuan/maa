<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   ?> 
<link rel='stylesheet' id='wp-block-library-css'  href='<?php echo base_url(); ?>css/post-28.css?ver=1658777198' type='text/css' media='all' />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-latest.min.js "></script>
<script src="<?php echo base_url(); ?>js/jquery-ui.js"></script>
<link rel="stylesheet" href="<?php echo base_url(); ?>css/jquery-ui.css">
<script type="text/javascript">
   $(document).ready(function(){ 	
   	$( ".datepicker" ).datepicker({changeMonth: true,changeYear: true,dateFormat: 'dd/mm/yy',yearRange: '1900:2027'});
   	});
</script>
<script src="<?php echo base_url(); ?>js/jquery.timepicker.min.js"></script>
<link rel="stylesheet" href="<?php echo base_url(); ?>css/jquery.timepicker.css">
<script type="text/javascript">
   $(document).ready(function(){ 	
		$(".timepicker").keydown(function(e){
			e.preventDefault();
		});
		$(".timepicker").timepicker({ 'timeFormat': 'H:i a','step': 15, 'minTime': '11:00', 'maxTime': '21:00' }); 
   	});
</script>
<?php /*
<link rel="stylesheet" media="all" type="text/css" href="<?php echo base_url(); ?>css/jquery-ui.css" />
<link rel="stylesheet" media="all" type="text/css" href="<?php echo base_url(); ?>css/jquery-ui-timepicker-addon.css" />
<script src="<?php echo base_url(); ?>js/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript">
	$(document).ready(function(){ 	
		$('.datepicker').datetimepicker({
			dateFormat: "dd-mm-yy"
		});
   	});
</script>
*/ ?>

<style>
.form-control {
    margin-bottom: 15px;
}
.page-content {
    background: #000;
    padding: 15px 0;
}
input[type=text] {
	border: 1px solid #ced4da;
}
p .fa {color:#e972a4;margin-right:5px;text-align:center;width:30px;}
.footer-top {
    top: -25px;
}
.ui-datepicker .ui-datepicker-title select {
    display: inline-block;
}
</style>
<main class="site-main post-28 page type-page status-publish hentry" role="main">
         <div class="page-content">
            <div data-elementor-type="wp-page" data-elementor-id="28" class="elementor elementor-28">
               <div class="elementor-inner">
                  <div class="elementor-section-wrap">
                     <section class="elementor-section elementor-top-section elementor-element elementor-element-5c37326c elementor-section-stretched elementor-section-full_width elementor-section-height-default elementor-section-height-default" data-id="5c37326c" data-element_type="section" data-settings="{&quot;stretch_section&quot;:&quot;section-stretched&quot;,&quot;background_background&quot;:&quot;classic&quot;}" style="width: 1903px; left: 0px;padding-top:50px;padding-bottom:110px;">
					   <div class="elementor-container elementor-column-gap-no">
						  <div class="elementor-row">
							 <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-7cf9c859" data-id="7cf9c859" data-element_type="column">
								<div class="elementor-column-wrap elementor-element-populated">
								   <div class="elementor-widget-wrap">
										<div style="width:800px;margin:0 auto;padding:20px;background:#fff;border-radius:3px;">
											<div class="cb" style="margin-bottom:15px;">
											   <img src="<?php $cf = get_config_by_id(12); echo base_url().'upload/fb/'.$cf['cimage']; ?>" style="float:left;width:28%;border-radius:50%;" />
											   <div style="float:right;width:70%;padding-top: 15px;">
												   <?php $m = get_module_byid(6); echo $m['cnote']; ?>
											   </div>
											</div>
											<div>
												<form action="" method="post">
													<div class="row">
														<div class="col-md-6"><input class="form-control" placeholder="Full name" name="cname" type="text" required></div>
														<div class="col-md-6"><input class="form-control" placeholder="Email" name="cemail" type="text" required></div>
													</div>
													<div class="row">
														<div class="col-md-6"><input class="form-control" placeholder="Phone number" name="cphone" type="text" required></div>
														<div class="col-md-6">
															<div class="row">
																<div class="col-md-7">
																	<input class="form-control datepicker" placeholder="Date" name="cdate" type="text" required autocomplete="off">
																</div>	
																<div class="col-md-5">
																	<input class="form-control timepicker" placeholder="Time" name="ctime" type="text" required>
																</div>	
															</div>	
														</div>
													</div>
													<textarea class="form-control" placeholder="Note" name="cnote" style="height:80px;"></textarea>
													<div class="text-center"><input class="button" type="submit" name="btn_submit" value="SUBMIT"></div>
												</form>
											</div>
											<div style="height:15px;"></div>
											<center><em>Thank you very much for trusting and using our services.</em></center>
										</div>
								   </div>
								</div>
							 </div>
						  </div>
					   </div>
					</section>
				 </div>
               </div>
            </div>
            <div class="post-tags">
            </div>
         </div>
         <section id="comments" class="comments-area">
         </section>
         <!-- .comments-area -->
      </main>
      
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>