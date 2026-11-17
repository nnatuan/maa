<?php
$ncurr_page = $_POST['curr_page']; 
$nrow_per_page = $_POST['row_per_page']; 
$total_row = $_POST['total_row']; 
$ccode_sec = $_POST['ccode_sec'];
if($nrow_per_page >= $total_row) { ?>
<script language="javascript">
    function hidebutton(){
         $('#viewmore').css({'display': 'none'});
    }
	hidebutton();
</script>  
<?php } else { ?>
<script language="javascript">
    function changebutton(){
         $('#viewmore').html('Xem thêm ' + <?php echo ($total_row-$nrow_per_page); ?> + ' sản phẩm&nbsp;&nbsp;<i class="fa fa-caret-down" aria-hidden="true"></i>');
    }
	changebutton();
</script>  
<?php }
$obj_product = get_product_sec($ccode_sec, $nrow_per_page, $ncurr_page , 6);
				foreach($obj_product as $product) { ?>
<div class="col-md-2 col-xs-6">				
	<div class="item-product">
						<a href="<?php echo base_url(). $ccode_sec . '/' . $product['ccode_cat'] . '/' . $product['ccode']; ?>"><img src="<?php echo base_url().'upload/images_product/resize_images/'.$product['cimage_resize']?>" alt="<?php echo $product['cproducts']?>"/></a>
						<div class="info-product">
							<div class="row">
								<div class="col-md-12 pdr0">
									<?php if ($product['fprice_sale'] < $product['fprice'] && $product['ncheck'] == 1) { ?>
									<span class="price">
										<?php echo number_format($product['fprice_sale']); ?>₫
									</span>
									<span class="price-old">
										<del><?php echo number_format($product['fprice']); ?>₫</del>
									</span>
									<?php } else { ?>
									<span class="price">
										<?php echo number_format($product['fprice']); ?>₫
									</span>
									<?php } ?>
								</div>
								<div class="col-md-2 pdl0 hide">
									<a class="add-cart" onclick="add_cart('<?php echo $product['nid']?>',1);"><i class="fa fa-cart-arrow-down" aria-hidden="true" style="font-size:20px;"></i></a>
								</div>
							</div>
							<h6 class="title-item"><a href="<?php echo base_url(). $ccode_sec . '/' . $product['ccode_cat'] . '/' . $product['ccode']; ?>"><?php echo $product['cproducts']?></a></h6>
							<div class="text-center">
								<a class="add-cart" onclick="add_cart('<?php echo $product['nid']?>',1);">Mua ngay</a>
							</div>
						</div>
						
						<?php if ($product['fprice_sale'] < $product['fprice'] && $product['ncheck'] == 1) { ?>
						<div class="shopee-item-card__badge-wrapper"><div class="shopee-badge shopee-badge--fixed-width shopee-badge--promotion"><div class="shopee-badge--promotion__label-wrapper shopee-badge--promotion__label-wrapper--vi-VN"><span class="percent"><?php echo number_format(round(($product['fprice']-$product['fprice_sale'])/$product['fprice']*100+0.4))?>%</span><span class="shopee-badge--promotion__label-wrapper__off-label shopee-badge--promotion__label-wrapper__off-label--vi-VN">giảm</span></div></div></div>
						<?php } ?>
					</div>	
</div>					
<?php } ?>
							