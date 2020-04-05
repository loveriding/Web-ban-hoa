<?php
	session_start();
    include("ket_noi.php");	
    include("chuc_nang/ham/ham.php");	
	if(isset($_POST['thong_tin_khach_hang']))
	{
		include("chuc_nang/gio_hang/thuc_hien_mua_hang.php");
	}
	if(isset($_POST['cap_nhat_gio_hang']))
	{
		include("chuc_nang/gio_hang/cap_nhat_gio_hang.php");
		trang_truoc();
	}	
?> 
<html>
	<head>
		<meta charset="UTF-8">
		<title>Shop hoa Hiển & Quân</title>
		<style type="text/css" >          
            div.menu_ngang a
            {
                color:blue;
                margin-left: 40px;
                margin-right: 40px;
                text-decoration: none;
                font-size:20px;
            }
            div.menu_ngang a:hover	
            {
                color:red
            }
            div.menu_doc a
            {
                color:blue;
                text-decoration: none;
                display:block;
            }
            div.menu_doc a:hover
            {
                color:red
            }
			.footer {
				position: fixed;
				left: 0;
				bottom: 0;
				width: 100%;
				background-color: #134778;
				color: white;
				text-align: center;
			}
			body {
				background-color: #fefbd8;
			}
			#e3 {
			  border: 2px hidden;
			  padding: 15px;
			  background: lightblue;
			  background-clip: padding-box;
			}
        </style>
	</head>
	<body>
		<center>
			<table width= "1280px">
					<tr>
						<td colspan="3"><?php include("chuc_nang/banner/banner.php"); ?></td>
					</tr>
					<tr>
							<td colspan="3" height="50px" id= "e3">
								<?php
									include("chuc_nang/menu_ngang/menu_ngang.php");
								?> 
							</td>
					</tr>
				<tr>
					<td width="70px" valign="top" >
					<?php 
						include("chuc_nang/menu_doc/menu_doc.php");
						include("chuc_nang/san_pham/moi.php"); 
						include("chuc_nang/quang_cao/trai.php"); 
					?>					
					</td>
					<td width="center" valign="top" >
						<?php 
							include("chuc_nang/dieu_huong.php");
						?>
					</td>
					<td width="70px" valign="top" >
					<?php 
						include("chuc_nang/tim_kiem/vung_tim_kiem.php");
						include("chuc_nang/gio_hang/vung_gio_hang.php"); 
						include("chuc_nang/san_pham/noi_bat.php"); 
						include("chuc_nang/quang_cao/phai.php"); 
					?>					
					</td>
				</tr>
				<tr>
					<td colspan="3"><?php include("chuc_nang/footer/footer.php"); ?></td>
				</tr>
			</table>
		</center>
		<div class="footer">
			<p> Cửa hàng : Hiển & Quân Shop  
				 / Điện thoại : xxx.333.234  
				 / Địa chỉ : thành phố Hồ Chí Minh
			</p>
		</div>
	</body>
</html>