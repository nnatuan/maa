<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css" />
<style>
/* ==========================================================================
   POPUP MODAL STYLING (DESKTOP & RESPONSIVE FULL HEIGHT)
   ========================================================================== */
#data_popup_content,
#data_popup_content_2 {
	max-width: 900px;
	width: 100%;
	padding: 30px;
	box-sizing: border-box;
	background: #fff;
	border-radius: 8px;
}

#data_popup_content {
	max-width: 960px;
}

@media (min-width: 992px) {
	#data_popup_content,
	#data_popup_content_2 {
		max-height: 85vh !important;
		overflow-y: auto !important;
	}
}

/* Kích thước các thẻ tiêu đề (h1-h6) bên trong nội dung Popup */
#data_desc h1, #data_desc_2 h1,
#data_popup_content h1, #data_popup_content_2 h1 {
	font-size: 21px !important;
	line-height: 1.35 !important;
	font-weight: 700 !important;
	margin-top: 20px !important;
	margin-bottom: 12px !important;
	padding: 0 !important;
	color: #191919 !important;
}

#data_desc h2, #data_desc_2 h2,
#data_popup_content h2:not(#data_title):not(#data_title_2),
#data_popup_content_2 h2:not(#data_title):not(#data_title_2) {
	font-size: 19px !important;
	line-height: 1.35 !important;
	font-weight: 700 !important;
	margin-top: 18px !important;
	margin-bottom: 10px !important;
	padding: 0 !important;
	color: #191919 !important;
}

#data_desc h3, #data_desc_2 h3,
#data_popup_content h3, #data_popup_content_2 h3 {
	font-size: 17px !important;
	line-height: 1.35 !important;
	font-weight: 700 !important;
	margin-top: 16px !important;
	margin-bottom: 8px !important;
	padding: 0 !important;
	color: #191919 !important;
}

#data_desc h4, #data_desc_2 h4,
#data_popup_content h4, #data_popup_content_2 h4 {
	font-size: 16px !important;
	line-height: 1.4 !important;
	font-weight: 600 !important;
	margin-top: 14px !important;
	margin-bottom: 6px !important;
	padding: 0 !important;
	color: #191919 !important;
}

#data_desc h5, #data_desc_2 h5,
#data_popup_content h5, #data_popup_content_2 h5,
#data_desc h6, #data_desc_2 h6,
#data_popup_content h6, #data_popup_content_2 h6 {
	font-size: 15px !important;
	line-height: 1.4 !important;
	font-weight: 600 !important;
	margin-top: 12px !important;
	margin-bottom: 6px !important;
	padding: 0 !important;
	color: #191919 !important;
}

#data_desc h1 *, #data_desc_2 h1 *,
#data_desc h2 *, #data_desc_2 h2 *,
#data_desc h3 *, #data_desc_2 h3 *,
#data_desc h4 *, #data_desc_2 h4 *,
#data_desc h5 *, #data_desc_2 h5 *,
#data_desc h6 *, #data_desc_2 h6 *,
#data_popup_content h1 *, #data_popup_content_2 h1 *,
#data_popup_content h2:not(#data_title):not(#data_title_2) *,
#data_popup_content_2 h2:not(#data_title):not(#data_title_2) *,
#data_popup_content h3 *, #data_popup_content_2 h3 *,
#data_popup_content h4 *, #data_popup_content_2 h4 * {
	font-size: inherit !important;
	line-height: inherit !important;
}

#data_desc .bt_bb_headline_tag,
#data_desc_2 .bt_bb_headline_tag {
	font-size: 19px !important;
	line-height: 1.35 !important;
}

