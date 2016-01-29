<?php
/*
	#使用说明：写下下面三行；并且复制这个文件XHProf.class.php;
	require "XHProf.class.php";
	$xhprof = new XHProf();
	$xhprof->beginProf();
*/
class XHProf{
	public function __construct(){
		$XHPROF_ROOT = '/alidata/www/game'; 
		require_once $XHPROF_ROOT.'/xhprof_lib/utils/xhprof_lib.php';
		require_once $XHPROF_ROOT.'/xhprof_lib/utils/xhprof_runs.php';
	}
	
	public function beginProf(){
		xhprof_enable();
		register_shutdown_function('XHProf::endProf');
	}
	
	static public function endProf(){
		$xhprof_data = xhprof_disable();
		$xhprof_runs = new XHProfRuns_Default(); 
		$run_id = $xhprof_runs->save_run($xhprof_data,"xhprof_foo"); 
		echo '<a href="/xhprof_html/index.php?run='.$run_id.'&source=xhprof_foo" target="_blank">count</a>';
	}
}
	
