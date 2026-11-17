<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
$route['default_controller']                                        = "home";
$route['/?utm_source=(:any)&utm_medium=(:any)&utm_campaign=(:any)&zarsrc=(:any)'] = "home";
$route['/?zarsrc=(:any)&utm_source=(:any)&utm_medium=(:any)&utm_campaign=(:any)'] = "home";

$route['gioi-thieu']                                                = "about";
$route['about-us']                                                    = "about";
$route['contact-us']                                                    = "contact";
$route['post/(:any)']                                            = "news/detail/$1";

$route['news']                                                   = "news_list/cat/1";
$route['services']                                                   = "news_list/cat/2";
$route['projects']                                                   = "news_list/cat/3";
$route['tin-tuc']                                                   = "news_list/cat/1";
$route['tin-tuc/trang-(:num)']                                                   = "news_list/cat_page/1/$1";
$route['tin-tuc/(:any)']                                            = "news/detail/$1";
$route['dich-vu']                                                   = "news_list/cat/2";
$route['dich-vu/trang-(:num)']                                                   = "news_list/cat_page/2/$1";
$route['dich-vu/(:any)']                                            = "news/detail/$1";

$route['tim-kiem/([a-zA-Z0-9-_]+)/trang-(:num)']						= "search/page/$1/$2";
$route['tim-kiem/(:any)']												= "search/page/$1/1";
$route['tim-kiem']                                                    = "search";