/* RESPONSIVE: Full height popup trên mobile và tablet */
@media (max-width: 991px) {
	.fancybox-slide--html {
		padding: 0 !important;
		margin: 0 !important;
		height: 100% !important;
		width: 100% !important;
	}

	.fancybox-slide--html::before {
		display: none !important; /* Bỏ phần tử căn giữa dọc */
	}

	.fancybox-slide--html .fancybox-content,
	#data_popup_content,
	#data_popup_content_2 {
		position: fixed !important;
		top: 0 !important;
		left: 0 !important;
		right: 0 !important;
		bottom: 0 !important;
		width: 100% !important;
		max-width: 100% !important;
		height: 100% !important;
		height: 100vh !important;
		height: 100dvh !important;
		min-height: 100% !important;
		min-height: 100vh !important;
		min-height: 100dvh !important;
		max-height: 100% !important;
		max-height: 100vh !important;
		max-height: 100dvh !important;
		margin: 0 !important;
		border-radius: 0 !important;
		padding: 50px 20px 40px 20px !important;
		box-sizing: border-box !important;
		overflow-y: auto !important;
		-webkit-overflow-scrolling: touch !important;
		background: #ffffff !important;
		display: block !important;
	}

	/* Nút close [X] cố định góc trên bên phải */
	.fancybox-slide--html .fancybox-close-small,
	.fancybox-slide--html .fancybox-button.fancybox-close-small {
		position: fixed !important;
		top: 12px !important;
		right: 12px !important;
		z-index: 999999 !important;
		background: #ffffff !important;
		border-radius: 50% !important;
		box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2) !important;
		width: 38px !important;
		height: 38px !important;
		padding: 7px !important;
		color: #191919 !important;
		display: flex !important;
		align-items: center !important;
		justify-content: center !important;
		opacity: 1 !important;
		cursor: pointer !important;
	}

	.fancybox-slide--html .fancybox-close-small:hover {
		background: #f0f0f0 !important;
	}

	.fancybox-slide--html .fancybox-close-small svg {
		width: 20px !important;
		height: 20px !important;
	}

	/* Tiêu đề chính của Popup trên mobile */
	#data_popup_content_2 #data_title_2 {
		font-size: 20px !important;
		line-height: 1.3 !important;
		margin-top: 0 !important;
		margin-bottom: 16px !important;
		padding-bottom: 10px !important;
		padding-right: 40px !important;
		border-bottom: 1px solid #eee !important;
		color: #191919 !important;
		word-break: break-word !important;
	}

	#data_popup_content #data_title {
		font-size: 20px !important;
		line-height: 1.3 !important;
		margin-top: 0 !important;
		margin-bottom: 8px !important;
		padding-right: 40px !important;
	}

	/* Thu nhỏ các mục tiêu đề lớn trong nội dung popup trên mobile */
	#data_desc h1, #data_desc_2 h1,
	#data_popup_content h1, #data_popup_content_2 h1 {
		font-size: 18px !important;
		line-height: 1.35 !important;
		margin-top: 16px !important;
		margin-bottom: 10px !important;
	}

	#data_desc h2, #data_desc_2 h2,
	#data_popup_content h2:not(#data_title):not(#data_title_2),
	#data_popup_content_2 h2:not(#data_title):not(#data_title_2) {
		font-size: 17px !important;
		line-height: 1.35 !important;
		margin-top: 15px !important;
		margin-bottom: 8px !important;
	}

	#data_desc h3, #data_desc_2 h3,
	#data_popup_content h3, #data_popup_content_2 h3 {
		font-size: 15.5px !important;
		line-height: 1.35 !important;
		margin-top: 14px !important;
		margin-bottom: 8px !important;
	}

	#data_desc h4, #data_desc_2 h4,
	#data_popup_content h4, #data_popup_content_2 h4 {
		font-size: 14.5px !important;
		line-height: 1.4 !important;
		margin-top: 12px !important;
		margin-bottom: 6px !important;
	}

	#data_desc h5, #data_desc_2 h5,
	#data_popup_content h5, #data_popup_content_2 h5,
	#data_desc h6, #data_desc_2 h6,
	#data_popup_content h6, #data_popup_content_2 h6 {
		font-size: 14px !important;
		line-height: 1.4 !important;
		margin-top: 10px !important;
		margin-bottom: 6px !important;
	}

	#data_desc .bt_bb_headline_tag,
	#data_desc_2 .bt_bb_headline_tag {
		font-size: 17px !important;
		line-height: 1.35 !important;
	}

	#data_popup_content_2 #data_desc_2 {
		font-size: 15px !important;
		line-height: 1.75 !important;
		color: #333333 !important;
		overflow-wrap: break-word !important;
		word-break: break-word !important;
	}

	#data_popup_content_2 img {
		max-width: 100% !important;
		height: auto !important;
		margin: 15px auto !important;
		display: block !important;
		border-radius: 4px !important;
	}

	/* Layout Popup 1 (Our Team) trên mobile */
	#data_popup_content .col-md-4,
	#data_popup_content .col-sm-4,
	#data_popup_content .col-md-8,
	#data_popup_content .col-sm-8,
	#data_popup_content .col-xs-12.col-sm-3,
	#data_popup_content .col-xs-12.col-sm-9 {
		flex: 0 0 100% !important;
		max-width: 100% !important;
		width: 100% !important;
		padding: 0 !important;
	}

	#data_popup_content img#data_img {
		max-width: 240px !important;
		max-height: 300px !important;
		height: auto !important;
		object-fit: cover !important;
		margin: 0 auto 15px auto !important;
		display: block !important;
		border-radius: 6px !important;
	}

	#data_popup_content #data_desc {
		font-size: 15px !important;
		line-height: 1.75 !important;
	}
}
</style>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js"></script>
		<script>
		function number_format(number) {
			// Làm tròn số và chuyển đổi thành số nguyên
			number = Math.round(number);
			
			// Chuyển số thành chuỗi để dễ định dạng
			const numberString = number.toString();
			
			// Chia phần nguyên thành phần hàng nghìn
			const integerPart = numberString.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			return integerPart; // Hoặc có thể dùng '₫' thay vì 'VNĐ'
		}

