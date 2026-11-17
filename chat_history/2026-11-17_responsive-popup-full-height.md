# Nhật ký phiên làm việc: Responsive Popup Full Height & Thu Nhỏ Tiêu Đề

### Yêu cầu
- Khi bấm nút "View more" (và tất cả popup modal khác) trên giao diện responsive/mobile, popup phải hiển thị full height toàn màn hình để dễ đọc nội dung, tránh bị co cụm thành khung nhỏ ở giữa màn hình.
- Các mục tiêu đề lớn (`h1` - `h6`, headline) bên trong nội dung popup có cỡ chữ quá lớn (bị ảnh hưởng bởi global theme styles 3.8em - 5.15em), cần thu nhỏ lại cho cân đối, hài hòa và dễ đọc.

### Giải pháp & Thay đổi
- `application/views/footer.php`:
  - Thêm CSS responsive `@media (max-width: 991px)` ngay sau Fancybox CSS: loại bỏ padding và căn giữa dọc của `.fancybox-slide--html`, ép full height và full width (100% / 100vh / 100dvh) cho `.fancybox-content`, `#data_popup_content`, `#data_popup_content_2`, hỗ trợ cuộn mượt (`overflow-y: auto`, `-webkit-overflow-scrolling: touch`).
  - Cố định nút đóng `[X]` (`position: fixed`) ở góc trên bên phải màn hình trên mobile.
  - Loại bỏ các tham số gán cứng kích thước (`width: 1080, height: 600, autoSize: true`) trong `jQuery.fancybox.open()` của `.btn_popup` và `.btn_popup_2`.
  - Khống chế kích thước toàn bộ các thẻ tiêu đề `h1` - `h6`, `.bt_bb_headline_tag` bên trong `#data_desc`, `#data_desc_2`, `#data_popup_content`, `#data_popup_content_2`:
    - Desktop: `h1` (21px), `h2` (19px), `h3` (17px), `h4` (16px), `h5-h6` (15px).
    - Mobile (≤991px): Tiêu đề chính popup (20px), `h1` (18px), `h2` (17px), `h3` (15.5px), `h4` (14.5px), `h5-h6` (14px).
    - Ép `font-size: inherit !important` cho tất cả các thẻ con lồng bên trong heading (`*`) để triệt tiêu inline style cỡ lớn.
- `css/my_style.css`:
  - Đồng bộ khối CSS popup responsive full height và quy tắc thu nhỏ heading cho mobile/tablet (`max-width: 991px`) và desktop (`min-width: 992px`).
- `application/views/home.php`:
  - Đồng bộ quy tắc CSS popup nội tuyến của trang chủ khớp với `footer.php` và `my_style.css`.

### Trạng thái / Lưu ý
- Đã hoàn thành: popup full height trên mobile/tablet và các tiêu đề lớn bên trong nội dung hiển thị cân đối, vừa vặn không bị tràn khung.
- Không phát sinh thay đổi cấu trúc CSDL.
