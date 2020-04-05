<?php 
		$host='localhost';
	$user='root';
	$pass='';
	$db='ban_hang';
	//error_reporting(0);//Chan thong bao loi

	$link=mysqli_connect($host,$user,$pass,$db) or die('Lỗi kết nối');
	$tv="select id,ten,loai_menu from menu_ngang order by id";
	$tv_1=mysqli_query($link,$tv);
	echo "<div class='menu_ngang' >";
	echo "<a href='index.php'>Trang chủ</a>";
	while($tv_2=mysqli_fetch_array($tv_1))
	{
		if($tv_2['loai_menu']==""){$link_menu="?thamso=xuat_mot_tin&id=".$tv_2['id'];}
		if($tv_2['loai_menu']=="san_pham"){$link_menu="?thamso=xuat_san_pham_2";}
		echo "<a href='$link_menu'>";
			echo $tv_2['ten'];
		echo "</a>";
	}
	echo "</div>";
?>