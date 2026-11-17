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
                     <h1>Lịch sử đơn hàng</h1>
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
                     <li class="breadcrumb-item active">Lịch sử đơn hàng</li>
                  </ol>
               </div>
            </div>
         </div>
      </div>  
<div class="main_content crop-avatar">
         <!-- START SECTION SHOP -->
         <div class="section">
            <div class="container">
               <div class="row">
                  <div class="col-lg-3 col-md-4">
                     <?php $this->load->view('modules/mod_left_profile');?>
                  </div>
                  <div class="col-lg-9 col-md-8">
                     <div class="dashboard_content">
                        <div class="card">
                           <div class="card-header">
                              <h3>Lịch sử đơn hàng</h3>
                           </div>
                           <div class="card-body">
                              <div class="table-responsive">
                                 <table class="table">
                                    <thead>
                                       <tr>
                                          <th>Mã ĐH</th>
                                          <th>Ngày đặt</th>
                                          <th>Tổng tiền</th>
                                          <th>Trạng thái</th>
                                       </tr>
                                    </thead>
                                    <tbody>
									   <?php $list = get_order_by_member($_SESSION['nid_member']); 
									   if(count($list)>0) { 
										   foreach($list as $data) {
											   $status = get_order_status_by_id($data['nid_order_status']);
									   ?>
									   <tr>
                                          <td><?php echo $data['ccode']; ?></td>
                                          <td><?php echo date("d-m-Y",$data['ctime']); ?></td>
                                          <td><?php echo number_format($data['ntotal']); ?></td>
                                          <td><?php echo $status['corder_status']; ?></td>
                                       </tr>
									   <?php } } else { ?>
									   <tr>
                                          <td colspan="4" class="text-center">Chưa có đơn hàng!</td>
                                       </tr>
									   <?php } ?>
                                    </tbody>
                                 </table>
                              </div>
                              <div class="mt-3 justify-content-center pagination_style1">
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <?php $this->load->view('modules/mod_upload_avatar');?>
      </div>    
<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>