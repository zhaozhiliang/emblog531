<?php
/*
Template Name:playNEXT
Description:一款移植主题，原wp版:playnext.cn
Version:1.0
Author:kiny
Author Url:http://www.33665.net
Sidebar Amount:1
*/
if(!defined('EMLOG_ROOT')) {exit('error!');}
require_once View::getView('module');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN">
<html xmlns:wb="http://open.weibo.com/wb">

<head>
<meta name="baidu-site-verification" content="JR1Uj2BaFR"/>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title><?php echo $site_title; ?></title>
<meta name="keywords" content="<?php echo $site_key; ?>" />
<meta name="description" content="<?php echo $site_description; ?>" />
<meta property="wb:webmaster" content="614757ac472e5e3a" />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="<?php echo BLOG_URL; ?>xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="<?php echo BLOG_URL; ?>wlwmanifest.xml" />
<link rel="alternate" type="application/rss+xml" title="RSS"  href="<?php echo BLOG_URL; ?>rss.php" />
<link rel="stylesheet" type="text/css" media="all" href="<?php echo TEMPLATE_URL; ?>style.css" /> 
<link href="<?php echo BLOG_URL; ?>favicon.ico" rel="shortcut icon" type="image/x-icon">
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
<script src="<?php echo BLOG_URL; ?>include/lib/js/common_tpl.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TEMPLATE_URL; ?>libs/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript">var _gaq = _gaq || [];</script>
<script type="text/javascript" src="<?php echo TEMPLATE_URL; ?>libs/common.js"></script>


</head>
<body>
<div id="main">


<div id="header">
<div id="header-container">
<div id="header-left">
<h1 id="logo">
<a href="<?php echo BLOG_URL; ?>" title="<?php echo $site_title; ?> - 首页">homepage</a>
</h1></div>
<div id="header-right">
<div id="header-icons">
<ul>
<li><a class="icon-ips" target="_blank" title="title" href="#">page1</a></li>
<li><a class="icon-ipc" target="_blank" title="title" href="#">page2</a></li>
<li><a class="icon-zhaofile" target="_blank" title="检索" href="/index.php?keyword=php">page3</a></li>
<li><a class="icon-rss" target="_blank" title="订阅" href="/rss.php">订阅</a>
</li></ul></div></div>
<div class="clear"></div>
<div id="header-nav">
<?php blog_navi();?>
<div class="header-search">
<form target="_blank" action="<?php echo BLOG_URL; ?>index.php" id="cse-search-box"><div>

<input class="search-text-box" type="text" name="keyword" onblur="if(this.value==''){this.value='搜索神马的最有爱了...';}" onfocus="this.value='';" value="搜索神马的最有爱了..." size="31" />
<input type="submit" onmouseover="this.className='header-search-hover'" onmouseout="this.className='header-search-normal'" class="header-search-normal" value="" /></div>
<script language="javascript">/*<![CDATA[*/var isIE = (navigator.userAgent.indexOf('MSIE') >= 0) && (navigator.userAgent.indexOf('Opera') < 0);if(isIE){document.getElementById("hl").value="zh-TW";}/*]]>*/</script>
</form></div></div>
<div class="clear"></div>
</div></div>
<div id="container">


