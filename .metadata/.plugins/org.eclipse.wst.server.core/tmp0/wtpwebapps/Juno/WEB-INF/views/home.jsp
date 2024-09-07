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


<title>준오헤어</title>
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/reset.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/owl.carousel.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/slide_animate.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/common.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/junohair/common.css?rscVer=0333">
<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/junohair/main_style.css?rscVer=0333">

<link rel="stylesheet"
	href="https://www.junohair.com/static_resources/css/contents.display.none.css?rscVer=0333">

 <script
	src="https://www.junohair.com/static_resources/lib/jquery/1.12.4/jquery.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/owl.carousel.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/imagesloaded.3.2.x.pkgd.min.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/viewportchecker.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/modernizr.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/smoothscroll.js?rscVer=0333"></script>

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
<script
	src="https://www.junohair.com/static_resources/js/junohair/juno_main_ui.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/lib/js-cookie/3.0.0-rc.0/js.cookie.min.js"></script>

</head>
<body>

	<div id="wrap">
		<!-- header.jsp 내용 -->

		<jsp:include page="/WEB-INF/views/common/header2.jsp">
			<jsp:param name="id" value="${sessionScope.id}" />
			<jsp:param name="admin" value="${sessionScope.admin}" />
		</jsp:include>

		<script>
			function gotoMyjuno() {
				if ("" != "CUST") {
					alert("로그인후 이용이 가능합니다.");
				}
				location.href = "/myjuno/member_info";
			}
		</script>
		<div id="container">

			<div class="owl-item cloned"
				style="width: 1903px; margin-right: 0px;">
				<div class="visual_item"
					onclick="location='./noticeDetail?id=2'"
					style="cursor: pointer;">
					<img
						src="https://www.junohair.com/upload/visual/202406/06abf9b4aefa4dd7a7f954feb2597d08.png"
						alt="">
					<div class="visual_bg"
						style="background-image: url(https://www.junohair.com/upload/visual/202406/89af406befe342cabac5fda9260e48d1.png)"></div>
				</div>
			</div>

			<div id="contents">
				<div class="mainbanner">
					<div class="inner">
						<ul>
							<li class="bann01"><a href="branch">
									<p class="tit">실시간 예약하기</p>
									<p class="desc">쉽고 간편한 매장 예약과 디자이너를 추천해 드립니다.</p>
									<p class="img">
										<img
											src="https://www.junohair.com/static_resources/images/junohair/main/mainbann01.jpg"
											alt="">
									</p>
							</a></li>
							<li class="bann02"><a href="jmarket">
									<p class="tit">J MARKET 이용하기</p>
									<p class="desc">건강한 모발과 두피를 위한 뷰티 제품을 만나보세요.</p>
									<p class="img">
										<img
											src="https://www.junohair.com/static_resources/images/junohair/main/mainbann02.jpg"
											alt="">
									</p>
							</a></li>
						</ul>
					</div>
				</div>

				<div class="maininstargram">
					<div class="inner">
						<h2 class="title"># INSTAGRAM</h2>

						<p class="tit">
							<span>junohair_official</span>
						</p>
						<div
							class="insta_slide insta_offi_slide owl-carousel owl-theme owl-loaded">

							<div class="owl-stage-outer">
								<div class="owl-stage"></div>
							</div>
						</div>


						<p class="tit">
							<span>junohair_collection</span>
						</p>
						<div
							class="insta_slide insta_coll_slide owl-carousel owl-theme owl-loaded">


							<div class="owl-stage-outer">
								<div class="owl-stage"></div>
							</div>
						</div>

					</div>
				</div>

				<div class="mainyoubube">
					<div class="inner">
						<h2 class="title">JUNO YOUTUBE</h2>
						<ul>
							<li class="hidden"><a href="#none"
								onclick="openPopMovie('azVQDiNl-Qo');return false;">
									<div class="img">
										<img
											src="https://www.junohair.com/upload/youtube/202010/35907d8937384d58aef5ad627e271742.jpg"
											alt="">
									</div>
									<div class="tbox">
										<p>마음이 편안해지는 힐링 영상 / 헤드스파 / JUNOHAIR HEAD SPA</p>
									</div>
							</a></li>
							<li class="hidden"><a href="#none"
								onclick="openPopMovie('cvW1GoYKHIg');return false;">
									<div class="img">
										<img
											src="https://www.junohair.com/upload/youtube/202011/c905f84a776c4218bdccfda6f5920d47.jpg"
											alt="">
									</div>
									<div class="tbox">
										<p>헤어 디자이너가 알려주는 두피 모발 관리법 / 민감성 두피 / 건조한 모발 / 광고아님 /
											내돈내산후기</p>
									</div>
							</a></li>
							<li class="hidden"><a href="#none"
								onclick="openPopMovie('a4k-51JflMs');return false;">
									<div class="img">
										<img
											src="https://www.junohair.com/upload/youtube/202101/d86532d8db5d4f40888f68772f9c8480.jpg"
											alt="">
									</div>
									<div class="tbox">
										<p>준오가 여러분에게 작은 위로가 되어드릴게요 / 준오헤어 대국민 응원이벤트 / 감동영상 / 힘내라
											대한민국</p>
									</div>
							</a></li>
						</ul>
						<div class="btn_data_more" id="btn_data_more">
							<a href="#juno" onclick="moreView()">더보기</a>
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
								<li><a href=""><img
										src="https://www.junohair.com/static_resources/images/junohair/footer_social1.jpg"
										alt="facebook"></a></li>
								<li><a href=""><img
										src="https://www.junohair.com/static_resources/images/junohair/footer_social2.jpg"
										alt="instagram"></a></li>
								<li><a href="#"><img
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
	<!-- 인스타그램 popup  -->
	<div class="popupInstagram">
		<div class="instagram_post">
			<div class="media" id="instamedia">
				<img
					src="https://www.junohair.com/static_resources/images/junohair/main/@instagram_media.jpg"
					alt="" id="instapopimg">
			</div>
			<div class="cont">
				<div class="top">
					<span class="profileimg"><img
						src="https://www.junohair.com/static_resources/images/junohair/main/@instagram_profile.png"
						alt=""></span> <span class="ttl" id="instapopttl">junohair_officaial</span>
				</div>
				<div class="tbox" id="tbox">
					JUNO HAIR <br> Avenue JUNO <br> 건축.인테리어디자인 분야에서 권위있는 <br>
					네덜란드 잡지 FRAME에 애브뉴준오가 <br> 소개되었습니다. 준오는 고객분들과 <br> 디자이너에게
					영감을 줄 수 있는 공간을 <br> 만들기 위해 더욱 노력하겠습니다.<br> Avenue Juno
					was published in the <br> Dutch magazine FRAME, the world's <br>
					leading interior design publication. <br> Juno strives to
					create a space to <br> inspire customers and designers.<br>
					- 준오헤어 헤어리뷰 인스타그램 : <br> @junohair_collection<br> 준오헤어 공식
					유튜브 : junohair official<br> 준오아카데미 : @junoacademy<br> .
					#준오헤어 #junohair #juno #준오 <br> #junosalon #beautysalon
					#준오프로페셔널 <br> #salon #interiors #spatialdesign <br>
					#southkorea #kbeauty #kbeautysalon <br> #koreasalon #hairsalon
				</div>
			</div>
		</div>
		<a href="#none" class="btnClose"
			onclick="closePopInstagram();return false;"><span class="blind">닫기</span></a>
	</div>
	<!-- //인스타그램 popup  -->

	<!-- 유투브 popup  -->
	<div class="popupMovie">
		<div class="bgcover">
			<div class="movie"></div>
			<img
				src="https://www.junohair.com/static_resources/images/junohair/main/bg_moviesize.gif"
				alt="">
		</div>
		<a href="#none" class="btnClose"
			onclick="closePopMovie();return false;"><span class="blind">닫기</span></a>
	</div>
	<!-- //유투브 popup  -->

	<script>
		var officialJson = []

		var colletionJson = []

		function openPopInsta(index, target) {
			var idx = Number(index);
			var mediaType;
			var imghtml;
			var instaDataJson;
			if (target == "official") {
				instaDataJson = officialJson;
				$("#instapopttl").text("junohair_officaial");
				mediaType = instaDataJson[idx].mediaType;
			} else if (target == "collection") {
				instaDataJson = colletionJson;
				$("#instapopttl").text("junohair_collection");
				mediaType = instaDataJson[idx].mediaType;
			}

			mediaType = instaDataJson[idx].mediaType;
			if (mediaType == "VIDEO") {
				imghtml = '<img src="'+ instaDataJson[idx].thumbnailUrl +'" alt="" id="instapopimg" />';
				$("#instamedia").html(imghtml);
				$("#tbox").html(
						(instaDataJson[idx].caption).replaceAll("\n", "<br/>"));
				openPopInstagram();
			} else {
				imghtml = '<img src="'+ instaDataJson[idx].mediaUrl +'" alt="" id="instapopimg"/>';
				$("#instamedia").html(imghtml);
				$("#tbox").html(
						(instaDataJson[idx].caption).replaceAll("\n", "<br/>"));
				openPopInstagram();
			}

		}

		var youtubeoffset = 0
		var toutubecount = 3;

		function goSearchYoutube() {
			var params = {
				offset : youtubeoffset,
				count : toutubecount,
			}
			cf_call("/junohair/getYoutubeList", params, goSearchYoutubeCB);
		}

		function goSearchYoutubeCB(data) {
			if (data.errMsg != undefined) {
				alert(data.errMsg);
				return;
			}

			var dataList = data.list;

			var mainyoubube_html = "";
			for (var i = 0; i < dataList.length; i++) {

				mainyoubube_html += '<li>';
				mainyoubube_html += '	<a href="#none" onclick="openPopMovie(\''
						+ dataList[i].linkParam + '\');return false;">';
				mainyoubube_html += '		<div class="img"><img src="' + dataList[i].file1 + '" alt=""></div>';
				mainyoubube_html += '		<div class="tbox">';
				mainyoubube_html += '			<p>' + dataList[i].yDesc + '</p>';
				mainyoubube_html += '		</div>';
				mainyoubube_html += '	</a>';
				mainyoubube_html += '</li>';
			}

			$('.mainyoubube ul').append(mainyoubube_html).promise().done(
					function() {
						$('.mainyoubube li').addClass("hidden")
								.viewportChecker({
									classToAdd : 'zoomIn',
									offset : 80
								});
					});

			if (youtubeoffset + 3 >= data.totCount) {
				$("#btn_data_more").hide();
			}
		}

		function moreView() {
			youtubeoffset += toutubecount;
			goSearchYoutube();
		}

		function gotoReservation() {
			location.href = "/junohair/reservation/intro";
		}

		function gotoJMarket() {
			location.href = "/junohair/jmarket/prodlist";
		}

		function openPopInstaMovie(mediaUrl) {
			$('.popupMovie').show();
			var _mvaddress;
			var _mv = '<iframe src="'
					+ mediaUrl
					+ '" width="100%" height="100%" allow="autoplay; encrypted-media"></iframe>';

			$('.popupMovie .movie').append(_mv);
			$('body')
					.append(
							'<div id="bgDimm" class="bg_dimm" onclick="closePopMovie();return false;"></div>')
		}

		$(function() {
			goSearchYoutube();

			var hairPopTodayYn = Cookies.get('hairPopTodayYn');

			if (hairPopTodayYn !== "N" && 1 > 0) {
				$("#popupMainRolling").show();
				$("#bg_dimm_rolling").show();

				//메인 롤링 popup
				var rollingimg_len = $('#popupMainRolling .rolling_img a').length;
				$('#popupMainRolling .rolling_img').owlCarousel({
					dots : (rollingimg_len > 1) ? true : false,
					loop : (rollingimg_len > 1) ? true : false,
					nav : false,
					items : 1,
					touchDrag : true,
					autoplay : true,
					smartSpeed : 700
				})
			} else {
				$("#popupMainRolling").hide();
				$("#bg_dimm_rolling").hide();
			}
		});

		function todayCloseNewPop() {
			$('#popupMainRolling').hide();
			$('#bg_dimm_rolling').hide();
			Cookies.set('hairPopTodayYn', 'N', {
				expires : 1
			})
		}

		function closeNewPop() {
			$('#popupMainRolling').hide();
			$('#bg_dimm_rolling').hide();
		}
	</script>

</body>
</html>