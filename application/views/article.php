<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   $obj_content = Bget_article($nid);
   ?>  
<div class="breadcrumb_section bg_gray">
         <div class="container">
            <div class="row align-items-center">
               <div class="col-md-6">
                  <div class="page-title">
                     <h1><?php echo $obj_content['ctitle']?></h1>
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
                     <li class="breadcrumb-item active"><?php echo $obj_content['ctitle']?></li>
                  </ol>
               </div>
            </div>
         </div>
      </div>   
<div class="main-full">
        <section id="about_intro" class="introduce">
            <div class="container">
                <div class="intro_info" style="margin-top:30px;">
                    <?php echo $obj_content['eng_ccontent']?>
                </div>
            </div>
        </section>

            </div>
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>