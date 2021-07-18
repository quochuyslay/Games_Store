<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
								<li><a href="list_product.htm" title="">Danh sách sản
										phẩm</a></li>
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
			<div id="main-content-wp" class="change-pass-page">
				<div class="section" id="title-page">
					<div class="clearfix">
						<a href="insert_account.htm" title="" id="add-new" class="fl-left">Thêm
							mới</a>
						<h3 id="index" class="fl-left">Xóa tài khoản</h3>
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
								<form:form action="delete_account.htm" modelAttribute="delete_account">
									<p class="clearfix" style="color: red;">${message}</p>
									<form:errors path="id" style="color: red;"/>	
									<form:input path="id" id="pass-old"  placeholder="Nhập ID cần xóa !!!" />										
									<button type="submit" name="btn-submit" id="btn-submit">Xóa tài khoản</button>																	
								</form:form>								
							</div>
						</div>
						<div class="table-responsive">
							<table class="table list-table-wp">
								<thead>
									<tr>
										<td><span class="thead-text">Id</span></td>
										<td><span class="thead-text">Tên đăng nhập</span></td>
										<td><span class="thead-text">Mật khẩu</span></td>
										<td><span class="thead-text">Họ và tên</span></td>
										<td><span class="thead-text">Email</span></td>
										<td><span class="thead-text">Số điện thoại</span></td>
									</tr>
								</thead>
								<c:forEach var="u" items="${Users }">
									<tbody>
										<tr>
											<td><span class="tbody-text">${u.id }</span></td>
											<td><span class="tbody-text">${u.username }</span></td>
											<td><span class="tbody-text">${u.password }</span></td>
											<td><span class="tbody-text">${u.fullname }</span></td>
											<td><span class="tbody-text">${u.email }</span></td>
											<td><span class="tbody-text">${u.sdt }</span></td>
										</tr>
									</tbody>
								</c:forEach>
							</table>
						</div>
						<a href="delete_account.htm" style="border: 1px solid #7c2c2c;padding: 5px;background: red;
						color: white;border-radius: 25%;float: right;margin: 2% 5% 0% 0%;">Cập nhật</a>
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
</body>
</html>