<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login with Admin</title>
<script src="resource/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link rel="stylesheet" href="public/css/login/login.css" type="text/css" />
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700'
	rel='stylesheet' type='text/css'>
<base href="${pageContext.servletContext.contextPath}/">
</head>
<style>
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, dl, dt, dd, ol, nav ul, nav li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

ol, ul {
	list-style: none;
	margin: 0px;
	padding: 0px;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}
/* start editing from here */
a {
	text-decoration: none;
}

.txt-rt {
	text-align: right;
} /* text align right */
.txt-lt {
	text-align: left;
} /* text align left */
.txt-center {
	text-align: center;
} /* text align center */
.float-rt {
	float: right;
} /* float right */
.float-lt {
	float: left;
} /* float left */
.clear {
	clear: both;
} /* clear float */
.pos-relative {
	position: relative;
} /* Position Relative */
.pos-absolute {
	position: absolute;
} /* Position Absolute */
.vertical-base {
	vertical-align: baseline;
} /* vertical align baseline */
.vertical-top {
	vertical-align: top;
} /* vertical align top */
nav.vertical ul li {
	display: block;
} /* vertical menu */
nav.horizontal ul li {
	display: inline-block;
} /* horizontal menu */
img {
	max-width: 100%;
}
/*end reset*/
body {
	background: url(public/css/login/images/login.png) no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	padding: 0;
	margin: 0;
	font-family: 'Roboto Condensed', sans-serif;
	font-size: 100%;
}

h1, h2, h3, h4, h5, h6 {
	margin: 0;
}

p {
	margin: 0;
}

ul {
	margin: 0;
	padding: 0;
}

label {
	margin: 0;
}

a {
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
}

a:hover {
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
}
/*--header start here--*/
.header-main {
	padding: 100px 0px 50px;
	width: 30%;
	margin: 0 auto;
}

.header-main h1 {
	font-size: 64px;
	color: #FFFFFF;
	text-align: center;
	padding-bottom: 0.8em;
}

.sign-up {
	margin: 2em 0;
}

span.hed-white {
	color: #fff;
}

.style1 {
	text-align: right;
	padding: 60px 0px 40px 0px;
}

.header-left {
	background: #fff;
	padding: 0px;
}

.sign-up h2 {
	font-size: 22px;
	color: #fff;
	font-family: 'Roboto Condensed', sans-serif;
	text-align: center;
	background: #ff3366;
	width: 40px;
	height: 40px;
	line-height: 1.7em;
	border-radius: 50%;
	margin: 0 auto;
}

.header-left-bottom {
	
}

.header-left-bottom h3 {
	font-size: 16px;
	font-weight: 400;
	color: #A59DA1;
	line-height: 1.5em;
	margin: 0px 0px 25px 0px;
	font-family: 'Roboto Condensed', sans-serif;
}

span.login-color {
	color: #FFB900;
	font-weight: 700;
}

.header-left-bottom input[type="text"] {
	background: url(public/css/login/images/m.png) no-repeat 0px 5px;
	outline: none;
	font-size: 15px;
	font-weight: 400;
	color: #fff;
	padding: 12px 13px 20px 44px;
	border: none;
	border-bottom: 1px solid #fff;
	width: 87%;
	margin: 0 0 20px;
	display: inline-block;
}

.header-left-bottom input[type="password"] {
	background: url(public/css/login/images/l.png) no-repeat 0px 5px;
	outline: none;
	font-size: 15px;
	font-weight: 400;
	color: #fff;
	border: none;
	border-bottom: 1px solid #fff;
	padding: 12px 13px 20px 44px;
	width: 87%;
	margin: 0 0 20px;
	display: inline-block;
}

.header-left-bottom button[type="submit"] {
	background: #ff3366;
	color: #FFF;
	font-size: 26px;
	padding: 0.3em 1.2em;
	width: 100%;
	font-weight: 500;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	display: inline-block;
	cursor: pointer;
	outline: none;
	border: none;
	border-radius: 3px;
	font-family: 'Roboto Condensed', sans-serif;
}

.header-left-bottom input[type="submit"]:hover {
	background: #b5183f;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
}

.remember {
	margin: 1em 0em;
}

.header-social {
	text-align: center;
}


.header-social a.face {
	background: url(public/css/login/images/fac.png) no-repeat 12px 12px #3B62A3;
	color: #FFF;
	font-size: 16px;
	font-weight: 400;
	padding: 10px 2em;
	width: 34%;
	text-align: left;
	margin-right: 3%;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	display: inline-block;
	border-radius: 3px;
	font-family: 'Roboto Condensed', sans-serif;
}

