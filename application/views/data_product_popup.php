<style>
.slick-list .slick-slide {width: 17.95%;}
.slick-arrow {display:none;}
</style>
<div class="ajax_quick_view">
   <div class="row">
      <div class="col-lg-6 col-md-6 mb-4 mb-md-0">
         <div class="product-image">
            <div class="product_img_box">
               <img id="product_img" src="<?php echo base_url()?>upload/images_product/full_images/<?php echo $obj_detail['cimage']?>" data-zoom-enable="true" data-zoom-image="<?php echo base_url()?>upload/images_product/full_images/<?php echo $obj_detail['cimage']?>" alt="">
               <a href="#" class="product_img_zoom hide" title="Zoom">
               <span class="linearicons-zoom-in"></span>
               </a>
            </div>
            <div id="pr_item_gallery" class="product_gallery_item slick_slider slick-initialized slick-slider" data-slides-to-show="4" data-slides-to-scroll="1" data-infinite="false">
               <button class="slick-prev slick-arrow slick-disabled" aria-label="Previous" type="button" aria-disabled="true" style="">Previous</button>
               <div class="slick-list draggable">
                  <div class="slick-track">
					<div class="slick-slide" data-slick-index="0" aria-hidden="false">
                        <div>
                           <div class="item">
                              <a href="#" class="product_gallery_item active" data-image="<?php echo base_url()?>upload/images_product/full_images/<?php echo $obj_detail['cimage']?>" data-zoom-image="<?php echo base_url()?>upload/images_product/full_images/<?php echo $obj_detail['cimage']?>" tabindex="0">
                              <img src="<?php echo base_url()?>upload/images_product/full_images/<?php echo $obj_detail['cimage']?>" alt="">
                              </a>
                           </div>
                        </div>
                     </div>
					<?php $i=1; $list = get_img_by_product($obj_detail['nid']);
						foreach ($list as $img) { ?>
                     <div class="slick-slide" data-slick-index="<?php echo $i; ?>" aria-hidden="false">
                        <div>
                           <div class="item">
                              <a href="#" class="product_gallery_item" data-image="<?php echo base_url().'upload/images_product/sub_images/'.$img['cimage']; ?>" data-zoom-image="<?php echo base_url().'upload/images_product/sub_images/'.$img['cimage']; ?>" tabindex="<?php echo $i; ?>">
                              <img src="<?php echo base_url().'upload/images_product/sub_images/'.$img['cimage']; ?>" alt="">
                              </a>
                           </div>
                        </div>
                     </div>
                     <?php $i++;} ?>
                  </div>
               </div>
               <button class="slick-next slick-arrow" aria-label="Next" type="button" style="" aria-disabled="false">Next</button>
            </div>
         </div>
      </div>
      <div class="col-lg-6 col-md-6">
         <div class="pr_detail">
            <div class="product_description">
               <h4 class="product_title"><a href="#"><?php echo $obj_detail['cproducts']; ?></a></h4>
               <div class="product_price">
                  <span class="price product-sale-price-text"><?php echo number_format($obj_detail['fprice_sale']); ?>₫</span>
                  <del class="product-price-text" style="display: none">340,000₫</del>
                  <div class="on_sale" style="display: none">
                     <span class="on_sale_percentage_text">-0%</span> <span>Off</span>
                  </div>
               </div>
               <div class="clearfix"></div>
               <div class="pr_desc">
                  <p></p>
                  <?php echo $obj_detail['cdescription']; ?>
                  <p></p>
               </div>
               
            </div>
            <hr>
            <div class="cart_extra">
               <form class="add-to-cart-form" method="POST" action="">
                  
                  <div class="cart-product-quantity">
                     <div class="quantity">
                        <input type="button" value="-" class="minus" onclick="decrementValue()">
                        <input type="text" name="qty" value="1" title="Qty" class="qty" id="number">
                        <input type="button" value="+" class="plus" onclick="incrementValue()">
						&nbsp;
						<button class="btn btn-fill-out" type="button" onclick="add_cart_detail('<?php echo $obj_detail['nid']?>');"><i class="icon-basket-loaded"></i> Đặt hàng</button>
                     </div>
                  </div>
				  <?php /*
                  <br>
                  <div class="cart_btn hide">
                     <button class="btn btn-fill-out" type="button" onclick="add_cart_detail('<?php echo $obj_detail['nid']?>');"><i class="icon-basket-loaded"></i> Đặt hàng</button>
                     <a class="add_compare js-add-to-compare-button" data-url="#" href="#"><i class="icon-shuffle"></i></a>
                     <a class="add_wishlist js-add-to-wishlist-button" href="#" data-url=""><i class="icon-heart"></i></a>
                  </div>
                  <br>
                  <div class="success-message text-success text-center" style="display: none;">
                     <span></span>
                  </div>
                  <div class="error-message text-danger text-center" style="display: none;">
                     <span></span>
                  </div> */ ?>
               </form>
            </div>
            <hr>
            <ul class="product-meta product_description">
               <li id="product-sku" style="display: none">SKU: <span></span></li>
               <li>Category:<?php $cat = get_cat_product_by_id($obj_detail['nid_cat_products']); ?>
                  <a href="#"><?php echo $cat['ccat_products']; ?></a>                                          
               </li>
            </ul>
            <div class="product_share">
               <span>Share:</span>
               <ul class="social_icons">
                  <li><a href="#" target="_blank" title="Share on Facebook"><i class="ion-social-facebook"></i></a></li>
                  <li><a href="#" target="_blank" title="Share on Twitter"><i class="ion-social-twitter"></i></a></li>
                  <li><a href="#" title="Share on Linkedin" target="_blank"><i class="ion-social-linkedin"></i></a></li>
               </ul>
            </div>
         </div>
      </div>
   </div>
   <button title="Close (Esc)" type="button" class="mfp-close">×</button>
</div>