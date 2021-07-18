<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
						<li><a href="" title="">Bán hàng</a>
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

			<div id="main-content-wp" class="list-post-page">
				<div class="wrap clearfix">
					<div id="sidebar" class="fl-left">
						<ul id="sidebar-menu">
							
							<li class="nav-item"><a href="" title=""
								class="nav-link nav-toggle"> <span
									class="fa fa-product-hunt icon"></span> <span class="title">Sản
										phẩm</span>
							</a>
								<ul class="sub-menu">
									<li class="nav-item"><a href="add_product.htm" title=""
										class="nav-link">Thêm mới</a></li>
									<li class="nav-item"><a href="list_product.htm" title=""
										class="nav-link">Danh sách sản phẩm</a></li>
								</ul></li>
							<li class="nav-item"><a href="selling.htm" title=""
								class="nav-link nav-toggle"> <span
									class="fa fa-database icon"></span> <span class="title">Bán
										hàng</span>
							</a>
								<ul class="sub-menu">
									<li class="nav-item"><a href="selling.htm" title=""
										class="nav-link">Danh sách đơn hàng</a></li>
								</ul></li>
						</ul>
					</div>

					<div id="content" class="fl-right">
						<div class="section" id="title-page">
							<div class="clearfix">
								<h3 id="index" class="fl-left">Sửa thông tin sản phẩm</h3>
								<p style="padding: 24px;float: left;color: red;font-size: 18px;">${message}</p>
							</div>
						</div>
						<div class="section" id="detail-page">
							<div class="section-detail">
								<div class="table-responsive">
									<table class="table list-table-wp">
										<thead>
											<tr>
												<td><span class="thead-text">Loại sản phẩm</span></td>
												<td><span class="thead-text">Hình ảnh</span></td>
												<td><span class="thead-text">Tên sản phẩm</span></td>
												<td><span class="thead-text">Giá</span></td>
												<td><span class="thead-text">Hình 1</span></td>
												<td><span class="thead-text">Hình 2</span></td>
												<td><span class="thead-text">Hình 3</span></td>
												<td><span class="thead-text">Hình 4</span></td>
												<td><span class="thead-text">Trạng thái</span></td>
											</tr>
										</thead>
										<form:form action="update_product.htm" modelAttribute="product">
											<tbody>
												<tr>
													<td style="display: none"><form:input path="id" class="add_product"/></td>													
													<td><form:select path="loai_sp" class="add_product">
														<option value="Xbox">X-box</option>
														<option value="PlayStation">Play Station</option>
														<option value="Headphone">Tai nghe</option>
														<option value="hand">Tay cầm</option>
														
													</form:select></td>
													<td><form:input path="anh_post" type="file" class="add_product" /></td>													
													<td><form:input path="ten" class="add_product" /></td>
													<td><form:input path="gia" class="add_product" pattern="[0-9]{0,20}"/></td>
													<td><form:input path="anh_1" type="file" class="add_product"/></td>
													<td><form:input path="anh_2" type="file" class="add_product" /></td>
													<td><form:input path="anh_3" type="file" class="add_product" /></td>
													<td><form:input path="anh_4" type="file" class="add_product" /></td>
													<td><form:select path="trang_thai" class="add_product">
														<option value="0">Không</option>
														<option value="1">Giảm Giá</option>
													</form:select></td>																							
												</tr>
											</tbody>
											<button type="submit" name="btn-submit" id="add_product">Sửa đổi</button>
											<a href="list_product.htm" style="  border: none;
																			    background: #514b4b;
																			    color: aliceblue;
																			    padding: 8px 15px 8px 15px;
																			    border-radius: 25%;
																			    margin-left: 40%;
																			    margin-bottom: 20px;">DS sản phẩm</a>
										</form:form>
										<tfoot>
											<tr>
												<td><span class="tfoot-text">Loại sản phẩm</span></td>
												<td><span class="tfoot-text">Hình ảnh</span></td>
												<td><span class="tfoot-text">Tên sản phẩm</span></td>
												<td><span class="tfoot-text">Giá</span></td>
												<td><span class="tfoot-text">Hình 1</span></td>
												<td><span class="tfoot-text">Hình 2</span></td>
												<td><span class="tfoot-text">Hình 3</span></td>
												<td><span class="tfoot-text">Hình 4</span></td>
												<td><span class="tfoot-text">Trạng thái</span></td>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
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
</body>
</html>