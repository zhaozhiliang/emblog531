<?php 
/**
 * 阅读文章页面
 */
if(!defined('EMLOG_ROOT')) {exit('error!');} 
?>
<div id="crumb">位置：<a rel="nofollow" href="<?php echo BLOG_URL; ?>">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<?php blog_sort($logid); ?>&nbsp;&gt;&nbsp;<?php echo $log_title; ?>
<span style="position:absolute;right:0px;">
<!--<wb:follow-button uid="2933711627" type="red_3" width="200" height="24" ></wb:follow-button>-->
</span></div>

<div class="content">
<div id="post">
<h1><?php topflg($top); ?><?php echo $log_title; ?></h1>
<div id="post-content">
<p><?php echo $log_content; ?></p>

<div class="bshare-custom"><a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="分享到人人网" class="bshare-renren"></a><a title="分享到腾讯微博" class="bshare-qqmb"></a><a title="分享到网易微博" class="bshare-neteasemb"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a><span class="BSHARE_COUNT bshare-share-count">0</span></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=805ec3bb-fc98-489a-b800-431933ffeb35&amp;pophcol=3&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>

<div id="post-meta">
<div class="box-title"><span>文章属性</span></div>
<ul>
<li>文章热度：<span id="post_view_count"><?php echo $views; ?></span></li>
<li>文章标签：<?php blog_tag($logid); ?></li>
<li>生产日期：<?php echo gmdate('Y-n-j G:i l', $date); ?></li>
<li><?php neighbor_log($neighborLog); ?></li>
</ul>
</div>
<div id="comments">
<div class="box-title"><span>精彩评论</span></div>

<?php blog_comments($comments,$params); ?>
<?php blog_comments_post($logid,$ckname,$ckmail,$ckurl,$verifyCode,$allow_remark); ?>

</div></div>

</div>
</div>
<?php
 include View::getView('side');
 include View::getView('footer');
?>