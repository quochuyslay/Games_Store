<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="public/css/import/checkout.css" />

<link href="public/css/bootstrap/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="public/css/bootstrap/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="public/reset.css" rel="stylesheet" type="text/css" />
<link href="public/css/carousel/owl.carousel.css" rel="stylesheet"
	type="text/css" />
<link href="public/css/carousel/owl.theme.css" rel="stylesheet"
	type="text/css" />
<link href="public/css/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="public/style.css" rel="stylesheet" type="text/css" />
<link href="public/responsive.css" rel="stylesheet" type="text/css" />

<script src="public/js/jquery-3.4.1.js" type="text/javascript"></script>
<script src="public/js/test.js" type="text/javascript"></script>

<script src="public/js/carousel/owl.carousel.js" type="text/javascript"></script>
<script src="public/js/main.js" type="text/javascript"></script>
<title>Thanh Toán</title>
</head>
<body>
	<div id="site">
		<div id="container">
			<div id="header-wp">
				<div id="head-top" class="clearfix">
					<div class="wp-inner">
						<a href="" title="" id="payment-link" class="fl-left">Hình
							thức thanh toán</a>
						<div id="main-menu-wp" class="fl-right">
							<ul id="main-menu" class="clearfix">
								<li><a href="index.htm" title="">Trang chủ</a></li>
								<li><a href="error.htm" title="">Tin Hot</a></li>
								<li><a href="error.htm" title="">Giới thiệu</a></li>
								<li><a href="error.htm" title="">Liên hệ</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div id="head-body" class="clearfix">
					<div class="wp-inner">
						<a href="index.htm" title="" id="logo" class="fl-left"><img
							src="public/images/golo.png" /></a>
						<div class="fl-left">
							<div
								style="margin: 28px 0px 0px 210px; color: inherit; font-size: x-large; text-transform: uppercase; color: red;">
								${message}</div>
						</div>
						<div id="action-wp" class="fl-right">
							<div id="advisory-wp" class="fl-left">
								<span class="title">Tư vấn</span> <span class="phone">082.7970.999</span>
							</div>
							<div id="btn-respon" class="fl-right">
								<i class="fa fa-bars" aria-hidden="true"></i>
							</div>
							<a href="cart.htm" title="giỏ hàng" id="cart-respon-wp"
								class="fl-right"> <i class="fa fa-shopping-cart"
								aria-hidden="true"></i>
							</a>
							<div id="cart-wp" class="fl-right">
								<div id="btn-cart">
									<a href="cart.htm" title="giỏ hàng"> <i
										class="fa fa-shopping-cart" aria-hidden="true"></i>
									</a>
								</div>
								<div id="dropdown">
									<c:forEach var="u" items="${Cart }">
										<ul class="list-cart">
											<li class="clearfix"><a href="" title=""
												class="thumb fl-left"> <img
													src="public/images/${u.anh }" alt="">
											</a>
												<div class="info fl-right">
													<a href="" title="" class="product-name">${u.ten }</a>
													<p class="price">
														Giá:
														<c:set var="accountBalance" value="${u.gia }" />
														<fmt:setLocale value="en_US" />
														<fmt:formatNumber type="number" maxFractionDigits="3"
															value="${accountBalance}" />
														VNĐ
													</p>
													<p class="qty">
														Số lượng: <span>${u.so_luong }</span>
													</p>
												</div></li>
										</ul>
									</c:forEach>
									<div class="action-cart clearfix">
										<a href="cart.htm" title="Thanh toán"
											class="checkout fl-right">Giỏ hàng</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="main-content-wp" class="home-page clearfix">
				<div id="main-content-wp" class="checkout-page">
					<div class="section" id="breadcrumb-wp">
						<div class="wp-inner">
							<div class="section-detail">
								<ul class="list-item clearfix">
									<li><a href="index.htm" title="">Trang chủ</a></li>
									<li><a href="buy_now.htm" title="">Đặt hàng</a></li>
								</ul>
							</div>
						</div>
					</div>
					<form:form action="check_out.htm" modelAttribute="bill">
						<div id="wrapper" class="wp-inner clearfix">
							<div class="section" id="customer-info-wp">
								<div class="section-head">
									<h1 class="section-title">Thông tin khách hàng</h1>
								</div>
								<div class="section-detail">
									<form method="POST" action="" name="form-checkout">
										<div class="form-row clearfix">
											<div class="form-col fl-left">
												<label for="fullname">Họ tên</label>
												<form:errors path="ho_ten" style="color: red;" />
												<form:input path="ho_ten" placeholder="Họ và tên" />
											</div>
											<div class="form-col fl-right">
												<label for="address">Tỉnh/Thành Phố - Quận/Huyện</label>
												<form:errors path="tinh_huyen" style="color: red;" />
												<form:select path="tinh_huyen" id="address">
													<option value="">- Lựa Chọn -</option>												
													<option value="Tp.Hồ Chí Minh - Quận 1">Quận 1 -
														Tp.Hồ Chí Minh</option>
													<option value="Quận 2 - Tp.Hồ Chí Minh">Quận 2 -
														Tp.Hồ Chí Minh</option>
													<option value="Quận 3 - Tp.Hồ Chí Minh">Quận 3 -
														Tp.Hồ Chí Minh</option>
													<option value="Quận 4 - Tp.Hồ Chí Minh">Quận 4 -
														Tp.Hồ Chí Minh</option>
													<option value="Quận 5 - Tp.Hồ Chí Minh">Quận 5 -
														Tp.Hồ Chí Minh</option>
													<option value="Quận 6 - Tp.Hồ Chí Minh">Quận 6 -
														Tp.Hồ Chí Minh</option>
													<option value="Quận 7 - Tp.Hồ Chí Minh">Quận 7 -
														Tp.Hồ Chí Minh</option>
													<option value="Quận 8 - Tp.Hồ Chí Minh">Quận 8 -
														Tp.Hồ Chí Minh</option>
													<option value="Quận 9 - Tp.Hồ Chí Minh">Quận 9 -
														Tp.Hồ Chí Minh</option>
													<option value="Quận Thủ Đức - Tp.Hồ Chí Minh">Quận
														Thủ Đức - Tp.Hồ Chí Minh</option>
												</form:select>
											</div>
										</div>
										<div class="form-row clearfix">
											<div class="form-col fl-left">
												<label for="phone">Số điện thoại</label>
												<form:errors path="sdt" style="color: red;" />
												<form:input type="tel" path="sdt" pattern="(\+84|0)\d{9,11}" />
											</div>
											<div class="form-col fl-right">
												<label for="address">Xã - Phường</label>
												<form:errors path="xa_phuong" style="color: red;" />
												<form:select path="xa_phuong" id="address">
													<option value="">- Lựa Chọn -</option>
													<option value="Hiệp Phú">Phường Hiệp Phú</option>
													<option value="Tân Phú">Phường Tân Phú</option>
													<option value="Phú Hữu">Phường Phú Hữu</option>
													<option value="Long Trường">Phường Long Trường</option>
													<option value="Long Thạnh Mỹ">Phường Long Thạnh Mỹ
													<option value="Phước Long A">Phường Phước Long A</option>
													<option value="Phước Long B">Phường Phước Long B</option>
													<option value="Long Bình">Phường Long Bình</option>
													<option value="Long Phước">Phường Long Phước</option>
													<option value="Tăng Nhơn Phú A">Phường Tăng Nhơn Phú A</option>
													<option value="Tăng Nhơn Phú B">Phường Tăng Nhơn Phú B</option>
													
													</option>
												</form:select>
											</div>
										</div>
										<div class="form-row clearfix">
											<div class="form-col fl-left">
												<label for="email">Email</label>
												<form:errors path="email" style="color: red;" />
												<form:input type="email" path="email"
													placeholder="Email@gmail.com" />
											</div>
											<div class="form-col fl-right">
												<label for="address">Địa chỉ</label>
												<form:errors path="dia_chi" style="color: red;" />
												<form:input path="dia_chi"
													placeholder="Ghi rõ địa chỉ nhận hàng " />
											</div>
										</div>
										<div class="form-row">
											<div class="form-col">
												<label for="notes">Ghi chú</label>
												<form:textarea path="ghi_chu" />
											</div>
										</div>
										<div style="display: none">
											<c:set var="today" value="<%=new java.util.Date()%>" />
											<c:set var="timeZone" value="GMT-8" />
											<form:select path="ngay">
												<option><fmt:formatDate type="both"
														value="${today}" /></option>
											</form:select>
										</div>
										<div style="display: none">
											<form:input path="trang_thai" value="Chờ duyệt" />
										</div>
									</form>
								</div>
							</div>
							<div class="section" id="order-review-wp">
								<div class="section-head">
									<h1 class="section-title">Thông tin đơn hàng</h1>
								</div>
								<div class="section-detail">
									<table class="shop-table">
										<thead>
											<tr>
												<td>Sản phẩm</td>

												<td>Tình trạng</td>
												<td>Tổng</td>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="v" items="${Cart }">
												<tr class="cart-item">
													<td class="product-name"><form:select class="n"
															path="ten">
															<option>${v.ten }</option>
														</form:select> x <form:select class="n" path="so_luong">
															<option>${v.so_luong }</option>
														</form:select></td>
													<td class="product-total"><form:select class="n"
															path="tinhtrang">
															<option>${v.tinhtrang }</option>
														</form:select></td>
													<td class="product-total"><form:select class="n"
															path="gia">
															<option><fmt:setLocale value="en_US" />
																<fmt:formatNumber type="number" maxFractionDigits="3"
																	value="${v.tong_tien }" /> VNĐ
															</option>
														</form:select></td>

												</tr>
											</c:forEach>
										</tbody>
										<tfoot>
										</tfoot>
									</table>
									<div id="payment-checkout-wp">
										<ul id="payment_methods">
											<form:errors path="hinh_thuc" style="color: red;" />
											<li><form:radiobutton path="hinh_thuc"
													value="Thẻ ngân hàng" label="Thanh toán bằng thẻ ngân hàng" /></li>
											<li><form:radiobutton path="hinh_thuc" value="Tại nhà"
													label="Thanh toán tại nhà" /></li>
										</ul>
									</div>
									<div class="place-order-wp clearfix">
										<button id="order-now">Đặt hàng</button>
									</div>
								</div>
							</div>
						</div>
					</form:form>
				</div>

			</div>
			<div id="footer-wp">
				<div id="foot-body">
					<div class="wp-inner clearfix">
						<div class="block" id="info-company">
							<h3 class="title">SHOP</h3>
							<p class="desc">Games Shop luôn cung cấp luôn là sản phẩm
								chính hãng có thông tin rõ ràng, chính sách ưu đãi cực lớn cho
								khách hàng có thẻ thành viên.</p>
							<div id="payment">
								<div class="thumb">
									<img src="public/images/img-foot.png" alt="">
								</div>
							</div>
						</div>
						<div class="block menu-ft" id="info-shop">
							<h3 class="title">Thông tin cửa hàng</h3>
							<ul class="list-item">
								<li>
									<p>97 - Man Thiện - Quận 9 - TP.HCM</p>
								</li>
								<li>
									<p>082.7970.999 - 0941.90.97.97</p>
								</li>
								<li>
									<p>quochuynguyen29@gmail.com</p>
								</li>
							</ul>
						</div>
						<div class="block menu-ft policy" id="info-shop">
							<h3 class="title">Chính sách mua hàng</h3>
							<ul class="list-item">
								<li><a href="index.htm" title="">Quy định - chính sách</a></li>
								<li><a href="index.htm" title="">Chính sách bảo hành -
										đổi trả</a></li>
								<li><a href="index.htm" title="">Chính sách hội viện</a></li>
								<li><a href="index.htm" title="">Giao hàng - lắp đặt</a></li>
							</ul>
						</div>
						<div class="block menu-ft policy" id="info-shop">
							<h3 class="title">Chính sách bảo mật</h3>
							<img alt="" src="public/images/congthuong.png">
						</div>
					</div>
				</div>
			</div>
			<div id="foot-bot">
				<div class="wp-inner">
					<p id="copyright">© Bản quyền thuộc về Huy</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>