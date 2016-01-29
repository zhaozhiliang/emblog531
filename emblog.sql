DROP TABLE IF EXISTS emlog_blog;
CREATE TABLE emlog_blog (
  gid int(10) unsigned NOT NULL auto_increment,
  title varchar(255) NOT NULL default '',
  date bigint(20) NOT NULL,
  content longtext NOT NULL,
  excerpt longtext NOT NULL,
  alias VARCHAR(200) NOT NULL DEFAULT '',
  author int(10) NOT NULL default '1',
  sortid int(10) NOT NULL default '-1',
  type varchar(20) NOT NULL default 'blog',
  views int(10) unsigned NOT NULL default '0',
  comnum int(10) unsigned NOT NULL default '0',
  attnum int(10) unsigned NOT NULL default '0',
  top enum('n','y') NOT NULL default 'n',
  sortop enum('n','y') NOT NULL default 'n',
  hide enum('n','y') NOT NULL default 'n',
  checked enum('n','y') NOT NULL default 'y',
  allow_remark enum('n','y') NOT NULL default 'y',
  password varchar(255) NOT NULL default '',
  template varchar(255) NOT NULL default '',
  PRIMARY KEY  (gid),
  KEY date (date),
  KEY author (author),
  KEY sortid (sortid),
  KEY type (type),
  KEY views (views),
  KEY comnum (comnum),
  KEY hide (hide)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;
INSERT INTO emlog_blog (gid,title,date,content,excerpt,author,views,comnum,attnum,top,sortop,hide,allow_remark,password) VALUES (1, '欢迎使用emlog', '1454057859', '恭喜您成功安装了emlog，这是系统自动生成的演示文章。编辑或者删除它，然后开始您的创作吧！', '', 1, 0, 0, 0, 'n', 'n', 'n', 'y', '');
DROP TABLE IF EXISTS emlog_attachment;
CREATE TABLE emlog_attachment (
  aid int(10) unsigned NOT NULL auto_increment,
  blogid int(10) unsigned NOT NULL default '0',
  filename varchar(255) NOT NULL default '',
  filesize int(10) NOT NULL default '0',
  filepath varchar(255) NOT NULL default '',
  addtime bigint(20) NOT NULL default '0',
  width int(10) NOT NULL default '0',
  height int(10) NOT NULL default '0',
  mimetype varchar(40) NOT NULL default '',
  thumfor int(10) NOT NULL default 0,
  PRIMARY KEY  (aid),
  KEY blogid (blogid)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS emlog_comment;
CREATE TABLE emlog_comment (
  cid int(10) unsigned NOT NULL auto_increment,
  gid int(10) unsigned NOT NULL default '0',
  pid int(10) unsigned NOT NULL default '0',
  date bigint(20) NOT NULL,
  poster varchar(20) NOT NULL default '',
  comment text NOT NULL,
  mail varchar(60) NOT NULL default '',
  url varchar(75) NOT NULL default '',
  ip varchar(128) NOT NULL default '',
  hide enum('n','y') NOT NULL default 'n',
  PRIMARY KEY  (cid),
  KEY gid (gid),
  KEY date (date),
  KEY hide (hide)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS emlog_options;
CREATE TABLE emlog_options (
option_id INT( 11 ) UNSIGNED NOT NULL auto_increment,
option_name VARCHAR( 255 ) NOT NULL ,
option_value LONGTEXT NOT NULL ,
PRIMARY KEY (option_id),
KEY option_name (option_name)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;
INSERT INTO emlog_options (option_name, option_value) VALUES ('blogname','点滴记忆');
INSERT INTO emlog_options (option_name, option_value) VALUES ('bloginfo','使用emlog搭建的站点');
INSERT INTO emlog_options (option_name, option_value) VALUES ('site_title','');
INSERT INTO emlog_options (option_name, option_value) VALUES ('site_description','');
INSERT INTO emlog_options (option_name, option_value) VALUES ('site_key','emlog');
INSERT INTO emlog_options (option_name, option_value) VALUES ('log_title_style','0');
INSERT INTO emlog_options (option_name, option_value) VALUES ('blogurl','http://z.emblog.com/');
INSERT INTO emlog_options (option_name, option_value) VALUES ('icp','');
INSERT INTO emlog_options (option_name, option_value) VALUES ('footer_info','');
INSERT INTO emlog_options (option_name, option_value) VALUES ('admin_perpage_num','15');
INSERT INTO emlog_options (option_name, option_value) VALUES ('rss_output_num','0');
INSERT INTO emlog_options (option_name, option_value) VALUES ('rss_output_fulltext','y');
INSERT INTO emlog_options (option_name, option_value) VALUES ('index_lognum','10');
INSERT INTO emlog_options (option_name, option_value) VALUES ('index_comnum','10');
INSERT INTO emlog_options (option_name, option_value) VALUES ('index_twnum','10');
INSERT INTO emlog_options (option_name, option_value) VALUES ('index_newtwnum','5');
INSERT INTO emlog_options (option_name, option_value) VALUES ('index_newlognum','5');
INSERT INTO emlog_options (option_name, option_value) VALUES ('index_randlognum','5');
INSERT INTO emlog_options (option_name, option_value) VALUES ('index_hotlognum','5');
INSERT INTO emlog_options (option_name, option_value) VALUES ('comment_subnum','20');
INSERT INTO emlog_options (option_name, option_value) VALUES ('nonce_templet','default');
INSERT INTO emlog_options (option_name, option_value) VALUES ('admin_style','default');
INSERT INTO emlog_options (option_name, option_value) VALUES ('tpl_sidenum','1');
INSERT INTO emlog_options (option_name, option_value) VALUES ('comment_code','n');
INSERT INTO emlog_options (option_name, option_value) VALUES ('comment_needchinese','y');
INSERT INTO emlog_options (option_name, option_value) VALUES ('comment_interval',60);
INSERT INTO emlog_options (option_name, option_value) VALUES ('isgravatar','y');
INSERT INTO emlog_options (option_name, option_value) VALUES ('isthumbnail','y');
INSERT INTO emlog_options (option_name, option_value) VALUES ('att_maxsize','20480');
INSERT INTO emlog_options (option_name, option_value) VALUES ('att_type','rar,zip,gif,jpg,jpeg,png,txt,pdf,docx,doc,xls,xlsx');
INSERT INTO emlog_options (option_name, option_value) VALUES ('att_imgmaxw','420');
INSERT INTO emlog_options (option_name, option_value) VALUES ('att_imgmaxh','460');
INSERT INTO emlog_options (option_name, option_value) VALUES ('comment_paging','y');
INSERT INTO emlog_options (option_name, option_value) VALUES ('comment_pnum','10');
INSERT INTO emlog_options (option_name, option_value) VALUES ('comment_order','newer');
INSERT INTO emlog_options (option_name, option_value) VALUES ('login_code','n');
INSERT INTO emlog_options (option_name, option_value) VALUES ('reply_code','n');
INSERT INTO emlog_options (option_name, option_value) VALUES ('iscomment','y');
INSERT INTO emlog_options (option_name, option_value) VALUES ('ischkcomment','y');
INSERT INTO emlog_options (option_name, option_value) VALUES ('ischkreply','n');
INSERT INTO emlog_options (option_name, option_value) VALUES ('isurlrewrite','0');
INSERT INTO emlog_options (option_name, option_value) VALUES ('isalias','n');
INSERT INTO emlog_options (option_name, option_value) VALUES ('isalias_html','n');
INSERT INTO emlog_options (option_name, option_value) VALUES ('isgzipenable','n');
INSERT INTO emlog_options (option_name, option_value) VALUES ('isxmlrpcenable','n');
INSERT INTO emlog_options (option_name, option_value) VALUES ('ismobile','n');
INSERT INTO emlog_options (option_name, option_value) VALUES ('isexcerpt','n');
INSERT INTO emlog_options (option_name, option_value) VALUES ('excerpt_subnum','300');
INSERT INTO emlog_options (option_name, option_value) VALUES ('istwitter','y');
INSERT INTO emlog_options (option_name, option_value) VALUES ('istreply','n');
INSERT INTO emlog_options (option_name, option_value) VALUES ('topimg','content/templates/default/images/top/default.jpg');
INSERT INTO emlog_options (option_name, option_value) VALUES ('custom_topimgs','a:0:{}');
INSERT INTO emlog_options (option_name, option_value) VALUES ('timezone','8');
INSERT INTO emlog_options (option_name, option_value) VALUES ('active_plugins','');
INSERT INTO emlog_options (option_name, option_value) VALUES ('widget_title','a:13:{s:7:"blogger";s:12:"个人资料";s:8:"calendar";s:6:"日历";s:7:"twitter";s:12:"最新微语";s:3:"tag";s:6:"标签";s:4:"sort";s:6:"分类";s:7:"archive";s:6:"存档";s:7:"newcomm";s:12:"最新评论";s:6:"newlog";s:12:"最新文章";s:10:"random_log";s:12:"随机文章";s:6:"hotlog";s:12:"热门文章";s:4:"link";s:6:"链接";s:6:"search";s:6:"搜索";s:11:"custom_text";s:15:"自定义组件";}');
INSERT INTO emlog_options (option_name, option_value) VALUES ('custom_widget','a:0:{}');
INSERT INTO emlog_options (option_name, option_value) VALUES ('widgets1','a:5:{i:0;s:8:"calendar";i:1;s:7:"archive";i:2;s:7:"newcomm";i:3;s:4:"link";i:4;s:6:"search";}');
INSERT INTO emlog_options (option_name, option_value) VALUES ('widgets2','');
INSERT INTO emlog_options (option_name, option_value) VALUES ('widgets3','');
INSERT INTO emlog_options (option_name, option_value) VALUES ('widgets4','');
DROP TABLE IF EXISTS emlog_link;
CREATE TABLE emlog_link (
  id int(10) unsigned NOT NULL auto_increment,
  sitename varchar(30) NOT NULL default '',
  siteurl varchar(75) NOT NULL default '',
  description varchar(255) NOT NULL default '',
  hide enum('n','y') NOT NULL default 'n',
  taxis int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (id)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;
INSERT INTO emlog_link (id, sitename, siteurl, description, taxis) VALUES (1, 'emlog', 'http://www.emlog.net', 'emlog官方主页', 0);
DROP TABLE IF EXISTS emlog_navi;
CREATE TABLE emlog_navi (
  id int(10) unsigned NOT NULL auto_increment,
  naviname varchar(30) NOT NULL default '',
  url varchar(75) NOT NULL default '',
  newtab enum('n','y') NOT NULL default 'n',
  hide enum('n','y') NOT NULL default 'n',
  taxis int(10) unsigned NOT NULL default '0',
  pid int(10) unsigned NOT NULL default '0',
  isdefault enum('n','y') NOT NULL default 'n',
  type tinyint(3) unsigned NOT NULL default '0',
  type_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (id)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;
INSERT INTO emlog_navi (id, naviname, url, taxis, isdefault, type) VALUES (1, '首页', '', 1, 'y', 1);
INSERT INTO emlog_navi (id, naviname, url, taxis, isdefault, type) VALUES (2, '微语', 't', 2, 'y', 2);
INSERT INTO emlog_navi (id, naviname, url, taxis, isdefault, type) VALUES (3, '登录', 'admin', 3, 'y', 3);
DROP TABLE IF EXISTS emlog_tag;
CREATE TABLE emlog_tag (
  tid int(10) unsigned NOT NULL auto_increment,
  tagname varchar(60) NOT NULL default '',
  gid text NOT NULL,
  PRIMARY KEY  (tid),
  KEY tagname (tagname)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS emlog_sort;
CREATE TABLE emlog_sort (
  sid int(10) unsigned NOT NULL auto_increment,
  sortname varchar(255) NOT NULL default '',
  alias VARCHAR(200) NOT NULL DEFAULT '',
  taxis int(10) unsigned NOT NULL default '0',
  pid int(10) unsigned NOT NULL default '0',
  description text NOT NULL,
  template varchar(255) NOT NULL default '',
  PRIMARY KEY  (sid)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS emlog_twitter;
CREATE TABLE emlog_twitter (
id INT NOT NULL AUTO_INCREMENT,
content text NOT NULL,
img varchar(200) DEFAULT NULL,
author int(10) NOT NULL default '1',
date bigint(20) NOT NULL,
replynum int(10) unsigned NOT NULL default '0',
PRIMARY KEY (id),
KEY author (author)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;
INSERT INTO emlog_twitter (id, content, img, author, date, replynum) VALUES (1, '使用微语记录您身边的新鲜事', '', 1, '1454057859', 0);
DROP TABLE IF EXISTS emlog_reply;
CREATE TABLE emlog_reply (
  id int(10) unsigned NOT NULL auto_increment,
  tid int(10) unsigned NOT NULL default '0',
  date bigint(20) NOT NULL,
  name varchar(20) NOT NULL default '',
  content text NOT NULL,
  hide enum('n','y') NOT NULL default 'n',
  ip varchar(128) NOT NULL default '',
  PRIMARY KEY  (id),
  KEY gid (tid),
  KEY hide (hide)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS emlog_user;
CREATE TABLE emlog_user (
  uid int(10) unsigned NOT NULL auto_increment,
  username varchar(32) NOT NULL default '',
  password varchar(64) NOT NULL default '',
  nickname varchar(20) NOT NULL default '',
  role varchar(60) NOT NULL default '',
  ischeck enum('n','y') NOT NULL default 'n',
  photo varchar(255) NOT NULL default '',
  email varchar(60) NOT NULL default '',
  description varchar(255) NOT NULL default '',
PRIMARY KEY  (uid),
KEY username (username)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;
INSERT INTO emlog_user (uid, username, password, role) VALUES (1,'liang','$P$BGZ9u0fO9gs4FKPfmUxnqfYi4NCsEu.','admin');;
