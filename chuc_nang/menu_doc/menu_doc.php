<?php 
		$host='localhost';
	$user='root';
	$pass='';
	$db='ban_hang';
	//error_reporting(0);//Chan thong bao loi
	$link=mysqli_connect($host,$user,$pass,$db) or die('Lỗi kết nối');
	$tv="select * from menu_doc order by id";
	$tv_1=mysqli_query($link,$tv);
	echo "<div class='menu_doc' >";
	while($tv_2=mysqli_fetch_array($tv_1))
	{
		$link="?thamso=xuat_san_pham&id=".$tv_2['id'];
		echo "<a href='$link'>";
			echo $tv_2['ten'];
		echo "</a>";
	}
	echo "</div>";
?>