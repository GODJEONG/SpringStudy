<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class=" js no-touch csstransforms csstransforms3d csstransitions" style=""><head>

<link rel="shortcut icon" href="https://www.junohair.com/static_resources/images/junohair.ico">
<link rel="apple-touch-icon" href="https://www.junohair.com/static_resources/images/apple-touch-icon.png">
<link rel="apple-touch-icon-precomposed" href="https://www.junohair.com/static_resources/images/apple-touch-icon.png">
<link rel="canonical" href="https://www.junohair.com/junohair">

	<!-- Global site tag (gtag.js) - Google Analytics -->
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-DBGPMGH101&amp;l=dataLayer&amp;cx=c"></script><script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-150219424-1"></script>
<script>
/*
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-150219424-1');
*/
</script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
/*
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "fce44f52888e1";
if(window.wcs) {
wcs_do();
}
*/
</script>
<title>준오헤어</title>
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/reset.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/owl.carousel.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/common.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/junohair/common.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/junohair/sub_common.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/junohair/sub_style4.css?rscVer=0333">
<script src="https://www.junohair.com/static_resources/lib/jquery/1.12.4/jquery.min.js?rscVer=0333"></script>
<script src="https://www.junohair.com/static_resources/js/owl.carousel.min.js?rscVer=0333"></script>
<script src="https://www.junohair.com/static_resources/js/imagesloaded.3.2.x.pkgd.min.js?rscVer=0333"></script>
<script src="https://www.junohair.com/static_resources/js/isotope.min.js?rscVer=0333"></script>
<script src="https://www.junohair.com/static_resources/js/viewportchecker.js?rscVer=0333"></script>
<script src="https://www.junohair.com/static_resources/js/modernizr.js?rscVer=0333"></script>
<script src="https://www.junohair.com/static_resources/js/smoothscroll.js?rscVer=0333"></script>

<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/contents.display.none.css?rscVer=0333">
<script src="https://www.junohair.com/static_resources/lib/vue/2.6.10/vue.min.js?rscVer=0333"></script>
<script src="https://www.junohair.com/static_resources/lib/vue-the-mask/vue-the-mask.js?rscVer=0333"></script>
<script src="https://www.junohair.com/static_resources/lib/babel-polyfill/7.4.4/polyfill.min.js?rscVer=0333"></script>
<script src="https://www.junohair.com/static_resources/lib/axios/0.19.0/axios.min.js?rscVer=0333"></script>
<script src="https://www.junohair.com/static_resources/js/common_vue.js?rscVer=0333"></script>

