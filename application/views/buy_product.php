<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   $member = '';
   if(isset($_SESSION['nid_member']))
	   $member = get_member_by_id($_SESSION['nid_member']);
   ?>  
<script type="text/javascript">
function update_cart(_id){
   	_qty = $("#cquantity_"+_id).val();   
   		$.post( "<?php echo base_url().'thao-tac/cap-nhat-san-pham'?>", { id: _id, qty: _qty })
   	  .done(function( data ) {  		
   		location.reload();
   	  });
   }   
   function del_cart(_id){
   	cfm= confirm("Bạn muốn xóa sản phẩm này khỏi giỏ hàng của mình ?");
   	if(cfm == true){
		$.ajax({
		type: "POST",
		url: "<?php echo base_url()?>thao-tac/xoa-san-pham",
		data: { id: _id },
		success: function(msg) {
			location.reload();
		}
	});
		/*
   		$.post( "<?php echo base_url().'thao-tac/xoa-san-pham'?>", { id: _id })
   	  .done(function( data ) {	
   		location.reload();
   	  });
	  */
   	}
   }
</script>

<style>
.main {
  width: 600px;
}
.cart h2 {
  font-weight: 700;
  margin-bottom: 15px;
}
.clear {
  clear: both;
}
.cart {
  min-height: 500px;
}
.col-main {
  width: 600px;
  margin: 0 auto;
  padding: 15px;
  box-sizing: content-box;
}
.left {
  float: left;
}
.right {
  float: right;
}
.form-control, .form-control:focus {
  border: 1px solid #eee !important;
     height: 35px !important;
	     width: 100%;
		 margin-top:5px;
		 padding:5px;
}
.price-container {
  float: left;
  width: 100%;
}
.big-button {
	color: #000;
	width: 100%;
    background: #fff;
    border: 1px solid #f66b15;
	    display: block;
}
.big-button:hover {
	color: #fff;
    background: #f66b15;
}
.price {
	color: #f79537;
}
.page-wrapper {
    padding-bottom: 0;
}	
</style>	  

