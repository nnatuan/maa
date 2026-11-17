<?php 
$key = $_POST['key']; 
$ccode = $_POST['ccode_group']; 
if($ccode=="")
							$list_product = get_product_doi_moi_search($key);
						else
							$list_product = get_product_doi_moi_by_sec_search($ccode,$key);

							foreach ($list_product as $product) {
						?>
                     <li data-toggle="modal" data-target="#modalThuCu" onclick="data_load_product('<?php echo $product['nid']; ?>');">
                        <div class="list-product__box-img">
                           <img alt="<?php echo base_url().'upload/images_product/resize_images/'.$product['cimage_resize']?>" data-src="<?php echo base_url().'upload/images_product/resize_images/'.$product['cimage_resize']?>" src="<?php echo base_url().'upload/images_product/resize_images/'.$product['cimage_resize']?>" lazy="loaded"> 
                           <div class="box-tro-gia">
                              <p>Trợ Giá iPhone 12 lên đến <span>1.000.000&nbsp;₫</span></p>
                           </div>
                           <!----> <!----> <!----><!----> <!----> <!----> <!---->
                        </div>
                        <div class="list-product__box-info">
                           <h3><?php echo $product['cproducts']; ?></h3>
                        </div>
                        <div class="list-product__box-price">
                           <p>Giá thu cũ:</p>
                           <p class="price"><?php if($product['cgia_loai_1']!="") echo number_format($product['cgia_loai_1']).' ₫'; else echo "Liên hệ"; ?></p>
                        </div>
                     </li>
					<?php } ?>