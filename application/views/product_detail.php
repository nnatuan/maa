<?php 
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   ?>
<link href="<?php echo base_url(); ?>css/page_87185821e4356360cdd010e27349aca5_v1.css?16733331499630" type="text/css"  rel="stylesheet" />  
<style>
.page-wrapper {
    padding-bottom: 0;
}	
</style>
<div class="box-product-banner">
            <div class="container--resize dark-background">
               <nav itemscope itemtype="http://schema.org/BreadcrumbList" class="breadcrumbs">
                  <span itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                     <a itemprop="item" href="/" title="Pagrindinis" class="breadcrumbs__link" id="breadcrumb_0"  itemref="bx_breadcrumb_1"><span itemprop="name">Trang chủ</span></a>
                     <meta itemprop="position" content="1" />
                  </span>
                  <span itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                     <a itemprop="item" href="#" title="Katalogas" class="breadcrumbs__link" id="breadcrumb_1" ><span itemprop="name">Sản phẩm</span></a>
                     <meta itemprop="position" content="2" />
                  </span>
                  <span itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                     <a title=""  itemprop="item" href="/catalog/immune-booster/" class="breadcrumbs__text active"><span itemprop="name"><?php echo $title; ?></span></a>
                     <meta itemprop="position" content="3" />
                  </span>
               </nav>
            </div>
            <div class="product-view" data-id="971">
               <div class="container--resize product-view__container">
                  <div class="product-view__pictures-block img-wrapper product-971">
                     <div class="product-view__pictures-container">
                        <div class="swiper-container product-view__swiper-container">
                           <div class="swiper-wrapper">
                              <div class="swiper-slide product-view__swiper-slide">
                                 <img src="<?php echo base_url()?>upload/images_product/full_images/<?php echo $obj_detail['cimage']?>" alt="">
                              </div>
							  <?php $list = get_img_by_product($obj_detail['nid']);
									foreach ($list as $img) { ?>
                              <div class="swiper-slide product-view__swiper-slide">
                                 <img src="<?php echo base_url().'upload/images_product/sub_images/'.$img['cimage']; ?>" alt="">
                              </div>
							  <?php } ?>
                           </div>
                        </div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>
                        <div class="product-view__main-picture">
                           <div class="swiper-container product-view__main-picture-container">
                              <div class="swiper-wrapper">
                                 <a href="<?php echo base_url()?>upload/images_product/full_images/<?php echo $obj_detail['cimage']?>"
                                    class="swiper-slide product-view__main-swiper-slide"
                                    rel="gallerymain">
                                 <img src="<?php echo base_url()?>upload/images_product/full_images/<?php echo $obj_detail['cimage']?>"
                                    alt="">
                                 </a>
								 <?php $list = get_img_by_product($obj_detail['nid']);
									foreach ($list as $img) { ?>
                                 <a href="<?php echo base_url().'upload/images_product/sub_images/'.$img['cimage']; ?>" class="swiper-slide product-view__main-swiper-slide"
                                    rel="gallerymain">
                                 <img src="<?php echo base_url().'upload/images_product/sub_images/'.$img['cimage']; ?>" alt="">
                                 </a>
								 <?php } ?>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="product-carousel-wrapper product-view__info-block">
                     <div class="product-view-info">
                        <div class="product-view-info__badge-wrap">
                        </div>
                        <div class="product-view-info__heading">
                           <div class="product-view-info__header">
                              <h1 class="text-title">
                                 <?php echo $title; ?>                               
                              </h1>
                   
                           </div>
                          
                        </div>
                        <div class="rating">
                           <ul class="stars">
                              <li>
                                 <img src="https://www.herbalife.lt/local/templates/herbalife-official-new/images/required/star-full.svg"
                                    alt="">
                              </li>
                              <li>
                                 <img src="https://www.herbalife.lt/local/templates/herbalife-official-new/images/required/star-full.svg"
                                    alt="">
                              </li>
                              <li>
                                 <img src="https://www.herbalife.lt/local/templates/herbalife-official-new/images/required/star-full.svg"
                                    alt="">
                              </li>
                              <li>
                                 <img src="https://www.herbalife.lt/local/templates/herbalife-official-new/images/required/star-full.svg"
                                    alt="">
                              </li>
                              <li>
                                 <img src="https://www.herbalife.lt/local/templates/herbalife-official-new/images/required/star-full.svg"
                                    alt="">
                              </li>
                           </ul>
                           <span class="feedback-count">8 đánh giá</span>
                           <span class="articul">#2237</span>
                           <div class="product-view-info__heading">
                              <a href="#popup-social-block" class="sharing sharing--mobile fancybox">
                              <img src="https://www.herbalife.lt/local/templates/herbalife-official-new/images/required/icon-share-mob.svg" alt="">
                              </a>
                           </div>
                        </div>
                        <div class="mobile-product-slider">
                           <div class="swiper-container js-init-detail-product-slider">
                              <div class="swiper-wrapper">
                                 <div class="swiper-slide">
                                    <img src="<?php echo base_url()?>upload/images_product/full_images/<?php echo $obj_detail['cimage']?>"
                                       alt="">
                                 </div>
								 <?php $list = get_img_by_product($obj_detail['nid']);
									foreach ($list as $img) { ?>
                                 <div class="swiper-slide">
                                    <img src="<?php echo base_url().'upload/images_product/sub_images/'.$img['cimage']; ?>" alt="">
                                 </div>
								 <?php } ?>
                              </div>
                              <div class="swiper-pagination"></div>
                           </div>
                        </div>
                        <div class="description display-desktop">
                           <h3 class="description__header">Cam kết chất lượng sản phẩm</h3>
                           <div class="description__text">
                              <ul>
                                 <li>Nguồn gốc 100% từ thiên nhiên</li>
                                 <li>Thương hiệu uy tín</li>
                                 <li>Giá tốt trên thị trường</li>
                                 <li>Sản phẩm không hóa chất</li>
                              </ul>
                           </div>
                        </div>
                        <div class="price_section">
                           <div class="price_count_button" style="">
                              <div class="price_value_button">
                                 <div class="price_value">
                                    <?php if($obj_detail['fprice']>0) echo number_format($obj_detail['fprice']).' ₫'; else echo "Liên hệ"; ?>                                        
                                 </div>
                              </div>
                              <div class="count_buy_button">
                                 <div class="count_value">
                                    <div class="count_button minus_button unselectable">&ndash;</div>
                                    <input type="text" id="number" class="input_count_button" value="1" minlength="1" maxlength="2">
                                    <div class="count_button plus_button unselectable">+</div>
                                 </div>
                                 <div class="buy-block display-desktop">
                                    <a href="javascript:void(0);" onclick="add_cart_detail('<?php echo $obj_detail['nid']?>');" class="buy-button js-add-cart">
                                    <span>Đặt hàng ngay</span>
                                    </a>
                                 </div>
                              </div>
                           </div>
                           <div class="price_disclaimer">
                              <div class="price_disclaimer_icon">
                                 <svg width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="18" cy="18" r="17.5" stroke="#78BE20"/>
                                    <path d="M16.1248 8.99611C16.0572 7.91442 16.9162 7 18 7C19.0838 7 19.9428 7.91442 19.8752 8.99611L19.0624 22.0019C19.0273 22.563 18.5621 23 18 23C17.4379 23 16.9727 22.563 16.9376 22.0019L16.1248 8.99611Z" fill="#78BE20"/>
                                    <circle cx="18" cy="27" r="2" fill="#78BE20"/>
                                 </svg>
                              </div>
                              <div class="price_disclaimer_text"><?php echo $obj_detail['cdescription']; ?></div>
                           </div>
                        </div>
                        <div class="buy-block display-mobile">
                           <a href="javascript:void(0);" onclick="add_cart_detail('<?php echo $obj_detail['nid']?>');" class="buy-button js-add-cart">
                           <span>Đặt hàng ngay</span>
                           </a>
                        </div>
                        <div class="block-link block-link__wrap">
                           <a class="block-link__section" href="#">
                              <img src="<?php echo base_url(); ?>images/call.png" alt="" class="block-link__picture">
                              <div class="block-link__name">
                                 Gọi điện tư vấn                                    
                              </div>
                              <span class="block-link__icon"></span>
                           </a>
                           <a class="block-link__section" href="#">
                              <img src="<?php echo base_url(); ?>images/chat.png" alt="" class="block-link__picture">
                              <div class="block-link__name">
                                 Chat Zalo                                    
                              </div>
                              <span class="block-link__icon"></span>
                           </a>
                        </div>
                        <div class="description display-mobile">
                           <h2 class="description__header">Cam kết chất lượng sản phẩm</h2>
                           <div class="description__text">
                              <ul>
                                 <li>Nguồn gốc 100% từ thiên nhiên</li>
                                 <li>Thương hiệu uy tín</li>
                                 <li>Giá tốt trên thị trường</li>
                                 <li>Sản phẩm không hóa chất</li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>