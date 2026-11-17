<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header'); 
   ?> 
<style>
.bg-overlay {
    background-color: rgba(0,0,0,.3);
}
.news-bg, .bg-overlay {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    -webkit-transition: all .4s;
    -o-transition: all .4s;
    transition: all .4s;
    width: 100%;
}
.news-bg {
    z-index: 1;
    overflow: hidden;
}
.news-img {
	background-size: cover;
    background-position: 50%;
    z-index: 1;
    min-height: 200px;	
    transition-duration: 1500ms;	
	-webkit-transform: scale(1.2);
    -ms-transform: scale(1.2);
    transform: scale(1.2);
}
a.news-href {
    display: block;
    min-height: 200px;
	width: 100%;
    position: relative;
    overflow: hidden;	
}
.news-href:hover .news-img {
    -webkit-transform: scale(1);
    -ms-transform: scale(1);
    transform: scale(1);
}
.news-content {
    position:absolute;
	bottom:35px;
	left:35px;
    z-index: 9;	
}
.news-content h3 {
	color:#fff;
	font-size: 24px;
}
.news-content span {
	color:#fff;
	background-color:#f91d1c;
	padding: 5px 20px;
	font-size: 14px;
}
.news-content span:hover {
    color: #f91d1c;
    background-color:#fff;
}
.news-item.home {
	min-height: 200px;
}
.mgb20 {
	margin-bottom:20px !important;
}
.row {
	margin-left:-10px;
	margin-right:-10px;
}
.acme-col-3 {
	padding: 0 10px;
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
                           <li class="trail-item trail-end"><span><span>Thư viện hình ảnh</span></span></li>
                        </ul>
                     </div>
                  </div>
               </div>
               <div class="content-area">
                  <main id="main" class="site-main" role="main">
					<div class="row">	
						<?php $i=0; $list = get_gallery_all(); 
												foreach ($list as $data) {
												?>
							<div class="acme-col-3 news-item home <?php if($i<4) echo 'mgb20'; ?>">
								<a class="news-href" href="<?php echo base_url().'thu-vien-hinh-anh/'.$data['ccode']; ?>">
									<div class="news-bg">
										<div class="news-img" style="background-image: url('<?php echo base_url().'upload/gallery/'.$data['cimage'] ?>');"></div>
										<div class="bg-overlay"></div>
									</div>
									<div class="news-content">
										<h3 class="blog_title"><?php echo $data['ctitle']; ?></h3>
										<div><span>Xem thêm →</span></div>
									</div>
								</a> 
							 </div>		
							 <?php $i++;} ?>
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