<?php
   $this->load->view($view_folder.'/header');
   $this->load->view($view_folder.'/header_end');	
   $this->load->view($view_folder.'/modules/mod_header');

   ?>  
<div class="main container">
	
         <div class="row">
			<div class="col-md-9">
				<div class="title_box title_box_news"><h4 class="title">Gần đây nhất</h4></div>
				<?php  
				$cat_link= base_url().'tin-tuc/';
				foreach($obj_news_list as $data) {
				?>
				<div class="news-item">
				   <div class="col-xs-4 no-padding-left"> 
						<a href="<?php echo base_url().'tin-tuc/'.$data['ccode']; ?>"><img class="img-responsive img-thumbnail" src="<?php echo base_url().'upload/image_article/'.$data['cimage_thumb'] ?>"></a> 
				   </div>
				   <div class="col-xs-8 no-padding-left right-news"> 
						<a href="<?php echo base_url().'tin-tuc/'.$data['ccode']; ?>" class="news-title"><?php echo $data['ctitle']; ?></a> 
						<p style="background: #eee;border-radius: 15px;padding:3px 10px;color: #000;display:inline-block;font-weight: bold;font-size: 12px;"><i class="fa fa-bookmark" style="color: #f66b15;"></i> <?php echo get_cat_news_name($data['nid_cat_news']); ?></p>
						<div class="des_news"><?php echo $data['cshort_content']; ?></div>
						<div class="news-footer hide">
							<div class="row">
								<div class="col-sm-6">
									<em>By: <?php echo $data['cauthor']; ?></em>
								</div>
								<div class="col-sm-6 text-right">
									<i class="fa fa-clock-o" aria-hidden="true"></i> <?php echo $data['cdate']; ?> | Lượt xem: <?php echo $data['cview']; ?>
								</div>
							</div>
						</div>
					</div>
				</div>
				<?php } ?>
			</div>	
			<div class="col-md-3">
				<div class="title_box title_box_news"><h4 class="title">Xem nhiều nhất</h4></div>
				<?php  
				$list = get_news_xem_nhieu_nhat();
				foreach($list as $data) {
				?>
				<div class="news-item">
					<a href="<?php echo base_url().'tin-tuc/'.$data['ccode']; ?>"><img class="img-responsive img-thumbnail" src="<?php echo base_url().'upload/image_article/'.$data['cimage_thumb'] ?>"></a> 
					<a href="<?php echo base_url().'tin-tuc/'.$data['ccode']; ?>" class="news-title" style="margin-top: 10px;font-size: 14px;"><?php echo $data['ctitle']; ?></a> 
					<div class="des_news"><?php echo $data['cshort_content']; ?></div>
				</div>
				<?php } ?>
			</div>
		 </div>
		 
		 <div class="pagination clearfix">
		   <?php 	
			  if($total_page >1){
				for($i=1; $i<=$total_page; $i++){
					if($i != $cur_page){
						?>
		   <a href="<?php echo base_url().$ccode.'/trang-'.$i ?>">
			  <?php echo $i?>
		   </a>
		   <?php }else{ ?>
		   <strong><?php echo $i?> </strong>
		   <?php }
			  } }?>
		</div>
</div>   
<?php 
	$this->load->view($view_folder.'/modules/mod_footer');
	$this->load->view($view_folder.'/footer');
?>