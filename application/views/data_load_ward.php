<?php
$nid = $_POST['nid']; 
$list = get_ward_by_district($nid);
foreach($list as $data) {
?>
<option value="<?php echo $data['nid']; ?>"><?php echo $data['cname']; ?></option>
<?php } ?>
