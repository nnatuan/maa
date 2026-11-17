<section class="page-title">
			<div class="desktop" style="position:absolute;right:0;top:0;width:50%;height: 100%;z-index:9;">
				<img src="<?php echo base_url().'images/center.jpg'; ?>" style="width: 100%;height: 100%;object-fit: cover;">
			</div>
            <div class="swiper-container slider-main">
               <div class="swiper-wrapper">
                  <div class="swiper-slide">
                     <div class="slider-st1">
						<?php $m = get_module_byid(1); ?>
                        <div class="overlay" style="background:url('<?php echo base_url().'upload/images_module/'.$m['cimage']; ?>');"></div>
                        <div class="container">
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="box-slider">
                                    <div class="content-box">
										<?php echo $m['cnote']; ?>
										<?php /*
                                       <h1 class="title">CYbox nft collectionS for everyone</h1>
                                       <p class="sub-title">Nulla ornare sagittis placerat nunc sit tempus enim. 
                                          Accumsan pellentesque ipsum felis tristique at proin vel turpis.
                                       </p> */ ?>
                                       <div class="wrap-btn">
                                          <a href="<?php echo base_url(); ?>#register" class="tf-button btn-effect">
                                          <span class="boder-fade"></span>                                     
                                          <span class="effect">REGISTER / ĐĂNG KÝ&nbsp;&nbsp;<i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="image">
                                       <img src="<?php $m = get_module_byid(2); echo base_url().'upload/images_module/'.$m['cimage']; ?>" alt="">
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
				  <?php /*
                  <div class="swiper-slide">
                     <div class="slider-st2">
                        <?php $m = get_module_byid(3); ?>
                        <div class="overlay" style="background:url('<?php echo base_url().'upload/images_module/'.$m['cimage']; ?>');"></div>
                        <div class="container">
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="box-slider">
                                    <div class="content-box">
                                       <?php echo $m['cnote']; ?>
                                       <div class="wrap-btn style2">
                                          <a href="#" class="tf-button-st2 btn-effect" data-toggle="modal" data-target="#popup_bid"><span class="effect">connect wallet</span></a>
                                          <a href="https://www.youtube.com/watch?v=i7EMACWuErA" class="tf-button btn-effect popup-youtube">
                                          <span class="boder-fade"></span>                                     
                                          <span class="effect">watch video</span>
                                          </a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  */ ?>
               </div>
               <div class="btn-next-main"><i class="far fa-angle-right"></i></div>
               <div class="btn-prev-main"><i class="far fa-angle-left"></i></div>
               <div class="swiper-pagination"></div>
            </div>
         </section>
		