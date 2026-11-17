<?php 
$nid = $_POST['nid']; 
$product = get_product_by_id($nid);
?>
<div class="modal-body__box-left"><img src="<?php echo base_url().'upload/images_product/resize_images/'.$product['cimage_resize']?>"></div>
                        <div class="modal-body__box-right">
                           <p>Tên sản phẩm: <strong><?php echo $product['cproducts']; ?></strong></p>
                           <p><strong>Ngoại hình máy:</strong></p>
                           <form class="box-right__box-option-loai">
						   <input type="radio" id="optLoai1" name="optLoai" value="1" checked="checked"> 
						   <label for="optLoai1" onclick="ajax_load_type('1');"><strong>Loại 1:</strong> Máy hoạt động bình thường, màn đẹp, thân máy đẹp.</label> 
						   <input type="radio" id="optLoai2" name="optLoai" value="2"> 
						   <label for="optLoai2" onclick="ajax_load_type('2');"><strong>Loại 2:</strong> Máy hoạt động bình thường, màn đẹp, thân máy trầy xước nhẹ.</label> 
						   <input type="radio" id="optLoai3" name="optLoai" value="3"> 
						   <label for="optLoai3" onclick="ajax_load_type('3');"><strong>Loại 3:</strong> Máy hoạt động bình thường, màn trầy nhẹ, thân máy cấn móp nhẹ.</label> 
						   <input type="radio" id="optLoai4" name="optLoai" value="4"> 
						   <label for="optLoai4" onclick="ajax_load_type('4');"><strong>Loại 4:</strong> Máy hoạt động bình thường, ngoại hình xấu nhưng màn còn hiển thị và cảm ứng được.</label></form>
						   <?php /*
                           <p><strong>Phụ kiện và bảo hành:</strong></p>
						   <form class="box-right__box-option-more">
                              <input type="radio" id="optMore1" name="optMore1" value="1260000"> 
							  <label for="optMore1"><span>Đủ hộp phụ kiện, bảo hành còn &gt; 9 tháng</span> 
							  <span class="box-right__price">+1.260.000&nbsp;₫ (5%)</span></label> 
							  <input type="radio" id="optMore2" name="optMore2" value="2520000"> 
							  <label for="optMore2"><span>Chưa kích hoạt</span> 
							  <span class="box-right__price">+2.520.000&nbsp;₫ (10%)</span></label> <!---->
                           </form> */ ?>
						   <div id="result-2">
                           <p><strong>Giá dự kiến thu lại <u>loại 1</u>: <span class="box-right__price"><?php if($product['cgia_loai_1']!="") echo number_format($product['cgia_loai_1']).' ₫'; else echo "Liên hệ"; ?></span></strong></p>
                           <p><i>Lưu ý: Giá thu mua áp dụng cho dung lượng pin &gt; 85% &amp; số lần sạc &lt; 400 lần (ngoài ra giá mua có thể trừ chi phí thay pin).</i></p>
						   </div>
                        </div>

<script>
function ajax_load_type(_nid){
	jQuery('#ctype').val(_nid);
	//alert(_nid);
						jQuery.ajax({
							url : "<?php echo base_url(); ?>data_load_product_type",
							type : "post",
							dataType:"text",
							beforeSend: function(){
								jQuery('.ajax-loader').css("visibility", "visible");
							},
							data : {
								 nid : <?php echo $nid; ?>,
								 ctype : _nid
							},
							success : function (result){
								jQuery('#result-2').html(result);
							},
							complete: function(){
								jQuery('.ajax-loader').css("visibility", "hidden");
							}
						});
			}
</script>