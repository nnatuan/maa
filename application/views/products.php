<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   ?>  
<style>
.page-wrapper {
    padding-bottom: 0;
}	   
.grid {
    margin-bottom:50px;
}   
</style>
<div class="container container--main-page">
  <nav itemscope="" itemtype="http://schema.org/BreadcrumbList" class="breadcrumbs">
      <span itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
         <a itemprop="item" href="<?php echo base_url(); ?>" title="Pagrindinis" class="breadcrumbs__link" id="breadcrumb_0"><span itemprop="name">Trang chủ</span></a>
         <meta itemprop="position" content="1">
      </span>
      <span itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
         <a title="" itemprop="item" href="<?php echo base_url(); ?>san-pham" class="breadcrumbs__text active"><span itemprop="name">Sản phẩm</span></a>
         <meta itemprop="position" content="2">
      </span>
   </nav>
   <script>
      $(function (){
          if ($('.footer__slogan + .price_disclaimer_out').length <= 0){
              $('.footer__slogan').after('<p class="price_disclaimer_out">** Tai yra preliminarus pasiūlymas. Užbaikite užklausą ir artimiausiu metu su jumis susieks konsultantas</p>');
          }
      });
   </script>
   <div class="grid">
      <div class="grid__content">
         <div id="ajax-catalog" class="grid catalog">
            <script>
               $(function (){
                   if ($('.footer__slogan + .price_disclaimer_out').length <= 0){
                       $('.footer__slogan').after('<p class="price_disclaimer_out">** Tai yra preliminarus pasiūlymas. Užbaikite užklausą ir artimiausiu metu su jumis susieks konsultantas</p>');
                   }
               });
            </script>
            <input type="hidden" id="maxPage" value="4">
            <?php $obj_product = get_product_page($nrow_per_page, $ncurr_page);
			foreach($obj_product as $product) {?>
			
			<a href="<?php echo base_url().'san-pham/'.$product['ccode']; ?>" class="card grid__item grid__item-3">
                           <span class="card__mark card__mark--new">Naujiena</span>
                           <div class="card__img product-835">
                              <img class="card__img-product" src="<?php echo base_url().'upload/images_product/full_images/'.$product['cimage']?>">
                           </div>
                           <div class="price_section">
                              <div class="price_value">
                                 <?php echo number_format($product['fprice_sale']); ?> ₫                                   
                              </div>
                              <div class="price_disclaimer"><?php if($product['fprice']>0) echo number_format($product['fprice']).' ₫'; else echo "Liên hệ"; ?></div>
                           </div>
                           <div class="card__inner">
                              <div title="Tirpusis žolelių gėrimas persikų skonio (51 g)" data-cut-height="66" class="card__link js-ellipsis"
                                 style="overflow-wrap: break-word;">
                                 <?php echo $product['cproducts']; ?>                               
                              </div>
                              <div class="card__descr"><?php echo $product['cdescription']; ?></div>
                           </div>
                           <div class="card__bottom">
                              <div class="rating__wrap">
                                 <div class="rating" data-rating="0"></div>
                                 <div class="rating__text"></div>
                              </div>
                              <div class="card__comments">0</div>
                           </div>
                        </a>
            <?php } ?>  
			<script>
               $(function (){
                   if ($('.footer__slogan + .price_disclaimer_out').length <= 0){
                       $('.footer__slogan').after('<p class="price_disclaimer_out">** Tai yra preliminarus pasiūlymas. Užbaikite užklausą ir artimiausiu metu su jumis susieks konsultantas</p>');
                   }
               });
            </script>
            
		 </div>
      </div>
   </div>
</div>   
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>