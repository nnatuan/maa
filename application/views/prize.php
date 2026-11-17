<?php 
   $this->load->view($view_folder.'/header');
   $this->load->view($view_folder.'/header_end');	
   $this->load->view($view_folder.'/modules/mod_header');
   $total = $_SESSION['total_no_with'];
   $prize_id = '';
   $prize_name = '';
   if($total < 300000) {
	   $prize_id = 1;
	   $prize_name = 'Voucher 50K';
   } else if($total >= 300000 && $total < 650000) {
	   $prize_id = 2;
	   $prize_name = 'Phong bì lì xì 28K';
   } else if($total >= 650000 && $total < 800000) {
	   $prize_id = 3;
	   $prize_name = 'Phong bì lì xì 68K';
   } else if($total >= 800000 && $total < 1250000) {
	   $prize_id = 4;
	   $prize_name = 'Phong bì lì xì 88K';
   } else if($total >= 1250000 && $total < 1400000) {
	   $prize_id = 5;
	   $prize_name = 'Phong bì lì xì 138K';
   } else if($total >= 1400000) {
	   $prize_id = 6;
	   $prize_name = 'Phong bì lì xì 168K';
   }
   
/*   
dưới 300k -> tặng voucher 50k
từ 300k dưới 650k tặng lì xì 28k
từ 650k dưới 800k tặng lì xì 68k
từ 800k dưới 1250k tặng lì xì 88k
từ 1250k dưới 1400k tặng lì xì 138k
từ 1400k tặng lì xì 168k   */

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
.flip-box {
	cursor:pointer;
  background-color: transparent;
  width: 100%;
  height: 370px;
  border: 1px solid #f1f1f1;
  perspective: 1000px; /* Remove this if you don't want the 3D effect */
}

/* This container is needed to position the front and back side */
.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

/* Do an horizontal flip when you move the mouse over the flip box container */
/*
.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}*/
.flip-box.active .flip-box-inner {
  transform: rotateY(180deg);
}

/* Position the front and back side */
.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden; /* Safari */
  backface-visibility: hidden;
}

/* Style the front side (fallback if image is missing) */
.flip-box-front {
  background-color: #bbb;
  color: black;
}

/* Style the back side */
.flip-box-back {
  background-color: #dd1a22;
  color: white;
  transform: rotateY(180deg);
}
.flip-box-back h2 {
  color: white;
  margin-top:50px;
}
.notify_suss {
	opacity:0;
	transition-duration:300ms;
	margin-top:50px;
}
.notify_suss.active {
	opacity:1;
}
.notify_suss p {
	font-size:26px;
	color: #dd1a22;
}
</style> 
<div class="main container">
	<div class="title_box text-center"><h3 class="title">MỜI BẠN CHỌN MỘT PHẦN QUÀ</h3></div>
	<div style="width: 900px;margin: 0 auto;margin-bottom: 25px;text-align:center;">
		<?php //$m = get_module_byid(20); echo $m['cnote']; ?>
		<p>Cám ơn quý khách đã mua sản phẩm tại <strong>Apupicosmetics</strong>.<br>
		Hãy chọn 1 trong các phong bì dưới đây để nhận quà từ chương trình.</p>
	</div>
	<div class="row">
		<?php for($i=1;$i<4;$i++) { ?>
		<div class="col-md-4">
			<div id="flip-box-<?php echo $i; ?>" class="flip-box" onclick="pick_prize('<?php echo $i; ?>');">
			  <div class="flip-box-inner">
				<div class="flip-box-front">
				  <img src="<?php echo base_url().'images/prize'.$i.'.jpg'; ?>">
				</div>
				<div class="flip-box-back">
				  <h2>Chúc mừng</h2>
				  <p>Bạn đã nhận được<br><br><strong style="font-size: 30px;"><?php echo $prize_name; ?></strong></p>
				</div>
			  </div>
			</div>
		</div>
		<?php } ?>	
	</div>
	<div style="height:30px;"></div>
	<div class="row">
		<?php for($i=4;$i<7;$i++) { ?>
		<div class="col-md-4">
			<div id="flip-box-<?php echo $i; ?>" class="flip-box" onclick="pick_prize('<?php echo $i; ?>');">
			  <div class="flip-box-inner">
				<div class="flip-box-front">
				  <img src="<?php echo base_url().'images/prize'.$i.'.jpg'; ?>">
				</div>
				<div class="flip-box-back">
				  <h2>Chúc mừng</h2>
				  <p>Bạn đã nhận được<br><br><strong style="font-size: 30px;"><?php echo $prize_name; ?></strong></p>
				</div>
			  </div>
			</div>
		</div>
		<?php } ?>	
	</div>
	<div class="notify_suss text-center">
	<p>Cám ơn bạn đã tham gia chương trình!</p>
	<a href="<?php echo base_url(); ?>" style="font-size: 20px;color: #333;text-decoration: underline;">Quay về trang chủ</a>
	</div>
</div>
<script>
function pick_prize(_id) {
	jQuery('#flip-box-'+_id).toggleClass('active');
	jQuery.ajax({
		url : "<?php echo base_url(); ?>data_prize",
		type : "post",
		dataType:"text",
		data : {
			nid_prize : <?php echo $prize_id; ?>,
			cname_prize : '<?php echo $prize_name; ?>'
		},
		success : function (result){
			jQuery('.flip-box').removeAttr("onclick");
			jQuery('.notify_suss').addClass("active");
			
			//document.getElementById('flip-box-'+_id).removeAttribute("onclick");
		}
	});
}
</script>	
<?php 
	$this->load->view($view_folder.'/modules/mod_footer');
	$this->load->view($view_folder.'/footer');
?>