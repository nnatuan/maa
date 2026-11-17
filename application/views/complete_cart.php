<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   ?> 
<div class="breadcrumb_section bg_gray">
         <div class="container">
            <div class="row align-items-center">
               <div class="col-md-6">
                  <div class="page-title">
                     <h1>Hoàn tất đặt hàng</h1>
                  </div>
               </div>
               <div class="col-md-6">
                  <ol class="breadcrumb justify-content-md-end" itemscope itemtype="http://schema.org/BreadcrumbList">
                     <li class="breadcrumb-item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                        <meta itemprop="position" content="1" />
                        <a href="<?php echo base_url(); ?>" itemprop="item" title="Home">
                           Trang chủ
                           <meta itemprop="name" content="Home" />
                        </a>
                     </li>
                     <li class="breadcrumb-item active">Hoàn tất đặt hàng</li>
                  </ol>
               </div>
            </div>
         </div>
      </div>   
<div class="main-full">
            <div class="main" style="padding:50px 0;min-height: 500px;">
               <div class="container text-center">


			

				<div style="width:880px;margin:0 auto;">
				  <h3 style="margin-bottom:20px;font-size: 20px;"><strong>Cảm ơn quý khách đã tin tưởng và sử dụng sản phẩm của chúng tôi!</strong></h3>
				  <p>Chúng tôi rất vui thông báo đơn hàng của quý khách đã được tiếp nhận và đang trong quá trình xử lý.<br>
				  Đơn hàng sẽ được giao đến cho Quý Khách trong vòng 24 giờ. Chúng tôi sẽ thông báo đến Quý Khách ngay khi hàng chuẩn bị được giao.</p>
					<a href="<?php echo base_url();?>" style="text-decoration:underline;">Quay về trang chủ</a>
				</div>

                 
               </div>
            </div>
         </div>
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>