.header-social a.face:hover {
	background: url(public/css/login/images/fac.png) no-repeat 12px 9px #0E387C;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
}
/*-- agileits --*/
.header-social a.twitt {
	background: url(public/css/login/images/twitter.png) no-repeat 12px 12px #19B0E7;
	color: #FFF;
	font-size: 16px;
	font-weight: 400;
	padding: 10px 2.5em;
	width: 30%;
	text-align: left;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	display: inline-block;
	cursor: pointer;
	outline: none;
	border-radius: 3px;
	font-family: 'Roboto Condensed', sans-serif;
}

.header-social a.twitt:hover {
	background: url(public/css/login/images/twitter.png) no-repeat 12px 9px #0192C7;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
}

.header-social h4 {
	font-size: 17px;
	color: #6A67CE;
	text-align: center;
	margin: 20px 0px;
	font-family: 'Roboto Condensed', sans-serif;
}

.header-social h4 a {
	color: #6A67CE;
}

.header-social h4 a:hover {
	color: #FFB900;
}

.header-left-bottom.checkbox {
	position: relative;
	display: block;
	float: left;
}

.header-left-bottom p {
	font-size: 20px;
	/*-- w3layouts --*/
	font-weight: 400;
	color: #000;
	display: inline-block;
	padding: 0px 0px 0px 68px;
}

.header-left-bottom p a {
	font-size: 20px;
	font-weight: 400;
	color: #000;
}

.header-left-bottom p a:hover {
	color: #777;
	text-decoration: none;
}

label.checkbox {
	display: inline-block;
}

span.sin-color {
	color: #FFB900;
	font-size: 16px;
	font-weight: 700;
}

.checkbox i {
	font-size: 20px;
	font-weight: 400;
	color: #999;
	font-style: normal;
}

.header-bottom-strip {
	margin: 60px 0px 0px 0px;
	padding: 40px 20px 30px 40px;
	background: #fff;
	margin: 70px 0px 0px 0px;
	position: relative;
}

.header-bottom-strip input[type="text"] {
	outline: none;
	font-size: 17px;
	font-weight: 400;
	color: #000;
	padding: 20px 60px;
	border: 1px solid #39A1E5;
	margin: 0px 0px 15px 0px;
	width: 30%;
	-webkit-appearance: none;
	background: #eeeeee;
}

.strip-left input.user {
	/*-- agileits --*/
	background: url(public/css/login/images/user.png) no-repeat 10px 9px #FBFBFB;
	display: block;
}

.strip-left input[type="password"] {
	outline: none;
	font-size: 17px;
	font-weight: 400;
	color: #000;
	padding: 10px 10px 10px 40px;
	border: 1px solid #A59DA1;
	margin: 0px 0px 15px 0px;
	width: 78%;
	-webkit-appearance: none;
	background: #eeeeee;
}

.strip-left input.lock {
	background: url(public/css/login/images/lock.png) no-repeat 10px 10px #FBFBFB;
	display: block;
}

.strip-left {
	float: left;
	width: 31%;
}

.strip-left.middle {
	margin: 0px 20px;
}

.strip-left input[type="text"] {
	outline: none;
	font-size: 15px;
	color: #000;
	padding: 10px 10px 10px 40px;
	border: 1px solid #A59DA1;
	width: 78%;
	-webkit-appearance: none;
	font-family: 'Roboto Condensed', sans-serif;
}

.strip-left input[type="submit"] {
	color: #FFF;
	font-size: 18px;
	padding: 0.4em 1.2em;
	width: 100%;
	background: #ffb900;
	border-bottom: 4px solid #C5920A;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	display: inline-block;
	cursor: pointer;
	outline: none;
	border-right: none;
	border-left: none;
	border-top: none;
	font-family: 'Roboto Condensed', sans-serif;
}
/*-- w3layouts --*/
.strip-left input[type="submit"]:hover {
	background: #6A67CE;
	border-bottom: 4px solid #5350CA;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
}

.strip-left h4 {
	font-size: 20px;
	font-weight: 600;
	color: #19B0E7;
	margin: 25px 0px 0px 25px;
	display: inline-block;
}

.strip-left ul.botm-strip-icon {
	padding: 0px 0px 0px 50px;
	list-style: none;
	display: inline-block;
	vertical-align: middle;
	float: right;
}

.strip-left ul.botm-strip-icon li {
	display: inline-block;
}

.strip-left ul.botm-strip-icon li a {
	background: url(../images/sprite.png) no-repeat;
	width: 20px;
	height: 25px;
	display: block;
}

.strip-left ul.botm-strip-icon li a.f {
	background-position: 0px 0px;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
}

.strip-left ul.botm-strip-icon li a.tw {
	background-position: -21px 2px;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
}

.strip-left ul.botm-strip-icon li a.f:hover {
	background-position: 0px -25px;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
}

.strip-left ul.botm-strip-icon li a.tw:hover {
	background-position: -21px -25px;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
}

.strip-left p {
	font-size: 20px;
	font-weight: 400;
	color: #999;
}

.strip-left p a {
	font-size: 16px;
	font-weight: 400;
	color: #999;
}

