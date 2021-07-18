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
<script
	src="http://localhost:9999/Clothes_Store/admin/public/js/test.js"
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
					<div id="content" class="detail-exhibition fl-right">
						<form:form action="detail_order.htm" modelAttribute="detail_order">
							<div class="section" id="info">
								<div class="section-head">
									<h3 class="section-title">Thông tin đơn hàng</h3>
									<p
										style="color: red; font-size: 40px; margin-left: 30%; font-family: cursive;">${message}</p>
								</div>
								<ul class="list-item">
									<li>
										<h3 class="title">Mã đơn hàng</h3> <span class="detail">
											<form:select path="id_bill"
												style="-webkit-appearance: none; border: none;color: black;font-size: 14px;">
												<option><c:out value="${param.id_bill }" /></option>
											</form:select>
									</span>
									</li>
									<li>
										<h3 class="title">Địa chỉ nhận hàng</h3> <span class="detail"><strong>ĐỊA
												CHỈ:</strong> <form:select path="dia_chi"
												style="-webkit-appearance: none; border: none;color: black;font-size: 14px;width: auto;">
												<option><c:out value="${param.dia_chi }" /></option>
											</form:select> <form:select path="xa_phuong"
												style="-webkit-appearance: none; border: none;color: black;font-size: 14px;width: auto;">
												<option><c:out value="${param.xa_phuong }" /></option>
											</form:select> <form:select path="tinh_huyen"
												style="-webkit-appearance: none; border: none;color: black;font-size: 14px;width: auto;">
												<option><c:out value="${param.tinh_huyen }" /></option>
											</form:select> </span><br> <span><strong>Họ tên:</strong> <form:select
												path="ho_ten"
												style="-webkit-appearance: none; border: none;color: black;font-size: 14px;width: auto;">
												<option><c:out value="${param.ho_ten }" /></option>
											</form:select></span><br> <span><strong>Liên hệ:</strong> <form:select
												path="sdt"
												style="-webkit-appearance: none; border: none;color: black;font-size: 14px;width: auto;">
												<option><c:out value="${param.sdt }" /></option>
											</form:select></span><br> <span><strong>EMAIL:</strong> <form:select
												path="email"
												style="-webkit-appearance: none; border: none;color: black;font-size: 14px;width: auto;">
												<option><c:out value="${param.email }" /></option>
											</form:select></span>
									</li>
									<li>
										<h3 class="title">Hình thức thanh toán</h3> <span
										class="detail"><form:select path="hinh_thuc"
												style="-webkit-appearance: none; border: none;color: black;font-size: 14px;width: auto;">
												<option><c:out value="${param.hinh_thuc }" /></option>
											</form:select></span>
									</li>
									<li>
										<h3 class="title">Thông tin vận chuyển</h3> <form:select
											path="trang_thai" name="status">
											<option value='Chờ duyệt'>Chờ duyệt</option>
											<option value='Đang vận chuyển'>Đang vận chuyển</option>
											<option value='Thành công'>Thành công</option>
										</form:select> <input type="submit" name="sm_status"
										value="Cập nhật đơn hàng">
									</li>
								</ul>
							</div>
							<div class="section">
								<div class="section-head">
									<h3 class="section-title">Sản phẩm đơn hàng</h3>
								</div>
								<div class="table-responsive">
									<table class="table info-exhibition">
										<thead>
											<tr>

												<td class="thead-text">Tên sản phẩm</td>
												<td class="thead-text">Thời gian</td>
												<td class="thead-text">Số lượng</td>
												<td class="thead-text">Tình trạng</td>										
												<td class="thead-text">Ghi chú</td>
												<td class="thead-text">Thành tiền</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												
												<td class="thead-text"><form:select path="ten"
														style="-webkit-appearance: none; border: none;color: black;font-size: 14px;width: auto;">
														<option><c:out value="${param.ten }" /></option>
													</form:select></td>
												<td class="thead-text"><form:select path="ngay"
														style="-webkit-appearance: none; border: none;color: black;font-size: 14px;width: auto;">
														<option><c:out value="${param.ngay }" /></option>
													</form:select></td>
												<td class="thead-text"><form:select path="so_luong"
														style="-webkit-appearance: none; border: none;color: black;font-size: 14px;width: auto;">
														<option><c:out value="${param.so_luong }" /></option>
													</form:select></td>
												<td class="thead-text"><form:select path="tinhtrang"
														style="-webkit-appearance: none; border: none;color: black;font-size: 14px;width: auto;">
														<option><c:out value="${param.tinhtrang }" /></option>
													</form:select></td>
												
												<td class="thead-text"><form:select path="ghi_chu"
														style="-webkit-appearance: none; border: none;color: black;font-size: 14px;width: auto;">
														<option><c:out value="${param.ghi_chu }" /></option>
													</form:select></td>
												<td class="thead-text"><form:select path="gia"
														style="-webkit-appearance: none; border: none;color: black;font-size: 14px;width: auto;">
														<option><c:out value="${param.gia }" /></option>
													</form:select></td>
											</tr>
										</tbody>
										<tfoot>
											<tr>

												<td class="thead-text">Tên sản phẩm</td>
												<td class="thead-text">Thời gian</td>
												<td class="thead-text">Số lượng</td>
												<td class="thead-text">Tình trạng</td>
												
												<td class="thead-text">Ghi chú</td>
												<td class="thead-text">Thành tiền</td>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</form:form>
						<div style="margin-top: 50px;">
							<h1
								style="color: red; font-size: xx-large; padding-bottom: 25px;">Gửi
								email khách hàng</h1>
							<form action="send.htm" method="post">
								<p style="padding-bottom: 20px; display: none">
									<img
										href="https://image.flaticon.com/icons/png/512/941/941565.png" />
									<input name="from" placeholder="Người gửi:"
										value="nqhslay@gmail.com"
										style="border: none; border-bottom: 1px solid #333; width: 305px;">
								</p>
								<p style="padding-bottom: 20px;">
									<input name="to" placeholder="Người nhận:"
										value="<c:out value="${param.email }" />"
										style="border: none; border-bottom: 1px solid #333; width: 305px;">
								</p>
								<p style="padding-bottom: 20px;display: none">
									<input title="Tiêu đề" name="subject" placeholder="Tiêu đề:"
										value="Xác nhận đơn hàng - Games Shop"
										style="border: none; border-bottom: 1px solid #333; width: 305px;">
								</p>
								<p>
									<textarea name="body" id="desc" class="ckeditor"></textarea>
								</p>
								<button
									style="background: blue; border: 1px solid #fff; color: white; border-radius: 10%; padding: 7px 20px 7px 20px;">Gửi
									mail</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<c:if
			test="${not empty param.bill 

				&& not empty param.ho_ten 
				&& not empty param.email 
				&& not empty param.sdt
				&& not empty param.ghi_chu 
				&& not empty param.dia_chi 
				&& not empty param.xa_phuong 
				&& not empty param.tinh_huyen
				&& not empty param.hinh_thuc 
				&& not empty param.tinhtrang
				
				&& not empty param.ten
				&& not empty param.gia 
				&& not empty param.so_luong 
				&& not empty param.ngay 
				&& not empty param.trang_thai
				}">
		</c:if>
		<div id="footer-wp">
			<div class="wp-inner">
				<p id="copyright">2020 © Admin Theme by Huy</p>
			</div>
		</div>
	</div>
</body>
</html>