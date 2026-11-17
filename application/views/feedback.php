<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   ?>  
<div class="wrap-breadcrumb">
                              <div class="clearfix container">
                                 <div class="row main-header">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5  ">
                                       <ol class="breadcrumb breadcrumb-arrows">
                                          <li><a href="<?php echo base_url(); ?>" target="_self">Trang chủ</a></li>
                                          <li class="active"><span>Feedback</span></li>
                                       </ol>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <section id="content" class="clearfix container">
                              <div class="row list-article-content">
                                 <?php $list = get_news_all_by_cat(2); 
								foreach ($list as $data) { ?>
									<div class="col-md-6" style="margin-bottom: 30px;">
									   <div style="border-radius:5px;padding:20px;height: 100%;">
											<div class="cb" style="margin-bottom: 20px;">
												<img src="<?php echo base_url().'upload/image_article/'.$data['cimage_thumb']; ?>" style="width:80px;height: 80px;border-radius:50%;float:left;margin-right:10px;">
												<h2 style="margin-bottom: 0;padding-top: 10px;"><strong><?php echo $data['ctitle']; ?></strong></h2>
												<?php echo $data['cshort_content']; ?>
											</div>
											<div><?php echo $data['ccontent']; ?></div>
											<div class="row">

											  <div id="gallery<?php echo $data["nid"]?>">
												<?php $obj_img = get_img_by_article($data['nid']); 
												foreach ($obj_img as $img) { ?>
												<img src="<?php echo base_url().'upload/image_article/sub_images/'. $img["cimage"]; ?>">
												<?php } ?>
												</div>
											</div>
									   </div>
									</div>  
									<?php } ?>
                                    
                              </div>
                           </section>
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>