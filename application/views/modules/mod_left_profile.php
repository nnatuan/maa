<div class="ps-widget__header">
                        <form id="avatar-upload-form" enctype="multipart/form-data" action="javascript:void(0)" onsubmit="return false">
                           <div class="avatar-upload-container">
                              <div id="account-avatar">
                                 <div class="profile-image">
                                    <div class="avatar-view mt-card-avatar">
                                       <img class="br2" src="<?php echo base_url(); ?>images/user.png" alt="AT" width="150">
                                       <div class="mt-overlay br2">
                                          <span><i class="linearicons-pencil"></i></span>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </form>
                     </div>
                     <br>
                     <div class="dashboard_menu">
						<ul class="nav nav-tabs flex-column" role="tablist">
                           <li class="nav-item">
                              <a class="nav-link <?php if($menu_top=="profile") echo 'active'; ?>" href="<?php echo base_url(); ?>profile"><i class="ti-layout-grid2"></i>Thông tin tài khoản</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link <?php if($menu_top=="history") echo 'active'; ?>" href="<?php echo base_url(); ?>lich-su-don-hang"><i class="ti-shopping-cart-full"></i>Lịch sử đơn hàng</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link <?php if($menu_top=="update_profile") echo 'active'; ?>" href="<?php echo base_url(); ?>cap-nhat-thong-tin"><i class="ti-id-badge"></i>Cập nhật thông tin</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link <?php if($menu_top=="change_pass") echo 'active'; ?>" href="<?php echo base_url(); ?>doi-mat-khau"><i class="ti-id-badge"></i>Đổi mật khẩu</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="<?php echo base_url(); ?>ajax_actions/dang_xuat"><i class="ti-lock"></i>Đăng xuất</a>
                           </li>
                        </ul>
					</div>