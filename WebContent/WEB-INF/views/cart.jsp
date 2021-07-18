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

<link rel="stylesheet" href="public/css/import/home.css" />
<link rel="stylesheet" href="public/css/import/cart.css" />

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

<script src="public/js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="public/js/jquery-3.4.1.js" type="text/javascript"></script>
<script src="public/js/test.js" type="text/javascript"></script>

<script src="public/js/carousel/owl.carousel.js" type="text/javascript"></script>
<script src="public/js/main.js" type="text/javascript"></script>
<head>
<meta charset="utf-8" />
<title>Giỏ hàng</title>
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
								style="margin: 28px 0px 0px 190px; color: inherit; font-size: xxx-large; text-transform: uppercase;">
								<%
									java.util.Calendar currTime = new java.util.GregorianCalendar();
									String timeOfDay = "";

									if (currTime.get(currTime.HOUR_OF_DAY) < 12) {
										timeOfDay = "Good Morning!";
									} else if (currTime.get(currTime.HOUR_OF_DAY) < 18) {
										timeOfDay = "Good Afternoon!";
									} else {
										timeOfDay = "Good Evening!";
									}
								%>
								<%=timeOfDay%>
							</div>
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
									<c:forEach var="u" items="${carts }">
										<ul class="list-cart">
											<li class="clearfix"><a href="" title=""
												class="thumb fl-left"> <img
													src="public/images/${u.anh }" alt="">
											</a>
												<div class="info fl-right">
													<a href="cart.htm" title="" class="product-name">${u.ten }</a>
													<p class="price">
														Giá:
														<c:set var="accountBalance" value="${u.gia }" />
														<fmt:setLocale value="en_US" />
														<fmt:formatNumber type="number" maxFractionDigits="3"
															value="${accountBalance}" /> VNĐ
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

			<div id="main-content-wp" class="cart-page">
				<div class="section" id="breadcrumb-wp">
					<div class="wp-inner">
						<div class="section-detail">
							<ul class="list-item clearfix">
								<li><a href="index.htm" title="">Trang chủ</a></li>
								<li><a href="cart.htm" title="">Giỏ hàng</a>
								<li><a href="cart.htm" title="">${message}</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div id="wrapper" class="wp-inner clearfix">
					<div class="section" id="info-cart-wp">
						<div class="section-detail table-responsive">
							<table class="table">
								<form:form action="cart.htm" modelAttribute="carts">
									<thead>
										<tr>
											<td>Mã sản phẩm</td>
											<td>Ảnh sản phẩm</td>
											<td>Tên sản phẩm</td>
											<td>Tình trạng</td>
											<td>Giá sản phẩm</td>
											<td>Số lượng</td>
											<td colspan="2">Thành tiền</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="u" items="${carts }">
											<tr>
												<td>${u.id }</td>
												<td><a href="" title="" class="thumb"> <img
														src="public/images/${u.anh }" alt="">
												</a></td>
												<td>${u.ten }</td>
												
												<td>${u.tinhtrang }</td>
												<td><c:set var="accountBalance" value="${u.gia }" /> <fmt:setLocale
														value="en_US" /> <fmt:formatNumber type="number"
														maxFractionDigits="3" value="${accountBalance}" /> VNĐ</td>
												<td>${u.so_luong }</td>
												<td><c:set var="accountBalance" value="${u.tong_tien }" />
													<fmt:setLocale value="en_US" /> <fmt:formatNumber
														type="number" maxFractionDigits="3"
														value="${accountBalance}" /> Đ</td>
												<td><a href="${u.id_cart}.htm" title=""
													class="del-product"><i class="fa fa-trash-o"></i></a></td>
											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="8">
												<div class="clearfix">
													<div class="fl-right">
														<a href="" title="" id="update-cart">Cập nhật giỏ hàng</a>
														<a href="check_out.htm" title="" id="checkout-cart">Đặt hàng</a>
													</div>
												</div>
											</td>
										</tr>
									</tfoot>
								</form:form>
							</table>
						</div>
					</div>
					
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