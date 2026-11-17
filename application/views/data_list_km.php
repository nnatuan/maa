<?php
$ncurr_page = $_POST['curr_page']; 
$nrow_per_page = $_POST['row_per_page']; 
$total_row = $_POST['total_row']; 
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
$obj_product = get_product_km($nrow_per_page, $ncurr_page);
				foreach($obj_product as $product) {
					if(isset($obj_color_list[0]['nid'])){
											$href=base_url().$product['ccode_sec'].'/'.$product['ccode_cat'].'/'.$product['ccode'].'-'.$obj_color_list[0]['nid'];
											$fprice = $obj_color_list[0]['fprice'];
											$fprice_sale = $obj_color_list[0]['fprice_sale'];
										} else {
											$href=base_url().$product['ccode_sec'].'/'.$product['ccode_cat'].'/'.$product['ccode'];
											$fprice = $product['fprice'];
											$fprice_sale = $product['fprice_sale'];
										}
					?>
		<div class="item-pro">
                              <div class="box box-image">
                                 <a href="<?php echo $href ?>" title="<?php echo $product['cproducts']?>"><img src="<?php echo base_url().'upload/images_product/resize_images/'.$product['cimage_resize']?>" alt="<?php echo $product['cproducts']?>" title="<?php echo $product['cproducts']?>" class="img-resize"></a>
                              </div>
                              <div class="box box-title-item">
                                 <h3 class="box mg0">
                                    <a href="<?php echo $href ?>" class="title-post-item" title="<?php echo $product['cproducts']?>"><?php echo $product['cproducts']?></a>
                                 </h3>
                                 <div class="box box-price">
									<div class="box-price">
										<?php if ($fprice_sale < $fprice) { ?>
                                                <span class="price-sale"><?php echo number_format($fprice_sale); ?>đ</span>
                                                <span class="price-old"><?php echo number_format($fprice); ?>đ</span>
												<span class="percent-discount">(-<?php echo number_format(round(($fprice-$fprice_sale)/$fprice*100+0.4))?>%)</span>
												<?php } else { ?>
                                                <span class="price-sale"><?php echo number_format($fprice); ?>đ</span>
												<?php } ?>
                                    </div>
                                 </div>
                              </div>
                           </div>
<?php } ?>
							