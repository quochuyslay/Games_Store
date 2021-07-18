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
<script src="http://localhost:9999/Games_Store/admin/public/js/test.js" type="text/javascript"></script>
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
								<h3 id="index" class="fl-left">Xóa bỏ sản phẩm</h3>
								<p style="padding: 24px; float: left; color: red; font-size: 18px;">${message}</p>
								<a href="delete_product.htm" style="border-radius: 5%;border: 1px solid #a50d0d;
								background: #13080a;padding: 5px 12px 5px 12px;color: white;margin: 2% 12% 0% 0%;float:right;">
								Cập nhật trang</a>	
							</div>
						</div>
						<div class="filter-wp clearfix">
								<form:form action="delete_product.htm" modelAttribute="delete_product"> 
									<form:errors path="id" style="color: red;display: block;"/>										
									<form:input path="id" id="pass-old"  placeholder="Mã sản phẩm muốn xóa" style="border-radius: 5%;border: 1px solid #ccc;" />
									<button type="submit" name="btn-submit" id="btn-submit">Xóa bỏ</button>																																			
								</form:form>
                        
                    </div>
						<div class="section" id="detail-page">
							<div class="section-detail">
								<div class="table-responsive">
									<table class="table list-table-wp">
										<thead>
											<tr>
												<td><span class="thead-text">ID</span></td>
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
										<tbody>
											<c:forEach var="u" items="${list_product}">
												<tbody>
													<tr class="fbbox">
													<td><span class="tbody-text">${u.id }</span></td>
														<td><span class="tbody-text">${u.loai_sp }</span></td>
														<td>
															<div class="tbody-thumb">
																<img
																	src="http://localhost:9999/Games_Store/public/images/${u.anh_post }"
																	alt="">
															</div>
														</td>
														<td><span class="tbody-text">${u.ten }</span></td>
														<td><span class="tbody-text"><c:set
																	var="accountBalance" value="${u.gia }" /> <fmt:setLocale
																	value="en_US" /> <fmt:formatNumber type="number"
																	maxFractionDigits="3" value="${accountBalance}" /> </span></td>
														<td>
															<div class="tbody-thumb">
																<img
																	src="http://localhost:9999/Games_Store/public/images/${u.anh_1 }"
																	alt="">
															</div>
														</td>
														<td>
															<div class="tbody-thumb">
																<img
																	src="http://localhost:9999/Games_Store/public/images/${u.anh_2 }"
																	alt="">
															</div>
														</td>
														<td>
															<div class="tbody-thumb">
																<img
																	src="http://localhost:9999/Games_Store/public/images/${u.anh_3 }"
																	alt="">
															</div>
														</td>
														<td>
															<div class="tbody-thumb">
																<img
																	src="http://localhost:9999/Games_Store/public/images/${u.anh_4 }"
																	alt="">
															</div>
														</td>
														<td>
															<div class="tbody-thumb">
																<ul class="list-operation fl-right">
																	<li><a href="${u.id}.htm" title="Sửa" class="edit"><i
																			class="fa fa-pencil" aria-hidden="true"></i></a></li>
																	<li><a href="delete_product.htm" title="Xóa"
																		class="delete"><i class="fa fa-trash"
																			aria-hidden="true"></i></a></li>
																</ul>
															</div>
														</td>
													</tr>
												</tbody>
											</c:forEach>
										</tbody>
										<tfoot>
											<tr>
												<td><span class="tfoot-text">ID</span></td>
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