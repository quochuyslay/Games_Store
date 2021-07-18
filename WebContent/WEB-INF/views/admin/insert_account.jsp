<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Quản lý GAMES_STORE</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="admin/public/css/import/list_post.css" />
<link href="admin/public/css/import/sidebar.css" />

<link href="public/css/bootstrap/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="public/css/bootstrap/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="public/reset.css" rel="stylesheet" type="text/css" />
<link href="public/css/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="public/style.css" rel="stylesheet" type="text/css" />
<link href="public/responsive.css" rel="stylesheet" type="text/css" />

<script src="public/js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="public/js/bootstrap/bootstrap.min.js"
	type="text/javascript"></script>
<script src="public/js/plugins/ckeditor/ckeditor.js"
	type="text/javascript"></script>
<script src="public/js/main.js" type="text/javascript"></script>
</head>
<body>
	<div id="site">
		<div id="container">
			<div id="header-wp">
				<div class="wp-inner clearfix">
					<a href="#" title="" id="logo" class="fl-left">ADMIN</a>
					<ul id="main-menu" class="fl-left">
						
						<li><a href="list_product.htm" title="">Sản phẩm</a>
							<ul class="sub-menu">
								<li><a href="add_product.htm" title="">Thêm mới</a></li>
								<li><a href="list_product.htm" title="">Danh sách sản phẩm</a></li>
							</ul></li>
						<li><a href="selling.htm" title="">Bán hàng</a>
							<ul class="sub-menu">
								<li><a href="selling.htm" title="">Danh sách đơn
										hàng</a></li>
							</ul></li>
					</ul>
					<div id="dropdown-user" class="dropdown dropdown-extended fl-right">
						<button class="dropdown-toggle clearfix" type="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
							<div id="thumb-circle" class="fl-left">
								<img src="public/images/img-admin.png">
							</div>
							<h3 id="account" class="fl-right">${message2}</h3>
						</button>
						<ul class="dropdown-menu">
							<li><a href="info_account.htm" title="Thông tin cá nhân">Thông
									tin tài khoản</a></li>
							<li><a href="login.htm" title="Thoát">Thoát</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="main-content-wp" class="info-account-page">
				<div class="section" id="title-page">
					<div class="clearfix">
						<a href="insert_account.htm" title="" id="add-new" class="fl-left">Thêm
							mới</a>
						<h3 id="index" class="fl-left">Tài khoản</h3>
					</div>
				</div>
				<div class="wrap clearfix">
					<div id="sidebar" class="fl-left">
						<ul id="list-cat">
							<li><a href="delete_account.htm" title="">Xóa tài khoản</a></li>
							<li><a href="login.htm" title="">Thoát</a></li>
						</ul>
					</div>
					<div id="content" class="fl-right">					
						<div class="section" id="detail-page">
									<div class="section-detail">
								<form:form action="insert_account.htm" modelAttribute="user">
										<p style="color: red;">${message}</p>								    	
		                       		<label for="display-name">Tên đăng nhập</label>
		                       		<form:errors path="username" style="color: red;"/>
			                        <form:input path="username" id="display-name" />			                        
			                        
			                        <label for="username">Họ và tên</label>
			                        <form:errors path="fullname" style="color: red;"/>
			                        <form:input path="fullname" id="display-name" />
			                        
			                        <label for="email">Email</label>
			                        <form:errors path="email" style="color: red;"/>			                        
			                        <form:input type="email" path="email" id="email" />
			                        
			                        <label for="tel">Số điện thoại</label>
			                        <form:errors path="sdt" style="color: red;"/>			                        
			                        <form:input type="tel" path="sdt" id="tel" pattern="(\+84|0)\d{9,11}" />
			                        			                        
			                        <label for="address">Mật khẩu</label>
			                        <form:errors path="password" style="color: red;"/>			                        
			                        <form:input path="password" id="display-name" />
			                        <button type="submit" name="btn-submit" id="btn-submit">Thêm mới</button>			                        			                        
			                    </form:form>
							</div>
					</div>
				</div>				
			</div>

			<div id="footer-wp">
				<div class="wp-inner">
					<p id="copyright">2020 © Admin Theme by Huy</p>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>