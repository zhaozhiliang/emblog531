<?php 
/**
 * 自定义404页面
 */
if(!defined('EMLOG_ROOT')) {exit('error!');}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>错误提示-页面未找到</title>
<style type="text/css">
<!--
body {
	background-color:#F7F7F7;
	font-family: Arial;
	font-size: 12px;
	line-height:150%;
}
.main {
	background-color:#FFFFFF;
	font-size: 12px;
	color: #666666;
	width:650px;
	margin:60px auto 0px;
	border-radius: 10px;
	padding:30px 10px;
	list-style:none;
	border:#DFDFDF 1px solid;
}
.main p {
	line-height: 18px;
	margin: 5px 20px;
}
-->
</style>
</head>
<body>
<div class="main">
<!--<p>抱歉，你所请求的页面不存在！</p>-->
<div><img src="<?php echo TEMPLATE_URL; ?>images/404pic.jpg" /></div>
<div style="margin:15px 0 0 200px; width:500px;">
    <p>我们正在联系火星总部查找您所需要的页面.请返回等待信息..</p>
    <ul style="margin:0 0 0 20px;; padding:0; font-size:12px;">
        <li style="line-height:20px;">您输入地址时可能存在键入错误</li>
        <li style="line-height:20px;">您所查看的页面也许已经被删除</li>
        <li style="line-height:20px;">不排除阁下人品问题</li>
        <li style="line-height:20px;">电信网通那头的接口可能生锈了</li>
    </ul>
</div>
<p><a href="javascript:history.back(-1);">&laquo;点击返回</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<?php echo BLOG_URL; ?>"><strong>首页</strong></a></p>
</div>
</body>
</html>