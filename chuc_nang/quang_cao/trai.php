<br>Quảng cáo <br><br>
<?php 
	$host='localhost';
	$user='root';
	$pass='';
	$db='ban_hang';
	//error_reporting(0);//Chan thong bao loi
	$link=mysqli_connect($host,$user,$pass,$db) or die('Lỗi kết nối');
	$tv="select html from quang_cao where vi_tri='trai' ";
	$tv_1=mysqli_query($link,$tv);
	$tv_2=mysqli_fetch_array($tv_1);
	echo $tv_2['html'];
?>