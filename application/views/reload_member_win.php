<?php 
$nid_product_bid = $_POST['nid_product_bid']; 
$time_today = strtotime(date("m/d/Y",time()));
$bid = lay_dau_gia_cao_nhat_theo_sp_bid($nid_product_bid,$time_today);
if(isset($bid['nid'])) {
$member = get_member_by_id($bid['nid_member']);
?>
Người ra giá cao nhất hiện tại: <strong><?php echo $member['cname']; ?></strong><br>
Số tiền đấu giá: <strong><?php echo number_format($bid['cprice']); ?></strong>		
<?php } else { ?>
<strong>Hãy là người ra giá đầu tiên!</strong>
<?php } ?>