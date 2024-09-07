<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<script
	src="https://connect.facebook.net/en_US/sdk.js?hash=726cc7837520108e17dacbbf8f4cc324"
	async="" crossorigin="anonymous"></script>
<script id="facebook-jssdk"
	src="https://connect.facebook.net/en_US/sdk.js"></script>
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
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
	window.onload = function() {
		// 서버에서 전달된 loginCheck 변수를 가져옵니다.
		var loginCheck = "<c:out value='${loginCheck}'/>";
		// loginCheck 변수가 null이 아닌 경우 알럿을 띄웁니다.
		if (loginCheck) {
			alert(loginCheck);
		}
	};
</script>
<title>준오헤어</title>

<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/lib/bootstrap/4.3.1/css/bootstrap.min.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/reset.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/common.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/junohair/common.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/junohair/sub_common.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/myjuno/member.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/myjuno/login.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/contents.display.none.css?rscVer=0333">

<script
	src="https://www.junohair.com/static_resources/lib/jquery/1.12.4/jquery.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/viewportchecker.js?rscVer=0333"></script>
<style type="text/css">
.submenu {
	display: none;
}

.cursor {
	cursor: hand;
}
</style>

<script
	src="https://www.junohair.com/static_resources/js/modernizr.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/smoothscroll.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/lib/bootstrap/4.3.1/js/bootstrap.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/naveridlogin_js_sdk_2.0.0.js?rscVer=0333"></script>

<script
	src="https://www.junohair.com/static_resources/lib/vue/2.6.10/vue.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/lib/vue-the-mask/vue-the-mask.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/lib/babel-polyfill/7.4.4/polyfill.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/lib/axios/0.19.0/axios.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/common.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/common_vue.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/myjuno/juno_sub_ui.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/lib/js-cookie/3.0.0-rc.0/js.cookie.min.js?rscVer=0333"></script>

<script
	src="https://www.junohair.com/static_resources/lib/kakao/kakao.min.js"></script>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>
</head>

<jsp:include page="/WEB-INF/views/common/header2.jsp">
	<jsp:param name="id" value="${sessionScope.id}" />
	<jsp:param name="admin" value="${sessionScope.admin}" />
</jsp:include>


<body class="login">
	<div id="wrap">


		<script type="text/javascript">
			window.onload = function() {
				var errorMessage = "${errorMessage}";
				if (errorMessage) {
					alert(errorMessage);
				}
			}
		</script>

		<script>
			function gotoMyjuno() {
				if ("" != "CUST") {
					alert("로그인후 이용이 가능합니다.");
				}
				location.href = "/myjuno/member_info";
			}
		</script>
		<div id="container">

			<div class="sub_visual">
				<div class="sub_visual_bg"
					style="background-image: url(https://www.junohair.com/static_resources/images/myjuno/intro_visual.jpg)"></div>
				<div class="sub_visual_text">로그인</div>
			</div>
			<div class="sub_menu"></div>
			<div id="contents">
				<div class="section1">
					<div class="inner">
						<div class="section_tit">
							<span class="bar"></span> <strong class="tit">로그인</strong> <span
								class="tit_logo"> <img
								src="https://www.junohair.com/static_resources/images/myjuno/logo_hair_academy.jpg"
								alt="준오헤어 준오아카데미 로고">
							</span>
						</div>
						<div class="section_content">
							<form id="loginFrm" name="loginFrm" action="./LoginAction"
								method="post">
								<input type="hidden" name="u_mgb1" value="cust">
								<div class="form_wrap">
									<div class="form_top">
										<div class="form_left">
											<p>
												<strong>아이디</strong><input type="text" name="id" id="id">
											</p>
											<p>
												<strong>비밀번호</strong><input type="password" name="pw"
													id="pw">
											</p>
										</div>

										<div class="form_right">
											<input type="submit" class="button" value="로그인" />
										</div>

										<style>
.login .form_right input {
	display: block;
	color: #fff;
	text-align: center;
	background: #ed1c24;
	font-size: 15px;
	font-weight: 600;
	line-height: 90px;
	width: 130px;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
}
</style>

									</div>
									<div class="clear"></div>
									<div class="form_btm">
										<ul>
											<!-- <li><input type="checkbox" name="save_id" id="save_id">
												<label for="save_id"> 아이디저장 </label></li> -->
											<li><a href="./Join1">회원가입</a></li>
											<!-- <li><a href="#juno" onclick="findIdPw()">아이디/비밀번호찾기</a>
											</li> -->
											<!-- <li class="non_memberchk"><a href="#juno"
												onclick="searchNoMemberOrder()"><span>J MARKET
														비회원 주문 조회</span></a></li> -->
										</ul>
									</div>
								</div>
							</form>

							<div class="foot_non_memberchk">
								<a href="#juno" onclick="searchNoMemberOrder()">J MARKET 비회원
									주문 조회</a>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- footer.jsp 내용 -->
		<jsp:include page="/WEB-INF/views/common/footer.jsp" />

		<!-- Modal -->
		<div class="modal fade" id="exampleModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalCenterTitle"
							style="font-size: 20px;"></h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body" style="font-size: 17px; line-height: 1.7;">
						추가 정보를 입력하여 가입을 완료해주세요.<br> 이후 <span id="sns_name"></span>을(를)
						이용하여 간편하게 로그인 할 수 있습니다.
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-danger" onclick="join('s')">간편
							회원가입하기</button>
					</div>
				</div>
			</div>
		</div>

		<div class="loading" style="display: none;">
			<div class="loading_inner">

				<img
					src="https://www.junohair.com/static_resources/images/gate_img1.png"
					alt="JUNO HAIR">

				<p>진행중 입니다..</p>
				<div class="loading_dots">
					<span class="loading_dot"></span> <span class="loading_dot"></span>
					<span class="loading_dot"></span> <span class="loading_dot"></span>
					<span class="loading_dot"></span>
				</div>
			</div>
		</div>


		<div id="fb-root" class=" fb_reset">
			<div
				style="position: absolute; top: -10000px; width: 0px; height: 0px;">
				<div></div>
			</div>
		</div>
</body>
</html>