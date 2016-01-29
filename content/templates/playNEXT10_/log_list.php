<?php 
/**
 * 站点首页模板
 */
if(!defined('EMLOG_ROOT')) {exit('error!');} 
?>
<div id="crumb">
<?php if("http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'] == BLOG_URL): ?>
位置：<a rel="nofollow" href="<?php echo BLOG_URL; ?>">首页</a>
<?php else: ?>
位置：<a rel="nofollow" href="<?php echo BLOG_URL; ?>">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<?php echo $sortName;?><?php echo $tagurl;?><?php echo $_GET['keyword'];?>
<?php endif ;?>
<span style="position:absolute;right:0px;">
<!--<wb:follow-button uid="2933711627" type="red_3" width="200" height="24" ></wb:follow-button>-->
</span></div>

<div class="content">
<div class="post-list">

<!--日志循环输出开始-->
<?php 
if (!empty($logs)):
foreach($logs as $value): 
?>

<div class="post">
<div class="post-thumb">
		<?php
	    preg_match_all("|<img[^>]+src=\"([^>\"]+)\"?[^>]*>|is", $value['content'], $img);
        $imgsrc = !empty($img[1]) ? $img[1][0] : TEMPLATE_URL.'images/random/'.rand(1,9).'.jpg';?>
		
        <a href="<?php echo $value['log_url']; ?>" title="<?php echo $value['log_title']; ?>">
        <img src="<?php echo $imgsrc; ?>" alt="<?php echo $value['log_title']; ?>"/></a>
</div>
<div class="post-body">
<h2><a href="<?php echo $value['log_url']; ?>" rel="bookmark"><?php echo $value['log_title']; ?></a></h2>
<div class="post-attr">[ <?php blog_sort($value['logid']); ?> ]
&nbsp;&nbsp;&nbsp;&nbsp;
评论：<a href="<?php echo $value['log_url']; ?>" title="<?php echo $value['log_title']; ?>上的评论"><?php echo $value['comnum']; ?></a>
&nbsp;&nbsp;&nbsp;&nbsp;
热度：<span class="wpviews" id="views_135"><?php echo $value['views']; ?></span>
</div>
<div class="post-content">
<?php echo subString(strip_tags($value['log_description']),0,128,"..."); ?></div>
<div class="post-meta">
生产日期：<?php echo gmdate('Y-n-j', $value['date']); ?>  |  关键字：
<?php blog_tag($value['logid']); ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php editflg($value['logid'],$value['author']); ?>
</div>
</div>
<div class="post-menu">
<a class="readmore" href="<?php echo $value['log_url']; ?>">阅读全文</a></div>
<div class="clear"></div></div>


<?php 
endforeach;
else:
?>

	<h2>未找到</h2>
	<p>抱歉，没有符合您查询条件的结果。</p>
<?php endif;?>
</div>
<div class="pagenavi">
<?php echo $page_url;?>
</div>
</div>


<!-- end #contentleft-->
<?php
 include View::getView('side');
 include View::getView('footer');
?>