<script src="https://www.junohair.com/static_resources/js/junohair/juno_sub_ui.js?rscVer=0333"></script>
</head>
<body>
	<div id="wrap">
		<jsp:include page="/WEB-INF/views/common/header2.jsp">
			<jsp:param name="id" value="${sessionScope.id}" />
			<jsp:param name="admin" value="${sessionScope.admin}" />
		</jsp:include>
		<div id="container">

			<div class="sub_visual">
				<div class="sub_visual_bg" style="background-image:url(https://www.junohair.com/static_resources/images/junohair/sub/community/intro_visual2.jpg)"></div>
				<div class="sub_visual_text">
					<strong>COMMUNICATION</strong>
					<p class="sub_visual_sub_text">
						<span>고객과의 소통을 최우선으로 <br class="m">생각하는 준오헤어는</span><br>
						<span>다양한 방법으로 고객의 소리를 듣겠습니다</span>
					</p>
				</div>
			</div>
			<div class="sub_menu w33p">
				<div class="inner">
					<ul>
						<li class="cur"><strong><a href="#juno" onclick="location.href='news_list'">NEWS</a></strong></li>
						<li><strong><a href="#juno" onclick="location.href='qna'">Q&amp;A</a></strong></li>
						<li><strong><a href="#juno" onclick="location.href='partnership'">제휴문의</a></strong></li>
					</ul>
				</div>
			</div>
			<div class="clear"></div>

			
			<div id="contents" class="praise">
				<div class="section section1">
					<div class="inner">
						<div class="section_tit">
							<span class="bar"></span>
							<strong class="tit">NEWS</strong>
						</div>
						<div class="section_content fadeInUp hidden">
							<div class="news_view">
								<div class="head">
									<h2 class="subj">${notice.title}</h2>
									<div class="info">
										<span class="cate">
											<c:choose>
				                                <c:when test="${notice.contentType == 1}">News</c:when>
				                                <c:when test="${notice.contentType == 2}">Notice</c:when>
				                                <c:otherwise>Etc</c:otherwise>
				                            </c:choose>
										</span>
										<span class="date">${notice.created_at}</span>
									</div>
								</div>
								<div class="edit">
									<div style="text-align: center;"><img src="./resources/noticenews/${notice.contentImage}" alt="" style="font-size: 13px;"></div><p style="text-align: center; "></p>
								</div>
								<!-- 
								<div class="news_footnav">
									<ul>
										<li>
											<a href="#juno" onclick="location.href='/junohair/communication/news_view?idx=31'" class="prev">
												<span class="tit">이전글</span>
												<span class="subj">2024 썸머 이벤트</span>
												<span class="date">2024-06-20</span>
											</a>
										</li>
									</ul>
								</div>
								 -->
								<div class="btn_bottom">
									<a href="./news" class="btnbox_black">목록보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div id="footer">
			<div class="footgotop" id="goTop"><a href="#juno" onclick="goTopbtn()"><span class="blind">상단으로 가기</span></a></div>
			<div class="footer_top">
				<div class="inner">
					<div class="ft_left">
						<div class="family_site">
							<img src="https://www.junohair.com/static_resources/images/family_site.png" alt="family site">
							<span class="bar"></span>
							<ul class="fs_list">
								<li><a href="#juno" onclick="location.href='/junohair'"><img src="https://www.junohair.com/static_resources/images/family_junoHair.png" alt="JUNO HAIR"></a></li>
								<li><a href="#juno" onclick="location.href='/junoacademy'"><img src="https://www.junohair.com/static_resources/images/family_junoAcademy.png" alt="JUNO ACADEMY"></a></li>
								<li><a href="#juno" onclick="location.href='/avenuejuno'"><img src="https://www.junohair.com/static_resources/images/family_junoAvenue.png" alt="JUNO AVENUE"></a></li>
								<li><a href="#juno" onclick="location.href='https://www.triamilia.com/'"><img src="https://www.junohair.com/static_resources/images/family_triamilia.png" alt="triamilia"></a></li> 
							</ul>
						</div>
						<div class="terms">
							<ul class="term_list">
								<li><a href="#juno" onclick="window.open('/myjuno/privacypolicy?section=1', '_blank');">이용약관</a></li>
								<li><span class="bar"></span></li>
								<li><a href="#juno" onclick="window.open('/myjuno/privacypolicy?section=2', '_blank');">개인정보처리방침</a></li>
							</ul>
						</div>
					</div>
					<div class="ft_right">
						<div class="ft_rightTop">
							<ul>
								<li><a href="#juno" onclick="location.href='/junohair/communication/partnership'">제휴문의</a></li>
								<li><a href="#juno" onclick="location.href='/recruit'">인재채용</a></li>
								<li><a href="#juno" onclick="location.href='/junohair/communication/qna'">Q&amp;A</a></li>
							</ul>
						</div>
						<div class="fr_rightBottom">
							<strong><img src="https://www.junohair.com/static_resources/images/junohair/footer_media_img.png" alt="JUNO SOCIAL MEDIA"><span class="bar"></span></strong>
							<ul>
								<li><a href="#juno" onclick="window.open('https://www.facebook.com/junohair.official/', '_blank');"><img src="https://www.junohair.com/static_resources/images/junohair/footer_social1.jpg" alt="facebook"></a></li>
								<li><a href="#juno" onclick="window.open('https://www.instagram.com/junohair_official/', '_blank');"><img src="https://www.junohair.com/static_resources/images/junohair/footer_social2.jpg" alt="instagram"></a></li>
								<li><a href="#juno" onclick="window.open('https://www.youtube.com/channel/UCwmPMC_aCMskDKR6P30pn6Q/', '_blank');"><img src="https://www.junohair.com/static_resources/images/junohair/footer_social_youtube.jpg" alt="youtube"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="footer_btm">
				<div class="inner">
					<strong><img src="https://www.junohair.com/static_resources/images/junohair/footer_junohair_logo.png" alt="JUNO HAIR"></strong>
					<div class="address">
						<p>
							<span>(주)준오뷰티</span>
							<span>대표자 강윤선</span>	
							<span>서울특별시 강남구 청담동 63-14 JUNO &amp; BEAUTY 5층</span>	
						</p>
						<p>
							<span>사업자등록번호 : 110-81-60003</span>
							<span>통신판매번호 : 2020-서울강남-02683호</span>
							<span>대표전화 +82-2-548-0605</span>
						</p>
						<p>Copyright ⓒ 2017 JUNOHAIR.COM. All rights Reserved.</p>
					</div>
		            <div class="emblem">
		            	<img src="https://www.junohair.com/static_resources/images/K_BPI_2020.png" alt="2020 K-BPI 파워엠블렘" style="height:44px">  <!-- 2020-04-02 이미지경로 수정-->
						<img src="https://www.junohair.com/static_resources/images/naward.png" alt="2017 &amp;Award">
		            </div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>