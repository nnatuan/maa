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
                     <h1><?php echo $title; ?></h1>
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
                     <li class="breadcrumb-item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                        <meta itemprop="position" content="2" />
                        <a href="#" itemprop="item" title="Products">
                           Sản phẩm
                           <meta itemprop="name" content="Products" />
                        </a>
                     </li>
                     <li class="breadcrumb-item active"><?php echo $title; ?></li>
                  </ol>
               </div>
            </div>
         </div>
      </div>
      <div class="section">
         <form action="http://lanhien.vn/product-categories/tinh-dau-thien-nhien" method="GET">
            <input type="hidden" name="categories[]" value="25">
            <div class="container">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="row align-items-center mb-4 pb-1 hide">
                        <div class="col-12">
                           <div class="product_header">
                              <div class="product_header_left">
                                 <div class="custom_select">
                                    <select class="form-control form-control-sm submit-form-on-change" name="sort-by" id="sort-by" >
                                       <option value="default_sorting" >Default</option>
                                       <option value="date_asc" >Oldest</option>
                                       <option value="date_desc" >Newest</option>
                                       <option value="price_asc" >Price: low to high</option>
                                       <option value="price_desc" >Price: high to low</option>
                                       <option value="name_asc" >Name: A-Z</option>
                                       <option value="name_desc" >Name : Z-A</option>
                                       <option value="rating_asc" >Rating: low to high</option>
                                       <option value="rating_desc" >Rating: high to low</option>
                                    </select>
                                 </div>
                              </div>
                              <div class="product_header_right">
                                 <div class="products_view">
                                    <a href="javascript:void(0);" class="shorting_icon grid active"><i class="ti-view-grid"></i></a>
                                    <a href="javascript:void(0);" class="shorting_icon list"><i class="ti-layout-list-thumb"></i></a>
                                 </div>
                                 <div class="custom_select">
                                    <select class="form-control form-control-sm submit-form-on-change" name="num">
                                       <option value="">Showing</option>
                                       <option value="9" >9</option>
                                       <option value="12" >12</option>
                                       <option value="18" >18</option>
                                    </select>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="row shop_container grid">
						<?php 
					$obj_product = get_product_cat($ccode_cat, $nrow_per_page, $ncurr_page);
					foreach($obj_product as $product) {?>
                        <div class="col-md-3 col-6">
                           <div class="product">
                              
									  <span class="pr_flash" style="background-color: #5ADC39">Hot</span>
									  <div class="product_img">
										 <a href="#">
										 <img src="<?php echo base_url().'upload/images_product/resize_images/'.$product['cimage_resize']?>" alt="">
										 </a>
										 <div class="product_action_box">
											<ul class="list_none pr_action_btn">
											   <li class="add-to-cart"><a class="add-to-cart-button" href="javascript:void(0);" onclick="add_cart_detail('<?php echo $product['nid']?>');"><i class="icon-basket-loaded"></i>Thêm vào giỏ hàng</a></li>
											   <li><a href="javascript:void(0);" class="fancybox" rel="nofollow" onclick="show_detail('<?php echo $product['nid']; ?>');"><i class="icon-magnifier-add"></i></a></li>
											   <!--
												  <li><a class="js-add-to-wishlist-button" href="#" data-url="http://lanhien.vn/wishlist/214"><i class="icon-heart"></i></a></li>
												  !-->
											</ul>
										 </div>
									  </div>
									  <div class="product_info">
										 <h6 class="product_title"><a href="#"><?php echo $product['cproducts']; ?></a></h6>
										 <div class="product_price">
											<span class="price"><?php echo number_format($product['fprice_sale']); ?>₫</span>
										 </div>
										 <div class="rating_wrap">
											<div class="rating">
											   <div class="product_rate" style="width: 0%"></div>
											</div>
											<span class="rating_num">(0)</span>
										 </div>
										 <div class="pr_desc">
											<p></p>
											<p><span style="color:hsl(0,0%,0%);font-size:17px;"><span>Tinh dầu Bạc Hà 100% nguyên chất hoàn toàn từ tự nhiên. Không dùng hóa chất trong toàn bộ quá trình trồng, chiết xuất và bảo quản.&nbsp; &nbsp;&nbsp;</span></span></p>
											<p></p>
										 </div>
									  </div>
								
                           </div>
                        </div>
                        <?php } ?>
						<div class="mt-3 justify-content-center pagination_style1 hide">
                           <nav>
                              <ul class="pagination">
                                 <li class="page-item disabled" aria-disabled="true" aria-label="&laquo; Previous">
                                    <span class="page-link" aria-hidden="true">&lsaquo;</span>
                                 </li>
                                 <li class="page-item active" aria-current="page"><span class="page-link">1</span></li>
                                 <li class="page-item"><a class="page-link" href="http://lanhien.vn/product-categories/tinh-dau-thien-nhien?categories%5B0%5D=25&amp;page=2">2</a></li>
                                 <li class="page-item">
                                    <a class="page-link" href="http://lanhien.vn/product-categories/tinh-dau-thien-nhien?categories%5B0%5D=25&amp;page=2" rel="next" aria-label="Next &raquo;">&rsaquo;</a>
                                 </li>
                              </ul>
                           </nav>
                        </div>
                     </div>
                  </div>
                  
			   </div>
            </div>
         </form>
      </div>
      <!-- END SECTION SHOP -->        
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>