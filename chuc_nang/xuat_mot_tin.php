<?php 
	$host='localhost';
	$user='root';
	$pass='';
	$db='ban_hang';
	//error_reporting(0);//Chan thong bao loi
	$link=mysqli_connect($host,$user,$pass,$db) or die('Lỗi kết nối');
	$id=$_GET['id'];
	$tv="select * from menu_ngang where id='$id'";
	$tv_1=mysqli_query($link,$tv);
	$tv_2=mysqli_fetch_array($tv_1);
	echo "<h1>";
		echo $tv_2['ten'];
	echo "</h1>";
	echo $tv_2['noi_dung'];
?>