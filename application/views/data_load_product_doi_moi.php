<?php
$nid_product = $_POST['nid_product'];  
$nid_product_moi = $_POST['nid_product_moi']; 
$ctype = $_POST['ctype']; 
$product = get_product_by_id($nid_product);
$product_moi = get_product_by_id($nid_product_moi);
$tro_gia = 0;
		$bu_chenh_lech = "";
		if ($product_moi['fprice_sale'] < $product_moi['fprice'])
			$price = $product_moi['fprice_sale'];
		else
			$price = $product_moi['fprice'];
		if($product_moi['ctro_gia']!="")
			$tro_gia = $product_moi['ctro_gia'];
		
		if($product['cgia_loai_'.$ctype]!="") {
			$bu_chenh_lech = abs($product['cgia_loai_'.$ctype] + $tro_gia - $price);
		}	
?>
<img src="<?php echo base_url().'upload/images_product/resize_images/'.$product_moi['cimage_resize']?>"> 
                           <p>Tên sản phẩm:&nbsp;<strong><?php echo $product_moi['cproducts']; ?></strong></p>
						   <div class="box-left__box-price"><p>Giá máy mới:</p> <p class="box-left__price_new_phone"><?php echo number_format($price).' ₫'; ?></p></div> <!----> 
						   <div class="box-left__box-price"><p>Trợ giá:</p> <p class="box-left__price_new_phone"><?php echo number_format($tro_gia).' ₫'; ?></p></div> 
						   <div class="box-left__box-price"><p>Giá máy cũ thu lại:</p> <p class="box-left__price_old_phone"><?php if($product['cgia_loai_'.$ctype]!="") echo number_format($product['cgia_loai_'.$ctype]).' ₫'; else echo "Liên hệ"; ?></p></div> 
						   <div class="box-left__box-price">
						   <?php if($bu_chenh_lech != "") { ?>
						   <p><?php if($bu_chenh_lech>0) echo "Bạn được nhận lại"; else "Bạn cần trả thêm"; ?>:</p> 
						   <p class="box-left__price"><?php echo number_format($bu_chenh_lech).' ₫'; ?></p>
						   <?php } else echo "<p>Không xác định</p>"; ?>
						   </div></div>
						   