.strip-left p a:hover {
	color: #6a67ce;
	text-decoration: none;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
}

.tool-tip-main:after {
	content: '';
	position: absolute;
	width: 0;
	height: 0;
	bottom: -20px;
	border-right: 20px solid rgba(0, 0, 0, 0);
	border-bottom: 20px solid #fff;
	border-left: 20px solid rgba(0, 0, 0, 0);
	top: -9%;
	right: 6%;
}

.strip-login {
	background: #6a67ce;
	width: 25%;
	position: absolute;
	top: -41%;
	left: 73.5%;
	padding: 0.8em 0em 0.8em 0.8em;
}

.strip-sign-up h3 {
	font-size: 21px;
	color: #fff;
	margin: 0px;
	font-family: 'Roboto Condensed', sans-serif;
}

.login-close {
	position: absolute;
	right: 10px;
	top: 16px;
	cursor: pointer;
}

.strip-sign-up {
	float: left;
}

.forgot {
	float: right;
}

.forgot h6 {
	font-size: 1em;
	margin-top: 0.2em;
}

.forgot h6 a {
	color: #efe8e8;
}

.forgot h6 a:hover {
	color: #ff3366;
}

.log-user h6 {
	font-size: 1em;
	float: left;
	color: #999;
}

.log-user {
	padding-top: 0.8em;
}
/*--cheek box--*/
.remember-top {
	float: left;
}

.checkbox {
	margin-bottom: 4px;
	font-size: 1.2em;
	line-height: 27px;
	cursor: pointer;
}

.checkbox {
	position: relative;
	font-size: 0.95em;
	font-weight: normal;
	color: #efe8e8;
	padding: 0em 0.5em 0em 2.5em;
}

.checkbox i {
	position: absolute;
	bottom: 5px;
	left: 2px;
	display: block;
	width: 18px;
	height: 18px;
	outline: none;
	background: #fff;
	border: 1px solid #6A67CE;
}

.checkbox input+i:after {
	content: '';
	background: url("../images/tick.png") no-repeat 5px 5px;
	top: -1px;
	left: -1px;
	width: 15px;
	height: 15px;
	font: normal 12px/16px FontAwesome;
	text-align: center;
}

.checkbox input+i:after {
	position: absolute;
	opacity: 0;
	transition: opacity 0.1s;
	-o-transition: opacity 0.1s;
	-ms-transition: opacity 0.1s;
	-moz-transition: opacity 0.1s;
	-webkit-transition: opacity 0.1s;
}

.checkbox input {
	position: absolute;
	left: -9999px;
}

.checkbox input:checked+i:after {
	opacity: 1;
}
/*---*/
.clear {
	clear: both;
}

/*--header end here--*/
/*--copyright start here--*/
.copyright {
	padding: 30px 0px;
	text-align: center;
}

.copyright p {
	font-size: 16px;
	font-weight: 400;
	color: #fff;
}

.copyright p a {
	font-size: 16px;
	font-weight: 400;
	color: #fff;
}

.copyright p a:hover {
	color: #ff3366;
	text-decoration: none;
}
}
</style>
<body>
	<!--header start here-->
	<div class="header">
		<div class="header-main">
			<h1>Login Admin</h1>
			<div class="header-bottom">
				<div class="header-right w3agile">
					${message }
					<div class="header-left-bottom agileinfo">

						<form:form action="admin/login.htm" method="post"
							modelAttribute="login">
							<form:input type="text" path="username" value="User Name"
								name="name" onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'User name';}" />
							<form:input type="password" path="password" value="Password"
								name="password" onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'password';}" />
								
							<form method="post" onsubmit="return submitUserForm();">
						    	<div class="g-recaptcha" data-sitekey="6Ld8T58bAAAAAFS1OpkPZDjBbd3eFA3Zrinf0sNg" data-callback="verifyCaptcha"></div>
							    <div id="g-recaptcha-error"></div>
							    <input type="submit" name="submit" value="Login" />						    
							</form>
							<script src='https://www.google.com/recaptcha/api.js'></script>
							<script>
								function submitUserForm() {
								    var response = grecaptcha.getResponse();
								    if(response.length == 0) {
								        document.getElementById('g-recaptcha-error').innerHTML = '<span style="color:red;">This field is required.</span>';
								        return false;
								    }
								    return true;
								}
								 
								function verifyCaptcha() {
								    document.getElementById('g-recaptcha-error').innerHTML = '';
								}
							</script>
							<button type="submit">Login</button>
						</form:form>
						<div class="header-left-top">
							
						</div>
						

					</div>
				</div>

			</div>
		</div>
	</div>
	<!--header end here-->

	<div class="copyright">
		<p>
			© 2020 Classy Login Form. All rights reserved | Design by <a
				href="http://w3layouts.com/" target="_blank"> W3layouts </a>
		</p>
	</div>
	<!--footer end here-->

</body>
</html>