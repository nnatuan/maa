
<style type="text/css">
	
	
.box2 {
	display: inline-block;
	width: 100px;
	height: 100px;
	line-height: 98px;
	background-color: white;
	border: 4px dashed #B5B5B5;
	color: #B5B5B5;
	font-size: 50px;
	text-align: center;
}
#progressBar {
	background-color: #3E6FAD;
	width: 0px;
	height: 5px;
	margin-top: 10px;
	margin-bottom: 10px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px;
	-moz-transition: .25s ease-out;
	-webkit-transition: .25s ease-out;
	-o-transition: .25s ease-out;
	transition: .25s ease-out;
}
#uploads .block {
	display: inline-block;
	vertical-align: top;
	width: 100px;
	height: 100px;
	margin-right: 20px;
	margin-bottom: 20px;
	padding: 10px;
	background-color: white;
	border: 1px solid #CCCCCC;
}

#uploads .block .progressBar {
	background-color: #3E6FAD;
	width: 0px;
	height: 5px;
	margin-top: 47px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px;
	-moz-transition: .25s ease-out;
	-webkit-transition: .25s ease-out;
	-o-transition: .25s ease-out;
	transition: .25s ease-out;
}

#uploads .block .format {
	text-align: center;
	font-size: 20px;
	font-weight: bold;
	margin-top: 34px;
}

#uploads .block .error {
	text-align: left;
	font-size: 14px;
	color: red;
}

</style>



<!-- page content -->
        <div class="right_col" role="main">
          <div class="">
			


            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Hình ảnh sản phẩm <small class="text-danger"> <?php echo get_product_name($nid_product); ?> </small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>

                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
					<p class="text-danger"><em>Lưu ý: chỉ up ảnh < 2MB, kích chuẩn 1000x1000, tên hình ko gồm ký tự đặc biệt.</em></p>
					<div id="uploads"></div>
<div id="filename"></div>
<div id="progress"></div>
<div id="progressBar"></div>

<label for="file"><div class="box2">+</div></label>

<input type="file" id="file" name="Filedata" style="display: none;" multiple>
<div style="clear: both;"></div>
                    <div class="container">
						<?php $fr_img = Fstr_replace('admin/', '', base_url());
							$obj_img = get_img_by_product($nid_product);
							foreach ($obj_img as $data) {
						?>
                      <div style="width:100px;float:left;margin-right:10px;margin-top:20px;">
                        <img style="width:100px;height:100px;object-fit:cover" src="<?php echo $fr_img.'upload/images_product/sub_images/'.$data['cimage'];?>" alt="image" />
						<div class="caption text-center">
                           <a href="javascript:delete_img('<?php echo $data["nid"]?>')">Xóa</a>
                          </div>
                      </div>
					  <?php } ?>
                      <div class="clearfix"></div>

											<div style="margin-top:30px;">
												<input name="btn_cancel"  type="button" 
											   value = "<?php echo $btn_cancel; ?>"
											   onclick="location.href='<?php echo base_url().'index.php/do_product_listview'?>'" class="btn btn-danger"/>
											</div>

					</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->
		
		<script src="https://code.jquery.com/jquery-latest.min.js"></script>
			<script type="text/javascript">
		<?php $timestamp = time();?>
		
		$(document).ready(function(){

	$('input[type=file]').change(function(){

		$(this).simpleUpload("<?php echo base_url()?>index.php/do_product_img/insert_img/<?php echo $nid_product?>", {

			allowedExts: ["jpg", "jpeg", "jpe", "jif", "jfif", "jfi", "png", "gif", "webp"],
			allowedTypes: ["image/pjpeg", "image/jpeg", "image/png", "image/x-png", "image/gif", "image/x-gif", "image/webp"],
			maxFileSize: 5000000, //5MB in bytes

			start: function(file){
				//upload started

				this.block = $('<div class="block"></div>');
				this.progressBar = $('<div class="progressBar"></div>');
				this.cancelButton = $('<div class="cancelButton">x</div>');

				/*
				 * Since "this" differs depending on the function in which it is called,
				 * we need to assign "this" to a local variable to be able to access
				 * this.upload.cancel() inside another function call.
				 */

				var that = this;

				this.cancelButton.click(function(){
					that.upload.cancel();
					//now, the cancel callback will be called
				});

				this.block.append(this.progressBar).append(this.cancelButton);
				$('#uploads').append(this.block);

			},

			progress: function(progress){
				//received progress
				this.progressBar.width(progress + "%");
			},

			success: function(data){
				//upload successful
//alert(data);
//console.log(data);
				this.progressBar.remove();
				this.cancelButton.remove();
				location.reload();

				if (data.success) {
					//now fill the block with the format of the uploaded file
					var format = data.format;
					var formatDiv = $('<div class="format"></div>').text(format);
					this.block.append(formatDiv);
				} else {
					//our application returned an error
					var error = data.error.message;
					var errorDiv = $('<div class="error"></div>').text(error);
					this.block.append(errorDiv);
				}

			},

			error: function(error){
				//upload failed
				this.progressBar.remove();
				this.cancelButton.remove();
				var error = error.message;
				var errorDiv = $('<div class="error"></div>').text(error);
				this.block.append(errorDiv);
			},

			cancel: function(){
				//upload cancelled
				this.block.fadeOut(400, function(){
					$(this).remove();
				});
			}

		});

	});

});

		function delete_img(id){
			var cfm = confirm(" Bạn muốn xóa hình này ?");
			if (cfm == true) {
			$.post( "<?php echo base_url().'index.php/do_product_img/delete_img'?>", { nid: id })
  				.done(function( data ) {
   					 setInterval('window.location.reload()', 500);
 				 });
 			}
		}
	</script>


		<script type="text/javascript">
		<?php $timestamp = time();?>
		$(function() {
			$('#file_upload').uploadify({
				'formData'      : {'nid_product' : '<?php echo $nid_product?>'},
				'swf'      : '<?php echo base_url()?>uploadify/uploadify.swf',
				'uploader' : '<?php echo base_url()?>index.php/do_product_img/insert_img/',
				'onQueueComplete' : function() {
            		setInterval('window.location.reload()', 1500);
       			 }
			});
		});
		</script>