<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   //$this->load->view('modules/mod_header');
   ?> 
<div class="main-full">
         <section id="page-banner">
            <div class="thumbCover_30">
               <img class="lazy lazy-loaded" data-lazy-type="image" data-lazy-src="https://phuclong.com.vn/uploads/category/3366d8e73e57be-banner_1920576.png" alt="" 
                  src="https://phuclong.com.vn/uploads/category/3366d8e73e57be-banner_1920576.png">
            </div>
         </section>
         <section class="page-heading">
            <div class="container">
               <ul class="breadcrumb" aria-label="breadcrumbs">
                  <li><a href="<?php echo base_url(); ?>">Trang chủ</a></li>
                  <li class="active"><a href="#">Sản phẩm</a></li>
               </ul>
               <h1>Sản phẩm</h1>
               <div class="separator-icon gray"></div>
               <ul class="menu">
				<?php $i=1; $list = get_cat_product_bymat(1);
				foreach ($list as $data) { ?>
                  <li class="<?php if($i==1) echo 'active'; ?>">
                     <a href="<?php echo base_url().'san-pham/'.$data['ccode']; ?>" class="dish text-uppercase"><?php echo $data['ccat_products']; ?></a>
                  </li>
				<?php $i++; } ?>
               </ul>
            </div>
         </section>
         <section class="category-toolbar">
            <div class="container">
               <div class="row">
                  <form id="category_filter" class="form-inline" action="">
					<div class="col-xs-12  col-md-6 col-sm-6 ">
                        <label for="product-name"> Tìm kiếm</label>
                        <div class="input-group add-on" style="width: 86%;">
                           <input 
                              class="form-control" 
                              placeholder="Tên sản phẩm" 
                              name="keyword" 
                              id="srch-term" 
                              type="text"
                              value = ''
                              >
                           <div class="input-group-btn">
                              <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                           </div>
                        </div>
                     </div>
                     <div class="col-xs-12  col-md-6 col-sm-6 ">
                        <label for="price-range">Theo giá</label>
                        <select name="price-range" class="selectpicker" style="width: 86%;">
                           <option selected value="">Không lựa chọn</option>
                           <option  value="asc">Từ thấp đến cao</option>
                           <option  value="desc">Từ cao đến thấp</option>
                        </select>
                     </div>
                     
                  </form>
               </div>
            </div>
         </section>
         <div class="grid-item category-drink">
            <div class="container">
               <div class="row">
					<?php $cat = get_cat_first(); 
					$ccode_cat = $cat['ccode'];
					$product = get_product_special_by_cat($cat['nid']); ?>
                  <div class=" sticky col-sm-6 col-xs-12  product-item ">
                     <a class="item-wrapper">
                        <span class="badge new">Món mới</span>
                        <img class="item-img img-responsive center-block lazy" data-original="<?php echo base_url().'upload/images_product/full_images/'.$product['cimage']?>" alt="<?php echo $product['cproducts']; ?>">
                        <div class="item-info">
                           <div class="item-name"><?php echo $product['cproducts']; ?></div>
                           <div class="item-desc hide">
                              Ice Shaken Lychee Tea
                           </div>
                           <div class="item-price"><?php if($product['fprice']!="") echo number_format($product['fprice']).' đ'; else echo "Liên hệ"; ?></div>
                           <button class="btn btn-default add-to-cart" data-id="630"
                              data-name="Trà Vải Tươi Dầm"
                              data-price="60000">Đặt hàng</button>
                        </div>
                     </a>
                  </div>
				  <?php 
				  $obj_product = get_product_cat($ccode_cat, $nrow_per_page, $ncurr_page);
					foreach($obj_product as $product) {?>
                  <div class=" col-sm-3 col-xs-6  product-item ">
                     <a class="item-wrapper">
                        <span class="badge new">Món mới</span>
                        <img class="item-img img-responsive center-block lazy" data-original="<?php echo base_url().'upload/images_product/full_images/'.$product['cimage']?>" alt="<?php echo $product['cproducts']; ?>" src="<?php echo base_url().'upload/images_product/full_images/'.$product['cimage']?>" style="">
                        <div class="item-info">
                           <div class="item-name"><?php echo $product['cproducts']; ?></div>
                           <div class="item-desc">
                           </div>
                           <div class="item-price"><?php if($product['fprice']!="") echo number_format($product['fprice']).' đ'; else echo "Liên hệ"; ?></div>
                           <button class="btn btn-default add-to-cart" data-id="661" data-name="Caramen chảy" data-price="49091">Đặt hàng</button>
                        </div>
                     </a>
                  </div>
					<?php } ?>
               </div>
            </div>
         </div>
         <div class="item-menu-right">
         </div>
      </div>
           
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>