<div class="main-full">
                     <div id="main" class="container" role="main">
                  <div class="col-main">
                     <div class="module" style="border-bottom: 1px solid #f79537;line-height: 30px;">
                        <div class="right" style="color:#f79537;">
                           <i class="fa fa-shopping-basket" aria-hidden="true"></i> Giỏ hàng của bạn
                        </div>
                        <div class="left">		
                           <a href="<?php echo base_url(); ?>"><i class="fa fa-chevron-left"></i> Tiếp tục mua hàng</a>
                        </div>
                        <div class="clear"></div>
                     </div>
                     <div class="cart">
                           <div class="module">
							<?php 
							$obj_cart = '';
							$total = 0;
							if(isset($_SESSION["cart"]))
							$obj_cart = $_SESSION["cart"];				
							if($obj_cart !=''){
								foreach($obj_cart as $cart){
									$product = get_product_detail($cart['id']);
									if($product['fprice_sale'] < $product['fprice'] && $product['nkm']==1)
											$price=$product['fprice_sale'];
										else
											$price=$product['fprice'];
									 $total += $price*$cart['qty'];
							?>
                              <div style="border-bottom: solid 1px #eee; padding: 15px; position: relative;">
                                 <div class="right right-cart" style="width: 400px;">
                                    <h4 class="product-name" style="    margin-bottom: 10px; margin-top: 10px; font-size: 20px;    color: #000;">
                                       <?php echo $product['cproducts']?>								   
                                    </h4>
                                    <span class="price"><strong><?php echo number_format($price); ?> ₫</strong></span>		
                                    <div style="margin-top: 20px;">
                                       <div class="right">
                                          <select name ="cquantity" id="cquantity_<?php echo $cart['id']?>" style="width: 60px;border: 1px solid #eee;height: 32px;">
											 <?php for($j=1;$j<6;$j++){?>
											 <option <?php if($cart['qty']==$j){?>selected="selected"<?php }?>><?php echo $j?></option>
											 <?php }?>
										  </select>
                                       </div>
                                       <div class="right" style="line-height: 35px; margin-right: 15px;">
                                          <a href="javascript:del_cart('<?php echo $cart['id'] ?>');">Xóa khỏi giỏ</a> | <a href="javascript:update_cart('<?php echo $cart['id']?>');">Cập nhật</a>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="left left-cart" style="width: 120px;">
                                    <img style="width: 100%;" src="<?php echo base_url().'upload/images_product/full_images/'.$product['cimage']?>" alt="" />			
                                 </div>
                                 <div class="clear"></div>
                              </div>
                                <?php } ?>    
                           </div>
                           <div style="padding: 15px; border-bottom: solid 1px #eee;margin-bottom: 15px;">
                              <div class="price-container" id="grand-total-content">
                                 <div class="left" style="font-size: 14px;">
                                    - Tổng tiền:
                                 </div>
                                 <div class="right">
                                    <strong style="font-size: 14px;" id="el-grand-total"><span class="price"><?php echo number_format($total);?> ₫</span></strong>
                                 </div>
                              </div>
                              <div class="price-container" id="discount-price-content" style="display:none">
                                 <div class="left" style="font-size: 14px;">
                                    - Giảm phiếu mua hàng:
                                 </div>
                                 <div class="right">
                                    <strong><span id ="el-discount-price"></span></strong>
                                 </div>
                              </div>
                              <div class="price-container" id="final-price-content" style="display:none">
                                 <div class="left" style="font-size: 16px;">
                                    <strong>- Cần thanh toán:</strong>
                                 </div>
                                 <div class="right">
                                    <strong><span class="price" id="el-final-price" style="font-size: 17px;"></span></strong>
                                 </div>
                              </div>
                              <input type="hidden" name="grandTotal" id="cart-grandTotal" value="48280000">
                              <div class="clear"></div>
                           </div>
                           
                        
						<form method="post" action="<?php echo base_url().'gio-hang'?>" >
						<div style="padding: 0px 15px 15px;">
						   <div class="module">
							  <h3>Thông tin mua hàng</h3>
							  <!----> 
							  <div class="WrapCusData">
								 <div class="left" style="width: 50%;">
									<div style="padding: 0px 5px 0px 0px;"><label>Họ và tên (bắt buộc)</label> <input type="text" name="cname" class="form-control" required value="<?php if($member!="") echo $member['cname']; ?>"></div>
								 </div>
								 <div class="left" style="width: 50%;">
									<div style="padding: 0px 0px 0px 5px;"><label>Số điện thoại đặt hàng (bắt buộc)</label> <input type="text" name="cphone" class="form-control" required value="<?php if($member!="") echo $member['cphone']; ?>"></div>
								 </div>
								 <div class="clear"></div>
								 <div style="margin-bottom: 20px;margin-top: 10px;"><label>Lưu ý</label> <textarea type="text" name="cnote" class="form-control" style="height:90px !important;"></textarea></div>
							  </div>
						   </div>

						   <!----> 
						   <div id="payment-selection" class="module">
							  <button type="submit" name="bnt_submit01" value="submit" class="big-button button-blue btn btn-color-add"><strong>ĐẶT HÀNG THANH TOÁN SAU</strong> <br>
							  (Trả tiền tại nhà hoặc tại cửa hàng)
							  </button> 
						   </div>
						</div>
						<input type="hidden" name="ctotal" value="<?php echo $total; ?>" />
                        </form>
                     </div>
					
					<?php }else{?>
					 <p style="text-align:center;padding-top:20px;">Giỏ hàng của bạn chưa có sản phẩm.</p>
						</div>
					  </div>
					 <?php }?> 														
                  </div>
               </div>

</div>	  
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>