function loadBootstrapAssets(callback) {
	if (callback) callback();
}

jQuery(document).on('click', '.btn_popup', function (e) {
	e.preventDefault();
	var id = jQuery(e.currentTarget).data('id') || jQuery(e.target).closest('[data-id]').data('id') || jQuery(this).data('id');

	jQuery.ajax({
		url: '<?php echo base_url(); ?>data_popup',
		data: { id: id },
		type: 'POST',
		success: function (data) {
			var rs = typeof data === 'object' ? data : JSON.parse(data);
			jQuery('#data_title').text(rs.ctitle);
			jQuery('#data_desc').html(rs.ccontent);
			jQuery('#data_code').html(rs.cauthor);
			jQuery('#data_img').attr('src', '<?php echo base_url().'upload/image_article/'; ?>' + rs.cimage_thumb);

			jQuery.fancybox.open({
				src: '#data_popup_content',
				type: 'inline',
				opts: {
					title: 'Tin tức',
					autoFocus: false,
					trapFocus: false,
					touch: false,
					beforeShow: function (instance, current) {
						if (current && current.$content) {
							current.$content.scrollTop(0);
						}
						jQuery('.fancybox-slide').scrollTop(0);
					},
					afterShow: function (instance, current) {
						if (current && current.$content) {
							current.$content.scrollTop(0);
						}
						jQuery('.fancybox-slide').scrollTop(0);
						jQuery('.fancybox-inner').scrollTop(0);
						var $slide = jQuery('.fancybox-slide--current');
						if ($slide.length) {
							$slide.scrollTop(0);
						}
						jQuery('#data_popup_content').scrollTop(0);
						setTimeout(function () {
							jQuery('.fancybox-slide').scrollTop(0);
							if (current && current.$content) {
								current.$content.scrollTop(0);
							}
						}, 30);
					}
				}
			});
		}
	});
});

jQuery(document).on('click', '.btn_popup_2', function (e) {
	e.preventDefault();
	var id = jQuery(e.currentTarget).data('id') || jQuery(e.target).closest('[data-id]').data('id') || jQuery(this).data('id');

	jQuery.ajax({
		url: '<?php echo base_url(); ?>data_popup',
		data: { id: id },
		type: 'POST',
		success: function (data) {
			var rs = typeof data === 'object' ? data : JSON.parse(data);
			jQuery('#data_title_2').text(rs.ctitle);
			jQuery('#data_desc_2').html(rs.ccontent);

			jQuery.fancybox.open({
				src: '#data_popup_content_2',
				type: 'inline',
				opts: {
					title: 'Tin tức',
					autoFocus: false,
					trapFocus: false,
					touch: false,
					beforeShow: function (instance, current) {
						if (current && current.$content) {
							current.$content.scrollTop(0);
						}
						jQuery('.fancybox-slide').scrollTop(0);
					},
					afterShow: function (instance, current) {
						if (current && current.$content) {
							current.$content.scrollTop(0);
						}
						jQuery('.fancybox-slide').scrollTop(0);
						jQuery('.fancybox-inner').scrollTop(0);
						var $slide = jQuery('.fancybox-slide--current');
						if ($slide.length) {
							$slide.scrollTop(0);
						}
						jQuery('#data_popup_content_2').scrollTop(0);
						setTimeout(function () {
							jQuery('.fancybox-slide').scrollTop(0);
							if (current && current.$content) {
								current.$content.scrollTop(0);
							}
						}, 30);
					}
				}
			});
		}
	});
});
</script>
<script type="text/javascript">
                function select_lang(_lang) {
					  jQuery.ajax({
						type: "POST",
						url: "<?php echo base_url().'ajax_actions/set_lang'?>",
						data: { lang: _lang },
						success: function(msg) {
							location.reload();
						}
					});
			}	
        </script>
</body>
</html>