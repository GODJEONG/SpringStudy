<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<html xmlns="http://www.w3.org/1999/xhtml"
	class=" js no-touch csstransforms csstransforms3d csstransitions"
	style="">
<head>

<link rel="shortcut icon"
	href="https://www.junohair.com/static_resources/images/junohair.ico">
<link rel="apple-touch-icon"
	href="https://www.junohair.com/static_resources/images/apple-touch-icon.png">
<link rel="apple-touch-icon-precomposed"
	href="https://www.junohair.com/static_resources/images/apple-touch-icon.png">
<meta http-equiv="content-language" content="ko">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="canonical" href="https://www.junohair.com/junohair">
<meta name="robots" content="index,follow">
<meta name="description"
	content="헤어&amp;뷰티 업계의 리딩 브랜드, 당신이 아름다워지는 과정을 경험해보세요">
<meta name="author" content="TheLink">
<meta property="og:type" content="website">
<meta property="og:title" content="준오헤어">
<meta property="og:description"
	content="헤어&amp;뷰티 업계의 리딩 브랜드, 당신이 아름다워지는 과정을 경험해보세요">
<meta property="og:image"
	content="https://www.junohair.com/static_resources/images/junohair_logo.jpg">
<meta property="og:url" content="https://www.junohair.com/junohair">
<meta name="naver-site-verification"
	content="325867716301e23bfeb7a5c336b9dbea78f76ae7">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">
<meta http-equiv="imagetoolbar" content="no">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-DBGPMGH101&amp;l=dataLayer&amp;cx=c"></script>
<script async=""
	src="https://www.googletagmanager.com/gtag/js?id=UA-150219424-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-150219424-1');
</script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
	if (!wcs_add)
		var wcs_add = {};
	wcs_add["wa"] = "fce44f52888e1";
	if (window.wcs) {
		wcs_do();
	}
</script>
<title>준오헤어</title>
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/reset.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/common.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/junohair/common.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/junohair/sub_common.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/junohair/sub_style2.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/junohair/reservation.css?rscVer=0333">
<script
	src="https://www.junohair.com/static_resources/lib/jquery/1.12.4/jquery.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/viewportchecker.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/modernizr.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/smoothscroll.js?rscVer=0333"></script>

<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/contents.display.none.css?rscVer=0333">
<script
	src="https://www.junohair.com/static_resources/lib/vue/2.6.10/vue.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/lib/vue-the-mask/vue-the-mask.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/lib/babel-polyfill/7.4.4/polyfill.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/lib/axios/0.19.0/axios.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/common_vue.js?rscVer=0333"></script>
<script>
	if ("N" === "Y") {
		alert("2021년 4월 11일 저녁10시 ~ \n2021년 4월 12일 오전8시까지 예약이 불가합니다.");
		location.href = '/junohair';
	}
</script>
<script>
	if ("CUST" != "CUST") {
		location.href = '/myjuno/login';
	}
	//JPOS임시 끝
</script>
</head>



<body>
	<div id="wrap">

		<div id="header">
			<div class="header_top">
				<span class="logo"><a href="./"><img
						src="https://www.junohair.com/static_resources/images/home_icon.png"
						alt="JUNO"></a></span>
				<div class="inner">
					<div id="gnb">
						<ul>
							<li class="active"><a onclick="">JUNO HAIR</a></li>
							<li class=""><a onclick="">JUNO ACADEMY</a></li>
							<li class=""><a onclick="">AVENUE JUNO</a></li>
							<li class=""><a onclick="">RECRUIT</a></li>
							<li class=""><a onclick="">MY JUNO</a></li>
						</ul>
					</div>
				</div>

				<c:set var="id" value="${param.id}" />
				<c:set var="admin" value="${param.admin}" />


				<div class="util">
					<dl class="login-container">
						<c:choose>
							<c:when test="${admin eq '관리자'}">
								<dd class="login">
									<a href="./admin">관리자</a> &nbsp;| &nbsp;
								</dd>
							</c:when>
							<c:when test="${admin eq '디자이너'}">
								<dd class="login">
									<a href="./admin">디자이너</a> &nbsp;| &nbsp;
								</dd>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${empty id}">
								<dd class="login">
									<a href="./Login">로그인</a>
								</dd>
							</c:when>
							<c:when test="${not empty id}">
								<dd class="login">
									<a href="./Logout">로그아웃</a>
								</dd>
							</c:when>
						</c:choose>
					</dl>
				</div>

				<!-- 언어 변경 -->
				<div class="lang">
					<a href="./" class="cur_lang"><img
						src="https://www.junohair.com/static_resources/images/kr_n.png"
						alt="국가 아이콘" class="national">한국어</a> <span
						class="lang_arr arr_down"><img
						src="https://www.junohair.com/static_resources/images/lang_arr_down.png"
						alt=""></span> <span class="lang_arr arr_up"><img
						src="https://www.junohair.com/static_resources/images/lang_arr_up.png"
						alt=""></span>
					<ul class="lang_list">
						<li><img
							src="https://www.junohair.com/static_resources/images/en_n.png"
							alt="국가 아이콘" class="national">ENG</li>
						<li><img
							src="https://www.junohair.com/static_resources/images/cn_n.png"
							alt="국가 아이콘" class="national">中國語</li>
					</ul>
				</div>
			</div>
			<div class="header_btm">
				<div class="inner">
					<h1>
						<a href="./"> <img
							src="https://www.junohair.com/static_resources/images/junohair/junohair_logo_dark.png"
							alt="JUNO HAIR" class="dark"> <img
							src="https://www.junohair.com/static_resources/images/junohair/junohair_logo_light.png"
							alt="JUNO HAIR" class="light">
						</a>
					</h1>
					<div class="lnb">
						<ul>
							<li><a>ABOUT</a></li>
							<li><a>SALON</a></li>
							<li><a href="myJuno">MY JUNO</a></li>
							<li><a href="news">COMMUNICATION</a></li>
							<li><a href="branch">RESERVATION</a></li>
							<li><a href="jmarket">J MARKET</a></li>
						</ul>
					</div>
					<div class="mobile_menu_btn">
						<a href="#juno" onclick="m_nav();"> <span></span> <span></span>
							<span></span>
						</a>
					</div>
				</div>
			</div>
		</div>
</body>
</html>
