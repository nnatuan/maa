<?php 
   $this->load->view($view_folder.'/header');
   $this->load->view($view_folder.'/header_end');	
   $this->load->view($view_folder.'/modules/mod_header');		
?>
<style>
.btn_submit {
background-image: linear-gradient(to bottom, #f52f32, #f26d63 50%);
        border: 0;
    padding: 0 15px;
    height: 30px;
    border-radius: 4px;
    color: #fff;
}
.txt_code_vq {
	width: 300px;
	display: inline-block;
    height: 30px;
}
.main {
	background: #fff;
    min-height: 500px;
    padding-top: 20px;
    background: #fff;	
}
</style>
<div id="page">
            <div class="main text-center">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        <div id="layout-page">
                           <div class="container">
                             <div>
              
								  <?php 
									 $old_cart= 0;$total =0;$cart_id='';$nquay=1; $var_01=1;
									 if(isset($_SESSION["total"]))
										$total = $_SESSION["total"];
									 if(isset($_SESSION["cart_id"]))
										$cart_id  = $_SESSION["cart_id"];
									 if(isset($_SESSION["cart"])){
										$obj_cart = $_SESSION["cart"];
										$old_cart = $obj_cart[0]['id'];
									 }
									
								  ?>
								   <p>
								  <span style="font-weight: bold;color: red;">Quay Hay Trúng Lớn, Nhận Quà 100%!</span><br> 

								  <?php 
									if(!isset($_SESSION["code_vqmm"])) {
								  ?>
								  <div class="div-form-vq text-center">
								  <p><em>Nhập mã được cung cấp để tiến hành vòng quay may mắn!</em></p>
								 <input id="txt_code_vq" class="txt_code_vq form-control" type="text" /> <button class="btn_submit" onclick="submit_code();">Xác nhận</button>
							   <?php }else{?>
									  Chúc mừng bạn đã đến với chương trình Vòng Quay May Mắn của <b>Apupicosmetics</b>, nhấn vào Vòng Quay để nhận quà bạn nhé!
								  <br><br>
								  <iframe src="https://apupicosmetics.com/vong-quay-may-man-code"  width="100%" height="700" frameBorder="0"></iframe>
							   <?php }?>

								   </p>
							  
							  
								</div>
								<p style="margin-top:50px;text-align:center;height:60px;display: none;">Cám ơn quý khách đã mua mỹ phẩm tại An San, chúng tôi sẽ nhanh chóng hành giao hàng đến quý khách!</p>
								
							</div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
<script>
function submit_code(){
	var _code = jQuery("#txt_code_vq").val();
					jQuery.post( "<?php echo base_url(); ?>ajax_actions/submit_code", { code: _code })
					  .done(function( data ) {
						  if(data=='1')
							location.reload();
						else
							alert('Mã không đúng hoặc đã được sử dụng!');
					  });	
				  }	
</script>		 
<?php 
	$this->load->view($view_folder.'/modules/mod_footer');
   $this->load->view($view_folder.'/footer');
?>