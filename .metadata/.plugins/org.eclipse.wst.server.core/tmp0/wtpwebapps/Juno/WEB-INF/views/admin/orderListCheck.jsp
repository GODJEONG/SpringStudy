<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
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
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
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
	href="https://www.junohair.com/static_resources/css/myjuno/member.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/jmarket.css?rscVer=0333">
<script
	src="https://www.junohair.com/static_resources/lib/jquery/1.12.4/jquery.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/imagesloaded.3.2.x.pkgd.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/isotope.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/modernizr.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/smoothscroll.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/viewportchecker.js?rscVer=0333"></script>

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

</head>
<jsp:include page="/WEB-INF/views/common/header2.jsp">
	<jsp:param name="id" value="${sessionScope.id}" />
	<jsp:param name="admin" value="${sessionScope.admin}" />
</jsp:include>

<body class="member">
	<div id="wrap">

		<div id="container">
			<div class="sub_visual">
				<div class="sub_visual_bg"
					style="background-image: url('https://www.junohair.com/static_resources/images/myjuno/intro_visual.jpg')"></div>
				<div class="sub_visual_text">MY JUNO</div>
			</div>
			<!-- 
			<div class="sub_menu w20p">
				<div class="inner">
					<ul>
						<li><strong><a href="#juno" onclick="location.href='/myjuno/member_info'">회원정보</a></strong></li>
						<li><strong><a href="#juno" onclick="location.href='/myjuno/use_list'">이용내역</a></strong></li>
						<li class="cur"><strong><a href="#juno" onclick="location.href='/myjuno/order_list'">구매내역</a></strong></li>
						<li><strong><a href="#juno" onclick="location.href='/myjuno/sdelivery_set'">정기배송설정</a></strong></li>
						<li><strong><a href="#juno" onclick="location.href='/myjuno/withdraw'">회원탈퇴</a></strong></li>
					</ul>
				</div>
			</div>
			 -->
			<div class="clear"></div>

			<div id="contents" class="orderwrap">
				<div class="section1">
					<div class="inner">
						<div class="section_tit">
							<span class="bar"></span>
							<!-- 
							<strong class="tit">구매내역</strong>
							 -->
						</div>
						<div class="tbl_order_head">
							<h3 class="ttl"></h3>
						</div>
						<div class="web_view">
							<div class="tbl_order">
								<table border="1" cellpadding="0" cellspacing="0"
									summary="주문배송리스트">
									<colgroup>
										<col width="150" />
										<col width="150" />
										<col width="*" />
										<col width="120" />
										<col width="150" />
										<col width="150" />
									</colgroup>
									<thead>
										<tr>
											<th>주문일자</th>
											<th>주문번호</th>
											<th>유저 아이디</th>
											<th>총결제금액</th>
											<th>결제수단</th>
											<th>상태</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="order" items="${orders}">
											<tr>
												<td>${order.orderDate}</td>
												<td><a href="orderDetails?orderid=${order.orderId}">${order.orderId}</a></td>
												<td>${order.userId}</td>
												<td>${order.totalAmount}</td>
												<td>카카오페이</td>
												<td>결제완료</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>

						<div class="mobile_view">
							<div class="list_order" id="list_mobile"></div>
						</div>
						<div class="btn_data_more" id="btn_data_more"
							style="display: none;">
							<a href="#juno" onclick="getOrderList()">더보기</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="footer">
			<div class="footgotop" id="goTop">
				<a href="#juno" onclick="goTopbtn()"><span class="blind">상단으로
						가기</span></a>
			</div>
			<div class="footer_top">
				<div class="inner">
					<div class="ft_left">
						<div class="family_site">
							<img
								src="https://www.junohair.com/static_resources/images/family_site.png"
								alt="family site"> <span class="bar"></span>
							<ul class="fs_list">
								<li><a href="#juno" onclick="location.href='/junohair'"><img
										src="https://www.junohair.com/static_resources/images/family_junoHair.png"
										alt="JUNO HAIR"></a></li>
								<li><a href="#juno" onclick="location.href='/junoacademy'"><img
										src="https://www.junohair.com/static_resources/images/family_junoAcademy.png"
										alt="JUNO ACADEMY"></a></li>
								<li><a href="#juno" onclick="location.href='/avenuejuno'"><img
										src="https://www.junohair.com/static_resources/images/family_junoAvenue.png"
										alt="JUNO AVENUE"></a></li>
								<li><a href="#juno"
									onclick="location.href='https://www.triamilia.com/'"><img
										src="https://www.junohair.com/static_resources/images/family_triamilia.png"
										alt="triamilia"></a></li>
							</ul>
						</div>
						<div class="terms">
							<ul class="term_list">
								<li><a href="#juno"
									onclick="window.open('/myjuno/privacypolicy?section=1', '_blank');">이용약관</a></li>
								<li><span class="bar"></span></li>
								<li><a href="#juno"
									onclick="window.open('/myjuno/privacypolicy?section=2', '_blank');">개인정보처리방침</a></li>
							</ul>
						</div>
					</div>
					<div class="ft_right">
						<div class="ft_rightTop">
							<ul>
								<li><a href="#juno"
									onclick="location.href='/junohair/communication/partnership'">제휴문의</a></li>
								<li><a href="#juno" onclick="location.href='/recruit'">인재채용</a></li>
								<li><a href="#juno"
									onclick="location.href='/junohair/communication/qna'">Q&amp;A</a></li>
							</ul>
						</div>
						<div class="fr_rightBottom">
							<strong><img
								src="https://www.junohair.com/static_resources/images/junohair/footer_media_img.png"
								alt="JUNO SOCIAL MEDIA"><span class="bar"></span></strong>
							<ul>
								<li><a href="#juno"
									onclick="window.open('https://www.facebook.com/junohair.official/', '_blank');"><img
										src="https://www.junohair.com/static_resources/images/junohair/footer_social1.jpg"
										alt="facebook"></a></li>
								<li><a href="#juno"
									onclick="window.open('https://www.instagram.com/junohair_official/', '_blank');"><img
										src="https://www.junohair.com/static_resources/images/junohair/footer_social2.jpg"
										alt="instagram"></a></li>
								<li><a href="#juno"
									onclick="window.open('https://www.youtube.com/channel/UCwmPMC_aCMskDKR6P30pn6Q/', '_blank');"><img
										src="https://www.junohair.com/static_resources/images/junohair/footer_social_youtube.jpg"
										alt="youtube"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="footer_btm">
				<div class="inner">
					<strong><img
						src="https://www.junohair.com/static_resources/images/junohair/footer_junohair_logo.png"
						alt="JUNO HAIR"></strong>
					<div class="address">
						<p>
							<span>(주)준오뷰티</span> <span>대표자 강윤선</span> <span>서울특별시 강남구
								청담동 63-14 JUNO &amp; BEAUTY 5층</span>
						</p>
						<p>
							<span>사업자등록번호 : 110-81-60003</span> <span>통신판매번호 :
								2020-서울강남-02683호</span> <span>대표전화 +82-2-548-0605</span>
						</p>
						<p>Copyright ⓒ 2017 JUNOHAIR.COM. All rights Reserved.</p>
					</div>
					<div class="emblem">
						<img
							src="https://www.junohair.com/static_resources/images/K_BPI_2020.png"
							alt="2020 K-BPI 파워엠블렘" style="height: 44px">
						<!-- 2020-04-02 이미지경로 수정-->
						<img
							src="https://www.junohair.com/static_resources/images/naward.png"
							alt="2017 &amp;Award">
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>