<?php
	
	session_set_cookie_params(0.25*3600);
	date_default_timezone_set('PRC');
	
	$host = $_SERVER['HTTP_HOST'];

	if($host == "127.0.0.1"){
		$runEnv = "Dev";
	}else{
		$runEnv = "Pro";
	}
	error_reporting(0);
	if($runEnv == "Dev"){
		$db_host="localhost";
		$database='ytylsb';
		$user='root';
		$pass='';
	}else{
		$db_host="198.11.179.71";
		$database='ytylsb';
		$user='root';
		$pass='l1s2AdmDb3';
	}
	
	$conn=mysql_connect($db_host,$user,$pass) or die("数据库连接出错,请检查数据库配置是否正确!");
	mysql_query("set names 'utf8'");
	$select_db = mysql_select_db($database,$conn);
	if(!$select_db){
		echo "无相关数据，请选择正确的数据库！";
	}	
?>