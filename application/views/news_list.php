<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   ?> 
<style>
.page-wrapper {
    padding-bottom: 0;
}	   
.box-main-blogs {
    margin-bottom:50px;
}   
</style>
<div class="container">
   <nav itemscope="" itemtype="http://schema.org/BreadcrumbList" class="breadcrumbs">
      <span itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
         <a itemprop="item" href="<?php echo base_url(); ?>" title="Pagrindinis" class="breadcrumbs__link" id="breadcrumb_0"><span itemprop="name">Trang chủ</span></a>
         <meta itemprop="position" content="1">
      </span>
      <span itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
         <a title="" itemprop="item" href="<?php echo base_url(); ?>tin-tuc" class="breadcrumbs__text active"><span itemprop="name">Tin tức</span></a>
         <meta itemprop="position" content="2">
      </span>
   </nav>   
	<div class="box-main-blogs">
               <div class="box-main-blogs__inner">
                  <div class="main-blogs-block swiper-container js-init-slider-blog">
                     <div class="main-blogs-block__inner swiper-wrapper">
                        <?php foreach($obj_news_list as $data) { ?>
						<a href="<?php echo base_url().'tin-tuc/'.$data['ccode']; ?>" class="main-blogs-block__item  card-blog swiper-slide">
                           <div class="card-blog__header">
                              <picture>
                                 <source srcset="<?php echo base_url().'upload/image_article/'.$data['cimage_thumb']; ?>"
                                    media="(max-width: 1024px)">
                                 <img src="<?php echo base_url().'upload/image_article/'.$data['cimage_thumb']; ?>"
                                 class="card-blog__img" alt=""
                              </picture>
                           </div>
                           <div class="card-blog__footer">
                              <div class="card-blog__footer-row">
                                 <h3 class="card-blog__title"><?php echo $data['ctitle']; ?></h3>
                                 <span class="card-blog__btn">
                                 <span>Xem thêm</span>
                                 </span>
                              </div>
                           </div>
                        </a>
                        <?php } ?>
                     </div>
                     <div class="swiper-scrollbar swiper-scrollbar-blog"></div>
                  </div>
               </div>
            </div>
</div>
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>