<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header'); 
   $gallery = get_gallery_by_code($ccode); 
   ?> 
<link rel="stylesheet" id="progression-style-css" href="<?php echo base_url();?>css/gallery_style.css" type="text/css" media="all">
<script type="text/javascript" src="<?php echo base_url();?>js/plugin_gallery.js"></script>
<script type="text/javascript">
               jQuery(document).ready(function($) {
               	'use strict';
               	/* Default Masonry Load Code */
               	var $container = $('#gallery-masonry').masonry();
               	// layout Masonry again after all images have loaded
               	$container.imagesLoaded( function() {
               		$(".gallery-item-pro").addClass('opacity-pro');
               		$container.masonry({
                	  		itemSelector: '.gallery-item-pro',
               			columnWidth: function() { return this.size.innerWidth / 4; }
                		});
               	});
               	/* END Default Masonry Load Code */

                  /* Adding column size fix */
                   Masonry.prototype._getMeasurement = function (measurement, size) {
                       var option = this.options[measurement];
                       var elem;
                       if (!option) {
                           this[measurement] = 0;
                       } else if (typeof option === 'function') {
                           this[measurement] = option.call(this);
                       } else {
                           if (typeof option === 'string') {
                               elem = this.element.querySelector(option);
                           } else if (isElement(option)) {
                               elem = option;
                           }
                           this[measurement] = elem ? getSize(elem)[size] : option;
                       }
                   };
                   /* End Adding columnWidth: function() { return this.size.innerWidth / 3; } Size Fix */
               		
               		
               });
</script>			   
<style>
	#gallery-index-pro {
		margin: 0 auto;
	}
	#gallery-masonry-loading, .gallery-item-pro article {
		padding: 4px;
	}
	img {
		vertical-align: middle;
	}
</style>	 
<div class="wrapper content-wrapper clearfix">
            <div id="content" class="site-content">
               <div class='breadcrumbs init-animate clearfix'>
                  <span class='breadcrumb'>You are here</span>
                  <div id='supermag-breadcrumbs' class='clearfix'>
                     <div role="navigation" aria-label="Breadcrumbs" class="breadcrumb-trail breadcrumbs" itemprop="breadcrumb">
                        <ul class="trail-items" itemscope itemtype="http://schema.org/BreadcrumbList">
                           <meta name="numberOfItems" content="6" />
                           <meta name="itemListOrder" content="Ascending" />
                           <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="trail-item trail-begin">
                              <a href="<?php echo base_url(); ?>" rel="home" itemprop="item"><span itemprop="name">Trang chủ</span></a>
                              <meta itemprop="position" content="1" />
                           </li>
						   <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="trail-item">
                              <a href="<?php echo base_url(); ?>thu-vien-hinh-anh" itemprop="item"><span itemprop="name">Thư viện hình ảnh</span></a>
                              <meta itemprop="position" content="2" />
                           </li>
                           <li class="trail-item trail-end"><span><span><?php echo $gallery['ctitle']; ?></span></span></li>
                        </ul>
                     </div>
                  </div>
               </div>
               <div class="content-area">
                  <main id="main" class="site-main" role="main">
					
					<div id="gallery-index-pro">
						<div id="gallery-masonry-loading">
							<div id="gallery-masonry">	
							<?php $obj_data = get_gallery_detail($gallery['nid']); 
								foreach ($obj_data as $data) {
							?>
							<div class="gallery-item-pro gallery-column-4">
								<article>
									<div class="zoom-image-container-pro"><a class="gallery-container-pro fancybox" data-fancybox-group="gallery" href="<?php echo base_url().'upload/gallery/'.$data['cimg'] ?>">
										<img src="<?php echo base_url().'upload/gallery/'.$data['cimg'] ?>" /></a>
									</div>
								</article>
							</div>
							<?php } ?>
							</div>
						</div>
					</div>
                  </main>
                  <!-- #main -->
               </div>
               
			</div>
            <!-- #content -->
         </div>
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>