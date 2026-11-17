<?php 
$nid = $_POST['nid_product']; 
$ctype = $_POST['ctype']; 
$product = get_product_by_id($nid);
?>
<img src="<?php echo base_url().'upload/images_product/resize_images/'.$product['cimage_resize']?>"> 
                           <p>Tên sản phẩm:&nbsp;<strong><?php echo $product['cproducts']; ?></strong></p>
                           <div class="box-left__box-price">
                              <p>Giá dự kiến thu lại:</p>
                              <p class="box-left__price"><?php if($product['cgia_loai_'.$ctype]!="") echo number_format($product['cgia_loai_'.$ctype]).' ₫'; else echo "Liên hệ"; ?></p>
                           </div>