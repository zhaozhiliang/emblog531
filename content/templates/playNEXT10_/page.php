<?php 
/**
 * 自建页面模板
 */
if(!defined('EMLOG_ROOT')) {exit('error!');} 
?>
<div id="crumb">
位置：<a rel="nofollow" href="<?php echo BLOG_URL; ?>">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<?php echo $log_title; ?>
<span style="position:absolute;right:0px;">
<!--<wb:follow-button uid="2933711627" type="red_3" width="200" height="24" ></wb:follow-button>-->
</span></div>

<div class="content">
<div class="post-list">
<div id="contentleft">
	<h2><?php echo $log_title; ?></h2>
	<?php echo $log_content; ?>
	<?php blog_comments($comments); ?>
	<?php blog_comments_post($logid,$ckname,$ckmail,$ckurl,$verifyCode,$allow_remark); ?>
	<div style="clear:both;"></div>
</div><!--end #contentleft-->
</div>
</div>
<?php
 include View::getView('side');
 include View::getView('footer');
?>