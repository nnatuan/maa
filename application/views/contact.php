<?php 
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header'); 		
?>
<div class="container">
   <nav itemscope="" itemtype="http://schema.org/BreadcrumbList" class="breadcrumbs">
      <span itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
         <a itemprop="item" href="<?php echo base_url(); ?>" title="Pagrindinis" class="breadcrumbs__link" id="breadcrumb_0"><span itemprop="name">Trang chủ</span></a>
         <meta itemprop="position" content="1">
      </span>
      <span itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
         <a title="" itemprop="item" href="<?php echo base_url(); ?>lien-he" class="breadcrumbs__text active"><span itemprop="name">Liên hệ</span></a>
         <meta itemprop="position" content="2">
      </span>
   </nav>
   <h1>Thông tin liên hệ</h1>
   <div class="box-contacts">
      <h2 class="title">Nếu bạn có thắc mắc gì vui lòng liên hệ với chúng tôi bằng các thông tin sau đây:</h2>
      <div class="box-contacts__row">
         <div class="box-contacts__col">
            <div class="elem-contact"><img src="<?php echo base_url(); ?>images/icon-direction.webp" alt="">
               Địa chỉ: 343/6 Hà Huy Giáp, P.Thạnh Lộc, Q.12
            </div>
            <a href="tel:+37167376575" title="" class="elem-contact">
            <img src="<?php echo base_url(); ?>images/icon-envelope.webp" alt=""> Email: demo@gmail.com
            </a>
         </div>
         <div class="box-contacts__col">
            <a href="tel:+37167376577" title="" class="elem-contact">
            <img src="<?php echo base_url(); ?>images/icon-fax.webp" alt=""> Fax: +371 67 37 65 77
            </a>
            <a href="tel:800031701" title="" class="elem-contact">
            <img src="<?php echo base_url(); ?>images/icon-cellphone.webp" alt=""> Hotline: 8 800 900 34
            </a>
         </div>
      </div>
   </div>
   <div class="box-contacts">
      <h2 class="title">Kết nối với chúng tôi</h2>
      <div class="elem-contact">
                        <a href="#" target="_blank" title="" class="elem-social header__social--link">
                           <svg aria-hidden="true" class="icon icon-facebook ">
                              <use xlink:href="<?php echo base_url(); ?>images/sprite.svg#facebook"></use>
                           </svg>
                           Наша страница в Facebook
                        </a>
                        <a href="#" target="_blank" title="" class="elem-social header__social--link">
                           <svg aria-hidden="true" class="icon icon-youtube ">
                              <use xlink:href="<?php echo base_url(); ?>images/sprite.svg#youtube"></use>
                           </svg>
                           Наш канал в YouTube
                        </a>
                        <a href="#" target="_blank" title="" class="elem-social header__social--link">
                           <svg aria-hidden="true" class="icon icon-instagram ">
                              <use xlink:href="<?php echo base_url(); ?>images/sprite.svg#instagram"></use>
                           </svg>
                           Наша страница в Instagram
                        </a>
                     </div>
   </div>
   <div class="box-contacts no-border-after">
      <h2 class="title">Địa chỉ Google map</h2>
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2782416062473!2d106.6775357150679!3d10.866429160496693!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175283278e5deff%3A0xe320ff9982243d64!2zMzQzIEjDoCBIdXkgR2nDoXAsIFRo4bqhbmggTOG7mWMsIFF14bqtbiAxMiwgVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1673576421103!5m2!1svi!2s" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
   </div>
</div>
<?php 
	$this->load->view('modules/mod_footer'); 
	$this->load->view('footer'); 
?>