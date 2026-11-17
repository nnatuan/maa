<div class="modal fade" id="avatar-modal" tabindex="-1" role="dialog" aria-labelledby="avatar-modal-label"
            aria-hidden="true">
            <div class="modal-dialog modal-lg">
               <div class="modal-content">
                  <form class="avatar-form" method="post" action="<?php echo base_url(); ?>profile" enctype="multipart/form-data">
                     <div class="modal-header">
                        <h4 class="modal-title" id="avatar-modal-label"><i class="til_img"></i><strong>Profile Image</strong></h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     </div>
                     <div class="modal-body">
                        <div class="avatar-body">
                           <!-- Upload image and data -->
                           <div class="avatar-upload">
                              <input class="avatar-src" name="avatar_src" type="hidden">
                              <input class="avatar-data" name="avatar_data" type="hidden">
                              <input type="hidden" name="_token" value="nemGvciBO3HczpbfOXYHiUjBlEtdJh7RR34Ti4fV">
                              <label for="avatarInput">New image</label>
                              <input class="avatar-input" id="avatarInput" name="avatar_file" type="file">
                           </div>
                           <!-- Crop and preview -->
                           <div class="row">
                              <div class="col-md-9">
                                 <div class="avatar-wrapper"></div>
                                 <div class="error-message text-danger" style="display: none"></div>
                              </div>
                              <div class="col-md-3 avatar-preview-wrapper">
                                 <div class="avatar-preview preview-lg"></div>
                                 <div class="avatar-preview preview-md"></div>
                                 <div class="avatar-preview preview-sm"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="modal-footer">
                        <button class="btn btn-dark btn-sm" type="button" data-dismiss="modal">Close</button>
                        <button class="btn btn-fill-out btn-sm avatar-save" type="submit" name="btn_submit_avatar" value="submit">Save</button>
                     </div>
					 <input type="hidden" name="hidden_image_old"  value="<?php echo $member['cimage']; ?>" />
                  </form>
               </div>
            </div>
         </div>
         <!-- /.modal -->