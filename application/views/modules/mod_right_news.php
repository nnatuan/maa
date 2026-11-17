<div class="sidebar">
                     <div class="widget">
                        <h5 class="widget_title">Bài Viết Gần Đây</h5>
                        <ul class="widget_recent_post">
							<?php $list = get_news_lastest(); 
							foreach($list as $data) {
							?>
                           <li>
                              <div class="post_footer">
                                 <div class="post_img">
                                    <a href="<?php echo base_url().$data['ccode_cat'].'/'.$data['ccode']; ?>"><img src="<?php echo base_url().'upload/image_article/'.$data['cimage_thumb']; ?>" alt=""></a>
                                 </div>
                                 <div class="post_content">
                                    <h6><a href="<?php echo base_url().$data['ccode_cat'].'/'.$data['ccode']; ?>"><?php echo $data['ctitle']; ?></a></h6>
                                    <p class="small m-0"><?php $pieces = explode("-", $data['ddate02']); echo $pieces[2].'-'.$pieces[1].'-'.$pieces[0]; ?></p>
                                 </div>
                              </div>
                           </li>
                           <?php } ?>
                        </ul>
                     </div>
                  </div>