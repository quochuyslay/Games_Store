<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="public/css/import/home.css" />

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
<title>Trang chủ</title>
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
								<li><a href="admin/regis.htm" title="">Liên hệ</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div id="head-body" class="clearfix">
					<div class="wp-inner">
						<a href="index.htm" title="" id="logo" class="fl-left"><img
							src="public/images/golo.png" /></a>
						<div id="search-wp" class="fl-left">
							<form method="POST" action="">
								<input type="text" name="s" id="s"
									placeholder="Nhập từ khóa tìm kiếm tại đây!"> <input
									type="button" id="search" value="Tìm kiếm" />
							</form>
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
									<a href="cart.htm" title="giỏ hàng">
										<i class="fa fa-shopping-cart" aria-hidden="true"></i>
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
													<p class="price">Giá: <c:set var="accountBalance"
														value="${u.gia }" /> <fmt:setLocale value="en_US" /> <fmt:formatNumber
														type="number" maxFractionDigits="3" value="${accountBalance}" /> VNĐ</p>
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
				<div class="wp-inner">
					<div class="secion" id="breadcrumb-wp">
						<div class="secion-detail">
							<ul class="list-item clearfix">
								<li><a href="index.htm" title="">Trang chủ</a></li>
							</ul>
						</div>
					</div>
					<div class="main-content fl-right">
						<div class="section" id="slider-wp">
							<div class="section-detail">
								<div class="item">
									<img src="public/images/slider01.png" alt="">
								</div>
								<div class="item">
									<img src="public/images/slider02.png" alt="">
								</div>
								<div class="item">
									<img src="public/images/slider03.png" alt="">
								</div>
								<div class="item">
									<img src="public/images/slider04.png" alt="">
								</div>
							</div>
						</div>
						<div class="section" id="support-wp">
							<div class="section-detail">
								<ul class="list-item clearfix">
									<li>
										<div class="thumb">
											<img src="public/images/icon-1.png">
										</div>
										<h3 class="title">Miễn phí vận chuyển</h3>
										<p class="desc">Tới tận tay khách hàng</p>
									</li>
									<li>
										<div class="thumb">
											<img src="public/images/icon-2.png">
										</div>
										<h3 class="title">Tư vấn 24/7</h3>
										<p class="desc">082.7970.999</p>
									</li>
									<li>
										<div class="thumb">
											<img src="public/images/icon-3.png">
										</div>
										<h3 class="title">Tiết kiệm hơn</h3>
										<p class="desc">Với nhiều ưu đãi cực lớn</p>
									</li>
									<li>
										<div class="thumb">
											<img src="public/images/icon-4.png">
										</div>
										<h3 class="title">Thanh toán nhanh</h3>
										<p class="desc">Hỗ trợ nhiều hình thức</p>
									</li>
									<li>
										<div class="thumb">
											<img src="public/images/icon-5.png">
										</div>
										<h3 class="title">Đặt hàng online</h3>
										<p class="desc">Thao tác đơn giản</p>
									</li>
								</ul>
							</div>
						</div>
						<div class="section" id="feature-product-wp">
							<div class="section-head">
								<h3 class="section-title">Sản phẩm mới</h3>
							</div>
							<div class="section-detail">

								<ul class="list-item">
									<c:forEach var="u" items="${hot_product }">
										<c:url var="Games_Store" value="/product.htm">
											<c:param name="param0" value="${u.anh_post }" />
											<c:param name="param1" value="${u.anh_1 }" />
											<c:param name="param2" value="${u.anh_2 }" />
											<c:param name="param3" value="${u.anh_3 }" />
											<c:param name="param4" value="${u.anh_4 }" />
											<c:param name="param5" value="${u.ten }" />
											<c:param name="param6" value="${u.gia }" />
											<c:param name="param7" value="${u.id }" />
										</c:url>										
										<li class="fbbox">
										<a
											href="http://localhost:9999/<c:out value="${Games_Store}"/>"
											title="" class="thumb"> 
											<img src="public/images/${u.anh_post }">
										</a> 
											<label for="check-2" class="product-name"> ${u.ten }</label>
											<label for="check-2" class="product-name"> ${u.loai_sp }</label> 
											<label for="check-2" class="product-name"> ${u.anh_1 }</label>
											<div class="action clearfix">
												${u.ten }
											</div>
											<div class="price">
												<span class="new"> <c:set var="accountBalance"
														value="${u.gia }" /> <fmt:setLocale value="en_US" /> <fmt:formatNumber
														type="number" maxFractionDigits="3"
														value="${accountBalance}" /> VNĐ
												</span>
											</div>											
										</li>

									</c:forEach>
								</ul>
							</div>
						</div>
						<div class="section" id="list-product-wp">
							<div class="section-head">
								<h3 class="section-title">Danh sách sản phẩm</h3>
							</div>
							<div class="section-detail">
								<ul class="list-item clearfix">
									<c:forEach var="u" items="${product}">
										<c:url var="Games_Store" value="/product.htm">
											<c:param name="param0" value="${u.anh_post }" />
											<c:param name="param1" value="${u.anh_1 }" />
											<c:param name="param2" value="${u.anh_2 }" />
											<c:param name="param3" value="${u.anh_3 }" />
											<c:param name="param4" value="${u.anh_4 }" />
											<c:param name="param5" value="${u.ten }" />
											<c:param name="param6" value="${u.gia }" />
											<c:param name="param7" value="${u.id }" />
										</c:url>
										<li class="fbbox"><a
											href="http://localhost:9999/<c:out value="${Games_Store}"/>"
											title="" class="thumb, a"> <img
												src="public/images/${u.anh_post }">
										</a> <label for="check-2" class="product-name"> ${u.ten }</label>
											<label for="check-2" class="product-name">
												${u.loai_sp }</label> <label for="check-2" class="product-name">
												${u.anh_1 }</label>
											<ul class="product-name, x">
												<li><a
													href="http://localhost:9999/<c:out value="${Games_Store}"/>"><img
														src="public/images/${u.anh_1 }"></a></li>
												<li><a
													href="http://localhost:9999/<c:out value="${Games_Store}"/>"><img
														src="public/images/${u.anh_2 }"></a></li>
												<li><a
													href="http://localhost:9999/<c:out value="${Games_Store}"/>"><img
														src="public/images/${u.anh_3 }"></a></li>
												<li><a
													href="http://localhost:9999/<c:out value="${Games_Store}"/>"><img
														src="public/images/${u.anh_4 }"></a></li>
											</ul>
											<div class="action clearfix">
												${u.ten }
											</div>
											<div class="price">
												<span class="new"> <c:set var="accountBalance"
														value="${u.gia }" /> <fmt:setLocale value="en_US" /> <fmt:formatNumber
														type="number" maxFractionDigits="3"
														value="${accountBalance}" /> VNĐ
												</span>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
							
						</div>
					</div>
					<div class="sidebar fl-left">
						<div class="section" id="category-product-wp">
							<div class="section-head">
								<h3 class="section-title">Danh mục sản phẩm</h3>
							</div>
							<div class="secion-detail">
								<ul class="list-item">
									<li><a href="xbox.htm" title="">X-box</a></li>
									<li><a href="ps.htm" title="">Play Station</a></li>
									<li><a href="taycam.htm" title="">Tay cầm</a></li>
									<li><a href="headphone.htm" title="">Tai nghe</a></li>
								</ul>
							</div>
						</div>
						<div class="section" id="selling-wp">
							<div class="section-head">
								<h3 class="section-title">Sản phẩm khuyến mãi</h3>
							</div>
							<div class="section-detail">
								<ul class="list-item">
									<c:forEach var="u" items="${selling_product }">
										<c:url var="Games_Store" value="/product.htm">
											<c:param name="param0" value="${u.anh_post }" />
											<c:param name="param1" value="${u.anh_1 }" />
											<c:param name="param2" value="${u.anh_2 }" />
											<c:param name="param3" value="${u.anh_3 }" />
											<c:param name="param4" value="${u.anh_4 }" />
											<c:param name="param5" value="${u.ten }" />
											<c:param name="param6" value="${u.gia }" />
											<c:param name="param7" value="${u.id }" />
										</c:url>
										<li class="fbbox clearfix"><a
											href="http://localhost:9999/<c:out value="${Games_Store}"/>"
											title="" class="thumb fl-left"> <img
												src="public/images/${u.anh_post }" alt="">
										</a>
											<div class="info fl-right">
												<label for="check-2" class="product-name"> ${u.ten }</label>
												<label for="check-2" class="hide"> ${u.loai_sp }</label>
												<div class="price">
													<span class="new"> <c:set var="accountBalance"
															value="${u.gia }" /> <fmt:setLocale value="en_US" /> <fmt:formatNumber
															type="number" maxFractionDigits="3" value="${accountBalance}" /> VNĐ
													</span>
												</div>											
											</div></li>
									</c:forEach>
								</ul>
							</div>
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