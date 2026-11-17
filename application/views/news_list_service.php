<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');
   ?>   
<style>
.trx_addons_column-1_3 {
    width: 33.1%;
}
</style>
<div class="page_content_wrap">
               <div class="content_wrap">
                  <div class="content">
                     <a id="content_skip_link_anchor" class="invetex_skip_link_anchor" href="#"></a>
                     <article id="post-18416"
                        class="post_item_single post_type_page post-18416 page type-page status-publish hentry">
                        <div class="post_content entry-content">
                           <div data-elementor-type="wp-page" data-elementor-id="18416" class="elementor elementor-18416">
                              <div class="elementor-inner">
                                 <div class="elementor-section-wrap">
                                    <section class="elementor-section elementor-top-section elementor-element elementor-element-3e98b69 elementor-section-stretched elementor-section-boxed elementor-section-height-default elementor-section-height-default sc_fly_static" data-id="3e98b69" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;stretch_section&quot;:&quot;section-stretched&quot;}">
                                       <div class="elementor-container elementor-column-gap-extended">
                                          <div class="elementor-row">
                                             <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-6099e05 sc_inner_width_none sc_content_align_inherit sc_layouts_column_icons_position_left sc_fly_static" data-id="6099e05" data-element_type="column">
                                                <div class="elementor-column-wrap elementor-element-populated">
                                                   <div class="elementor-widget-wrap">
                                                      <div class="elementor-element elementor-element-7e2ba4f sc_height_huge sc_fly_static elementor-widget elementor-widget-spacer" data-id="7e2ba4f" data-element_type="widget" data-widget_type="spacer.default">
                                                         <div class="elementor-widget-container">
                                                            <div class="elementor-spacer">
                                                               <div class="elementor-spacer-inner"></div>
                                                            </div>
                                                         </div>
                                                      </div>
                                                      <div class="elementor-element elementor-element-9514ab9 sc_fly_static elementor-widget elementor-widget-trx_sc_team" data-id="9514ab9" data-element_type="widget" data-widget_type="trx_sc_team.default">
                                                         <div class="elementor-widget-container">
                                                            <div 		class="sc_team sc_team_hover">
                                                               <div class="sc_team_columns_wrap sc_item_columns sc_item_posts_container trx_addons_columns_wrap columns_padding_bottom">
                                                                  <?php  
																$cat_link= base_url().'tin-tuc/';
																foreach($obj_news_list as $data) {
																?>
																	<a href="<?php echo base_url().'tin-tuc/'.$data['ccode']; ?>">
																  <div class="trx_addons_column-1_3 trx_addons_column-1_2-mobile">
                                                                     <div data-post-id="1164" class="sc_team_item sc_item_container post_container no_links has_post_thumbnail  post-1164 cpt_team type-cpt_team status-publish has-post-thumbnail hentry cpt_team_group-financiers">
                                                                        <div class="post_featured sc_team_item_thumb trx_addons_hover trx_addons_hover_style_info_anim">
                                                                           <img fetchpriority="high" decoding="async" width="570" height="696" src="<?php echo base_url().'upload/image_article/'.$data['cimage_thumb'] ?>" class="attachment-invetex-thumb-rectangle size-invetex-thumb-rectangle wp-post-image" alt="" srcset="<?php echo base_url().'upload/image_article/'.$data['cimage_thumb'] ?>" sizes="(max-width: 600px) 100vw, 570px" />
                                                                           <div class="trx_addons_hover_team">
                                                                              <h4 class="sc_team_item_title entry-title trx_addons_hover_title"><a href="<?php echo base_url().'dich-vu/'.$data['ccode']; ?>"><?php echo $data['ctitle']; ?></a></h4>
                                                                              <div class="sc_team_item_subtitle trx_addons_hover_title"><?php echo $data['cshort_content']; ?></div>
                                                                              
                                                                           </div>
                                                                           <a class="post_link sc_team_item_link" href="<?php echo base_url().'dich-vu/'.$data['ccode']; ?>"></a>
                                                                           <div class="trx_addons_hover_mask"></div>
                                                                        </div>
                                                                     </div>
                                                                  </div>
																  </a>
                                                                  <?php } ?>
															   </div>
                                                            </div>
                                                         </div>
                                                      </div>
                                                      <div class="elementor-element elementor-element-1c5c6ef sc_height_huge sc_fly_static elementor-widget elementor-widget-spacer" data-id="1c5c6ef" data-element_type="widget" data-widget_type="spacer.default">
                                                         <div class="elementor-widget-container">
                                                            <div class="elementor-spacer">
                                                               <div class="elementor-spacer-inner"></div>
                                                            </div>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </section>
                                    
								 </div>
                              </div>
                           </div>
                        </div>
                        <!-- .entry-content -->
                     </article>
                  </div>
               </div>
            </div>
                                   
<?php 
   $this->load->view('modules/mod_footer');
   $this->load->view('footer');
   ?>