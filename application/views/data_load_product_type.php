<?php 
$nid = $_POST['nid']; 
$ctype = $_POST['ctype']; 
$product = get_product_by_id($nid);
?>
<p><strong>Giá dự kiến thu lại <u>loại <?php echo $ctype; ?></u>: <span class="box-right__price"><?php if($product['cgia_loai_'.$ctype]!="") echo number_format($product['cgia_loai_'.$ctype]).' ₫'; else echo "Liên hệ"; ?></span></strong></p>
<p><i>Lưu ý: Giá thu mua áp dụng cho dung lượng pin &gt; 85% &amp; số lần sạc &lt; 400 lần (ngoài ra giá mua có thể trừ chi phí thay pin).</i></p>