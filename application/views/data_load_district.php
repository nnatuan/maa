<?php
$nid = $_POST['nid']; 
$list = get_district_by_province($nid);
foreach($list as $data) {
?>
<option value="<?php echo $data['nid']; ?>"><?php echo $data['cname']; ?></option>
<?php } ?>
