<?php 
   $this->load->view($view_folder.'/header');
   $this->load->view($view_folder.'/header_end');	
   $this->load->view($view_folder.'/modules/mod_header');
   $member = get_member_by_id($_SESSION['nid_member']);
   ?>
<style>
.main {
	min-height:650px;
}
.title_box {
	margin-bottom: 30px;
}
.title_box .title {
    font-size: 26px;
}
.item-dq img {

}
.item-dq h4 {
	color:red;
	margin: 10px 0;
	font-weight:bold;
}
</style> 
<div class="main container">
	<div class="title_box text-center"><h3 class="title">ĐỔI QUÀ</h3></div>
	<h2 style="color: red;text-align: center;margin-bottom: 30px;">SỐ ĐIỂM HIỆN CÓ : <strong><?php echo $member['cpoint']; ?></strong></h2>
	<div class="row">
		<?php $list = get_product_doi_qua(); 
		foreach ($list as $product) { 
		?>
		<div class="col-sm-3 text-center item-dq">
			<img src="<?php echo base_url().'upload/images_product/resize_images/'.$product['cimage_resize']?>">
			<h4>Số điểm cần có: <?php echo $product['cpoint']; ?></h4>
			<button type="submit" value="submit" name="btn_submit" class="form-control" style="background: red;width:150px;color: #fff;border: 0;display: inline-block;" onclick="doi_qua(<?php echo $product['nid']; ?>,<?php echo $product['cpoint']; ?>,<?php echo $member['cpoint']; ?>);"> Đổi quà</button>
		</div>
		<?php } ?>	
	</div>
</div>
<script>
function doi_qua(_id, _point_product, _point_member) {
	if(_point_member < _point_product) 
		alert('Số điểm của bạn không đủ.');
	else {
		jQuery.ajax({
			url : "<?php echo base_url(); ?>data_doi_qua",
			type : "post",
			dataType:"text",
			data : {
				nid: _id,
				cpoint_product: _point_product,
				cpoint_member: _point_member
			},
			success : function (result){
				alert("Đổi quà thành công, Apupicosmetics đã ghi nhận!");
				location.reload();
			}
		});
	}
}
</script>	
<?php 
	$this->load->view($view_folder.'/modules/mod_footer');
	$this->load->view($view_folder.'/footer');
?>