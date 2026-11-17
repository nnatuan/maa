<?php 
$ccode_group = $_POST['ccode_group']; 
$nid_product = $_POST['nid_product']; 
$ctype = $_POST['ctype']; 
$product_me = get_product_by_id($nid_product);
$list = get_product_doi_moi_by_sec_not_me($ccode_group,$nid_product);
	foreach ($list as $product) {
		$tro_gia = 0;
		$bu_chenh_lech = "N/A";
		if ($product['fprice_sale'] < $product['fprice'])
			$price = $product['fprice_sale'];
		else
			$price = $product['fprice'];
		if($product['ctro_gia']!="")
			$tro_gia = $product['ctro_gia'];
		
		if($product_me['cgia_loai_'.$ctype]!="") {
			$bu_chenh_lech = number_format($product_me['cgia_loai_'.$ctype] + $tro_gia - $price).' ₫';
		}	
?>
<li data-dismiss="modal" data-toggle="modal" data-target="#modalPay" onclick="data_load_product_doi_moi_nid('<?php echo $product['nid']; ?>');">
                              <div class="list-product__box-img">
                                 <img alt="" data-src="<?php echo base_url().'upload/images_product/resize_images/'.$product['cimage_resize']?>" src="<?php echo base_url().'upload/images_product/resize_images/'.$product['cimage_resize']?>" lazy="loaded"> <!---->
                              </div>
                              <div class="list-product__box-info">
                                 <h3><?php echo $product['cproducts']; ?></h3>
                              </div>
                              <div class="list-product__box-price">
                                 <div>
                                    <p>Giá máy:</p>
                                    <p class="price_new_phone"><?php echo number_format($price).' ₫'; ?></p>
                                 </div>
                                 <!----> 
                                 <div>
                                    <p>Trợ giá:</p>
                                    <p class="price_tro_gia"><?php echo number_format($tro_gia).' ₫'; ?></p>
                                 </div>
                                 <div>
                                    <p>Giá máy cũ:</p>
                                    <p class="price_old_phone"><?php if($product_me['cgia_loai_'.$ctype]!="") echo number_format($product_me['cgia_loai_'.$ctype]).' ₫'; else echo "Liên hệ"; ?></p>
                                 </div>
                                 <div>
                                    <p>Bù chênh lệch:</p>
                                    <p class="price"><?php echo $bu_chenh_lech; ?></p>
                                 </div>
                              </div>
                           </li>
<?php } ?>						   

<script>
function data_load_product_doi_moi_nid(_nid) {
				jQuery('#modal-title').text('THÔNG TIN THU CŨ ĐỔI MỚI');
				jQuery('#nid_product_moi').val(_nid);
				_nid_product = jQuery('#nid_product').val();
				//alert(_nid_product_moi);
				_ctype = jQuery('#ctype').val();
						jQuery.ajax({
							url : "<?php echo base_url(); ?>data_load_product_doi_moi",
							type : "post",
							dataType:"text",
							beforeSend: function(){
								jQuery('.ajax-loader').css("visibility", "visible");
							},
							data : {
								 nid_product : _nid_product,
								 nid_product_moi : _nid,
								 ctype : _ctype
							},
							success : function (result){
								jQuery('#result-3').html(result);
								jQuery('#btn-dm-dien-thoai').trigger('click');
							},
							complete: function(){
								jQuery('.ajax-loader').css("visibility", "hidden");
							}
						});
			}
</script>