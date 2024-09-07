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
	href="https://www.junohair.com/static_resources/css/myjuno/join.css?rscVer=0333">
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

<script
	src="https://www.junohair.com/static_resources/js/myjuno/juno_sub_ui.js?rscVer=0333"></script>

<link rel="stylesheet" type="text/css" href="./resources/join_css.css">
<script type="text/javascript" src="./resources/verify.js"
	charset="utf-8"></script>


</head>


<jsp:include page="/WEB-INF/views/common/header2.jsp">
	<jsp:param name="id" value="${sessionScope.id}" />
	<jsp:param name="admin" value="${sessionScope.admin}" />
</jsp:include>

<body class="join">
	<div id="wrap">

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
					style="background-image: url('https://www.junohair.com/static_resources/images/myjuno/intro_visual.jpg')"></div>
				<div class="sub_visual_text">디자이너 정보 조회·수정</div>
			</div>
			<div class="sub_menu"></div>

			<!-- 	<div id="contents">
				
					<div class="inner"> -->
			<div class="section1">
				<div class="section_tit">
					<span class="bar"></span> <strong class="tit">정보 조회·수정</strong>
				</div>
			</div>

			<!-- 		<div class="section_content">
							<div class="sec1_top">
								<div class="join_form_wrap"> -->

			<form id="join" action="admin_designer_modifyAction"
				method=post>

				<table>

					<tr>
						<!-- 기본정보-->
						<td colspan="2" class="subtitle td">기본 정보</td>
					</tr>
					<tr>
						<!-- 아이디 -->
						<td class="division">아이디:</td>
						<td class="valuefield" id = "id" name ="id">${member.id }</td>
					</tr>

					<tr>
						<!-- 비밀번호 -->
						<td class="division">비밀번호:</td>
						<td class="valuefield">
						<input type="password" id="pw"
							name="pw" size="12" maxlength="12" value="${member.pw}">
							&nbsp; 4~12자의 영문 대소문자와 숫자로만 입력</td>
					</tr>

					<tr>
						<!-- 비밀번호 확인 -->
						<td class="division">비밀번호 확인:</td>
						<td class="valuefield"><input type="password" id="PWconfirm"
							name="pwconfirm" size="12" maxlength="12" value="${member.pw}"></td>
					</tr>

					<tr>
						<!-- 메일주소 -->
						<td class="division">메일주소:</td>
						<td class="valuefield"><input type="text" id="email"
							name="email" size="30" value="${member.email }"></input> &nbsp;
							예) id@domain.com</td>
					</tr>

					<tr>
						<!-- 이름 -->
						<td class="division">이름:</td>
						<td class="valuefield">${member.name }</td>
					</tr>

					<tr>
						<!-- 기본정보-->
						<td colspan="7" class="subtitle">업무 관련 정보</td>
					</tr>
					<tr>
						<td class="division">지점명:</td>
						<td class="valuefield">${branch}</td>
					</tr>

					<tr>
		            <td class="division">근무시간:</td>
		            <td class="valuefield" id = "workdays" name ="workdays">
		                <label><input type="checkbox" name="workdays" value="월" ${workday.contains('월') ? 'checked' : ''}> 월</label>
		                <label><input type="checkbox" name="workdays" value="화" ${workday.contains('화') ? 'checked' : ''}> 화</label>
		                <label><input type="checkbox" name="workdays" value="수" ${workday.contains('수') ? 'checked' : ''}> 수</label>
		                <label><input type="checkbox" name="workdays" value="목" ${workday.contains('목') ? 'checked' : ''}> 목</label>
		                <label><input type="checkbox" name="workdays" value="금" ${workday.contains('금') ? 'checked' : ''}> 금</label>
		            </td>
		       		</tr>

					<tr>
						<!-- 자기소개  -->
						<td class="division">자기소개:</td>
						<td class="valuefield"><textarea id="intro" name="intro"
								cols="72" rows="10">${designer.introduce}</textarea></td>
					</tr>

				</table>



				<div class="form_right">
					<input type="submit" class="button" value="정보 변경" />
				</div>
			</form>

			<style>
body {
	font-family: Arial, sans-serif !important;
	margin: 20px !important;
	background-color: #f0f2f5 !important;
}

#join {
	width: 80% !important;
	max-width: 800px !important;
	margin: 20px auto !important;
	background-color: #fff !important;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1) !important;
	border-radius: 8px !important;
	padding: 20px !important;
}

table {
	width: 100% !important;
	border-collapse: collapse !important;
	margin: 20px 0 !important;
}

.subtitle {
	background-color: #343a40 !important;
	color: white !important;
	text-align: left !important;
	font-weight: bold !important;
	padding: 10px !important;
}

.division {
	background-color: #f8f8f8 !important;
	width: 30% !important;
	font-weight: bold !important;
	padding: 12px 15px !important;
}

.valuefield {
	background-color: #fff !important;
	padding: 12px 15px !important;
}

input[type="text"], input[type="password"], input[type="file"], select,
	textarea {
	width: calc(100% - 20px) !important;
	padding: 8px 10px !important;
	border: 1px solid #ccc !important;
	border-radius: 4px !important;
}

input[type="text"]:focus, input[type="password"]:focus, select:focus,
	textarea:focus {
	border-color: #343a40 !important;
	outline: none !important;
	box-shadow: 0 0 5px rgba(52, 58, 64, 0.5) !important;
}

textarea {
	resize: vertical !important;
}

.valuefield.datefield {
	display: flex !important;
	align-items: center !important;
}

.valuefield.datefield input[type="text"], .valuefield.datefield select {
	width: auto !important;
	margin-right: 10px !important;
}

.valuefield.datefield select:last-child {
	margin-right: 0 !important;
}

.form_right {
	text-align: center !important;
	padding: 20px !important;
}

.button {
	background-color: #343a40 !important;
	color: #fff !important;
	padding: 10px 20px !important;
	border: none !important;
	border-radius: 4px !important;
	font-size: 16px !important;
	cursor: pointer !important;
	transition: background-color 0.3s !important;
}

.button:hover {
	background-color: #23272b !important;
}
</style>


			</br> </br> </br>
		</div>
	</div>
	<!-- 						</div>
					</div>
				</div>
			</div>
		</div> -->

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
	<div class="idCheckLayer">
		<p class="ttl">아이디 중복 체크</p>
		<div class="layer_content">
			<div class="search_wrap">
				<input type="text" name="id_val" maxlength="14"> <a
					href="#juno" onclick="idDplChkLayerPop.goCheck()">중복확인</a>
			</div>
			<div class="search_error">
				<span></span>은(는) 사용이 불가한 아이디 입니다.
			</div>
			<div class="search_success">
				<p>
					입력하신 아이디 <span></span>은(는)<br> 사용하실 수 있습니다.
				</p>
				<a href="#juno" onclick="idDplChkLayerPop.use()">사용하기</a>
			</div>
		</div>
		<a href="#juno" class="btn_close" onclick="idDplChkLayerPop.close()"><span
			class="blind">팝업닫기</span></a>
	</div>
	<div class="overlay1" onclick="idDplChkLayerPop.close()"></div>
	<div class="overlaycomm"></div>
	</div>

</body>
</html>