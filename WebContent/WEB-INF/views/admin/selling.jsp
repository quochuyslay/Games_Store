<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script
	src="http://localhost:9999/Games_Store/admin/public/js/test.js"
	type="text/javascript"></script>
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
								<li><a href="selling.htm" title="">Danh sách đơn hàng</a></li>
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
							<li class="nav-item"><a href="" title=""
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
								<h3 id="index" class="fl-left">Danh sách đơn hàng</h3>
							</div>
						</div>
						
						<div class="section" id="detail-page">
							<div class="section-detail">
								<div class="table-responsive">
									<table class="table list-table-wp">
										<thead>
											<tr>
												<td><span class="thead-text">Mã đơn hàng</span></td>
												<td><span class="thead-text">Tên khách hàng</span></td>
												<td><span class="thead-text">Tên sản phẩm</span></td>
												<td><span class="thead-text">Số sản phẩm</span></td>
												<td><span class="thead-text">Tổng giá</span></td>
												<td><span class="thead-text">Trạng thái</span></td>
												<td><span class="thead-text">Thời gian</span></td>
												<td><span class="thead-text">Chi tiết</span></td>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="u" items="${selling}">
												<c:url var="Games_Store" value="/admin/detail_order.htm">
													<c:param name="id_bill" value="${u.id_bill }" />
													
													<c:param name="ho_ten" value="${u.ho_ten }" />
													<c:param name="email" value="${u.email }" />
													<c:param name="sdt" value="${u.sdt }" />
													<c:param name="ghi_chu" value="${u.ghi_chu }" />
													<c:param name="dia_chi" value="${u.dia_chi }" />
													<c:param name="xa_phuong" value="${u.xa_phuong }" />
													<c:param name="tinh_huyen" value="${u.tinh_huyen }" />
													<c:param name="hinh_thuc" value="${u.hinh_thuc }" />
													<c:param name="tinhtrang" value="${u.tinhtrang }" />
													
													<c:param name="ten" value="${u.ten }" />
													<c:param name="gia" value="${u.gia }" />
													<c:param name="so_luong" value="${u.so_luong }" />
													<c:param name="ngay" value="${u.ngay }" />
													<c:param name="trang_thai" value="${u.trang_thai }" />
												</c:url>
												<tr class="fbbox">
													<td><span class="tbody-text">${u.id_bill }</span>
													<td>
														<div class="tb-title fl-left">
															<a href="" title="">${u.ho_ten }</a>
														</div>
													</td>
													<td><span class="tbody-text">${u.ten }</span></td>
													<td><span class="tbody-text">${u.so_luong }</span></td>
													<td><span class="tbody-text">${u.gia }</span></td>
													<td style="background: #fac668;"><span
														class="tbody-text">${u.trang_thai }</span></td>
													<td><span class="tbody-text">${u.ngay }</span></td>
													<td><a
														href="http://localhost:9999/<c:out value="${Games_Store}"/>"
														title="" class="tbody-text">Chi tiết</a></td>
												</tr>
											</c:forEach>
										</tbody>
										<tfoot>
											<tr>
												<td><span class="tfoot-text">Mã đơn hàng</span></td>
												<td><span class="thead-text">Tên khách hàng</span></td>
												<td><span class="thead-text">Tên sản phẩm</span></td>
												<td><span class="tfoot-text">Số sản phẩm</span></td>
												<td><span class="tfoot-text">Tổng giá</span></td>
												<td><span class="tfoot-text">Trạng thái</span></td>
												<td><span class="tfoot-text">Thời gian</span></td>
												<td><span class="tfoot-text">Chi tiết</span></td>
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