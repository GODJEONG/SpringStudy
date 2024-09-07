<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html xmlns="http://www.w3.org/1999/xhtml"
	class=" js no-touch csstransforms csstransforms3d csstransitions"
	style="">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

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
	href="https://www.junohair.com/static_resources/css/myjuno/join.css?rscVer=0333">
<script
	src="https://www.junohair.com/static_resources/lib/jquery/1.12.4/jquery.min.js?rscVer=0333"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
	src="https://www.junohair.com/static_resources/js/common.js?rscVer=0333"></script>
<script
	src="https://www.junohair.com/static_resources/js/common_vue.js?rscVer=0333"></script>
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

			function gotoMyjunoMbr() {
				if ("" != "CUST") {
					alert("로그인후 이용이 가능합니다.");
				}
				location.href = "/myjuno/member_info";
			}

			function gotoMyjunoUL() {
				if ("" != "CUST") {
					alert("로그인후 이용이 가능합니다.");
				}
				location.href = "/myjuno/use_list";
			}

			function gotoMyjunoOL() {
				if ("" != "CUST") {
					alert("로그인후 이용이 가능합니다.");
				}
				location.href = "/myjuno/order_list";
			}

			function gotoMyjunoSS() {
				if ("" != "CUST") {
					alert("로그인후 이용이 가능합니다.");
				}
				location.href = "/myjuno/sdelivery_set";
			}

			function gotoMyjunoWD() {
				if ("" != "CUST") {
					alert("로그인후 이용이 가능합니다.");
				}
				location.href = "/myjuno/withdraw";
			}
		</script>
		<div id="container">
			<div class="sub_visual">
				<div class="sub_visual_bg"
					style="background-image: url(https://www.junohair.com/static_resources/images/myjuno/intro_visual.jpg)"></div>
				<div class="sub_visual_text">회원가입</div>
			</div>
			<div class="sub_menu"></div>
			<div id="contents">
				<div class="section1">
					<div class="inner">
						<div class="section_tit">
							<span class="bar"></span> <strong class="tit">약관동의</strong>
						</div>
						<div class="section_content">
							<form method="post" name="Form1" id="Form1">

								<div class="sec1_top" id="terms1">
									<div>
										<h3>
											<b style="font-size: 24px">[필수] 이용약관 동의</b>
										</h3>
									</div>
									<div class="terms" style="margin-top: 10px;">
										<h3>이용 약관</h3>
										<br>
										<div class="terms_content">
											<strong id="sec1_1">&lt; 제 1 장 : 총칙 &gt;</strong> <span>제
												1 조 (목적)</span> 본 약관은 준오헤어, 준오아카데미, 애브뉴준오 (이하 '회사'라 한다.)가 제공하는 인터넷
											서비스(영문명 www.junohair.com 이하 '서비스'라 한다.)를 이용함에 있어 이용조건 및 절차에
											관한 기본적인 사항과 기타 필요한 사항에 관한 통합 약관의 정의를 목적으로 합니다. <span>제
												2 조 (용어의 정의)</span> 이 약관에서 사용하는 용어의 정의는 다음과 같습니다. <br> 1. 이용자
											: 회사가 운영하는 서비스를 이 약관에 따라 제공받는 회원 및 비회원을 말합니다. <br> 2. 회
											원 : 회사가 운영하는 서비스에 개인정보를 제공하여 회원등록을 한 자로서, 회사가 제공하는 서비스를 계속적으로
											이용할 수 있는 자를 말합니다. <br> 3. 비회원 : 회원에 가입하지 않고 회사가 제공하는
											서비스를 이용하는자를 말합니다. <br> 4. ID : 회원식별과 회원의 서비스 이용을 위하여 회원이
											선정하고 회사가 승인하는 문자와 숫자의 조합을 말합니다. <br> 5. e-mail : 회원 식별과
											회원의 서비스 이용을 위한 회원의 e-mail 주소를 말합니다. <br> 6. 비밀번호 : 회원이
											부여받은 아이디(ID)와 일치된 회원임을 확인하고 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와
											숫자의 조합을 말합니다.<br> 7. 해지 : 회사 또는 회원이 서비스를 개통 후 이용계약을 해약
											하는 것을 말합니다.<br> <span>제 3 조 (약관의 공지 및 변경) </span> 1. 이
											약관의 내용은 서비스 화면에 게시하거나 기타의 방법으로 회원에게 공지함으로써 효력을 발생합니다. <br>
											2. 회사는 이 약관을 변경할 수 있으며, 변경된 약관은 제7조와 같은 방법으로 공지함으로써 효력을
											발생합니다.<br> <span>제 4 조 (약관외 준칙)</span> 본 약관에 명시 되지 않은
											사항은 관련 법령 또는 일반 상관례 원칙에 따릅니다. <strong id="sec1_2">&lt;
												제 2 장 : 회원 가입 및 탈퇴 &gt;</strong> <span>제 5 조 (회원 가입 및 이용 계약의
												성립)</span> 1. 이용자의 본 약관에 대한 동의와 이용자의 이용 신청에 대한 회사의 동의로 회원가입 및 이용
											계약이 성립됩니다. <br> 2. 회원 가입 신청시 이용자는 회사에서 요청하는 개인 신상 정보를 거짓
											없이 정확히 기입 하여야 합니다. <br> 3. 회사는 제2항과 같이 회원가입을 신청한 이용자 중
											다음 각호에 해당하지 않는 한 회원으로 등록합니다. <br> ① 회원가입시 등록 내용이 허위,
											기재누락, 오기가 있는 경우 <br> ② 회원으로 등록하는 것이 회사의 기술상 현저히 지장이 있다고
											판단되는 경우 <br> ③ 기타 회사가 필요하다고 인정되는 경우<br> 4. 회원가입 계약의
											성립 시기는 회사가 승낙함으로써 성립합니다. <br> 5. 회원은 이용신청시 기재한 이용자정보가
											변경되었을 경우에는, 온라인으로 수정을 하여야 하며 미변경으로 인하여 발생되는 문제의 책임은 이용자에게
											있습니다.<br> <span>제 6 조 (회원 탈퇴 및 자격 상실 등)</span> 1. 회원은
											회사의 정책에 위반될 시 언제든지 탈퇴를 요청할 수 있으며 회사는 회원자격을 제한 및 정지시킬 수 있습니다.<br>
											2. 회원이 다음 각호의 사유에 해당하는 경우, 회사는 회원자격을 제한 및 정지시킬 수 있습니다. <br>
											① 가입신청시에 허위 내용을 등록한 경우 <br> ② 타인의 아이디나 비밀번호를 부정하게 사용할 경우
											<br> ③ 다른 이용자의 서비스 이용을 방해하거나 그 정보를 도용하거나 위협하는 경우 <br>
											④ 기타 관계법령에 위배될 경우 <br> 3. 회사가 회원 자격을 제한 또는 정지 시킨 후, 동일한
											행위가 2회이상 반복되거나 30일이내에 그 사유가 시정되지 아니하는 경우 회사는 회원자격을 상실시킬 수
											있습니다. <br> 4. 회사가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우
											회원에게 이를 통지하고, 회원등록 말소전에 소명할 기회를 부여합니다. <br> <span>제
												7 조 (회원에 대한 통지)</span> 1. 회사가 회원에게 통지가 필요한 경우, 회원이 회사에 제출한 전자우편, 전화
											등으로 연락을 취할 수 있습니다.<br> 2. 회사는 불특정 다수 회원에 대한 통지의 경우 1주일이상
											서비스내에 별도로 게시함으로서 개별 통지에 대신할 수 있습니다. <br> <strong
												id="sec1_3">&lt; 제 3 장 : 서비스 제공, 이용, 변경 및 중단 &gt;</strong> <span>제
												8 조 (서비스 제공)</span> 회사에서 제공하는 모든 서비스는 무료이며, 회원의 동의하에 회사는 회원이 서비스 이용
											중 필요하다고 인정되는 다양한 정보에 대해서 e-mail,<br> 서신 우편 등 기타의 방법으로
											회원에게 제공할 수 있습니다. <br> <span>제 9 조 (서비스 이용시간 및
												내용변경)</span> 1. 서비스 이용시간은 연중무휴 1일 24시간을 원칙으로 합니다. <br> 2. 회사가
											불가피한 여건으로 인하여 회원에게 사전 공지 없이 회사에서 제공하는 서비스의 내용을 변경 할 수 있습니다. <br>
											<span>제 10 조 (서비스 중단)</span> 1. 회사는 서비스의 갱신, 시스템의 보수점검 및 교체,
											통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다. <br>
											2. 제1항에 의한 서비스 중단의 경우에는 회사는 제7조에 정한 방법으로 이용자에게 통지합니다. <br>
											3. 회사는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인한 이용자 또는 제3자가 입은 손해에
											대하여 배상하지 않습니다.<br> <span>제 11 조 (광고주와의 거래)</span> 회사는 본
											서비스상에 게재되어 있거나 본 서비스를 통한 광고주의 판촉활동에 회원이 참여하거나 교신 또는 거래의 결과로서
											발생하는 모든 손실 또는 손해에 대해 책임을 지지 않습니다. <span>제 12 조 (온라인 강좌
												이용 및 환불 규정)</span> 1. 강좌 이용 시 유의사항 <br> ① 당사 상황에 따라 할인이 조기
											마감되거나 연장될 수 있습니다. <br> ② 수강 및 동영상 오류 관련 문의는 [커뮤니티] &gt;
											[FAQ]를 참고하신 후, 해결이 되지 않을 경우 고객센터로 문의하시면 빠르게 답변드리도록 하겠습니다. <br>
											③ 한 계정당 재생가능한 기기는 총 3대로 제한됩니다. 등록된 기기를 변경하고 싶은 경우 고객센터에 요청하시면
											1회에 한하여 변경이 가능합니다. <br> 2. 총 학습기간 <br> ① 정상 수강기간(유료
											수강기간)은 최초 2주(14일)이며, 무료 수강기간은 15일차 이후로 제공됩니다. 유료 수강기간과 무료
											수강기간 모두 동일하게 시청 가능합니다. <br> ② 수강기간은 결제일부터 시작됩니다. 시스템 오류,
											천재지변 등 서비스 중단이 불가피한 상황에는 서비스가 제한될 수 있습니다. <br> 3. 환불 규정
											<br> ① 온라인 준오의 환불 규정은 평생교육법 시행령 제23조 학습비 반환 기준을 준수합니다. <br>
											② 학습비 반환은 이미 낸 학습비에서 실제 학습한 부분을 제외한 나머지 금액에 대한 환불이 이루어집니다. <br>
											※ 실제 학습한 부분은 회차를 클릭하여 열거나 학습 기기에 저장하는 경우에 해당합니다. <br> ※
											환불 금액은 정가가 아닌 실제 결제금액을 기준으로 계산됩니다. <br> 4. 환불 방법 <br>
											① 수강 취소 및 환불 신청은 고객센터 메일 혹은 카카오채널로 신청 가능합니다. <br> ② 수강
											취소 및 환불을 원하실 경우 [커뮤니티] &gt; [FAQ] &gt; [결제 및 환불]에서 [환불요청서]를
											작성하여 고객센터로 전달해주시면, 검토 후 환불 금액 안내 및 환불 처리를 진행해드리겠습니다. <br>

											<strong id="sec1_4">&lt; 제 4 장 : 의무 &gt;</strong> <span>제
												13 조 (회사의 의무)</span> 1. 회사는 이 약관에서 정한바에 따라 계속적, 안정적으로 서비스를 제공할 의무가
											있습니다.<br> 2. 회사는 이용자의 개인 신상 정보를 본인의 승낙없이 타인에게 누설, 배포하여서는
											아니됩니다. <br>다만, 전기통신관련법령 등 관계법령에 의하여 관계 국가기관등의 요구가 있는 경우는
											제외합니다.<br> <span>제 14 조 (이용자 및 회원의 의무)</span> 1. 이용자 및
											회원은 본 약관에서 규정하는 사항을 준수 하여야 합니다. <br> 2. 이용자 및 회원은 아래 각
											호의 행위를 하지 않아야 합니다. <br> ① 회원 가입 및 개인 신상 정보의 변경 시 허위 내용의
											등록 <br> ② 서비스에 게시된 정보의 변경 <br> ③ 서비스가 정한 정보 이외의
											정보(컴퓨터 프로그램 등)의 송신 또는 게시 <br> ④ 회사 혹은 제3자의 저작권 등 기타
											지적재산권에 대한 침해 <br> ⑤ 회사 또는 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
											<br> ⑥ 공공질서 및 미풍양속에 위반되는 정보, 문장, 도형등을 타인에게 유포하는 행위 <br>
											⑦ 관계 법령에 위배되는 행위 <br> ⑧ 기타 회사가 판단 하기에 부적절하다고 판단 되는 행위 <br>
											⑨ 서비스에서 얻은 정보를 회사의 사전 승낙 없이 회원 사용 이외의 목적으로 복제하거나 이를 출판 및 방송에
											사용하거나 제 3자에게 제공하는 행위 <br> <span>제 15 조 (회원의 이름,
												아이디, 비밀번호, e-mail 관리에 대한 의무)</span> 1. 제11조의 경우를 제외하고 회원이름, 아이디,
											비밀번호, e-mail 주소 관리에 대한 책임은 회원에게 있습니다. <br> 2. 회원은 이름,
											아이디, 비밀번호, e-mail주소를 제3자에게 이용하게 해서는 안됩니다. <br> 3. 이름,
											아이디, 비밀번호, e-mail 주소의 관리소홀, 부정 사용 및 사용상의 과실 등에 의하여 발생하는 모든
											결과에 대한 책임은 회원에게 있습니다. <br> 4. 회원은 자신의 이름, 아이디, 비밀번호,
											e-mail주소 및 비밀번호가 부정하게 사용되고 있음을 인지한 경우, 바로 회사에 그 사실을 통보하고 회사의
											지시에 따릅니다. <br> 5. 회원은 회사가 제공하는 서비스를 통하여 음란물이나, 불온한 내용,
											junk mail, spam mail 및 타인에게 피해를 주거나 미풍양속을 해치는 e-mail을 보내서는
											안됩니다. <br> <strong id="sec1_5">&lt; 제 5 장 :
												손해배상 / 면책조항 &gt;</strong> <span>제 16 조 (손해 배상)</span> 사 또는 회원이 약관을
											위반함으로써 발행하는 모든 책임은 위반한 자가 부담하여, 이로 인하여 상대방에게 손해를 입힌 경우 배상하여야
											합니다. <span>제 17 조 (면책 조항)</span> 1. 회사는 천재지변, 국가 비상사태 또는 이에
											준하는 불가항력으로 서비스를 제공할 수 없는 경우 이에 대한 책임을 지지 않습니다. <br> 2.
											회사는 회원이 서비스를 이용하여 기대하는 손익이나, 서비스를 통하여 얻은 자료로 인한 손해에 관해서 책임을
											지지 않습니다. <br> 3. 회사는 회원이 서비스에 게재한 정보 자료 사실의 신뢰도, 정확성 등
											내용에 관하여 책임지지 않습니다. <br> <strong id="sec1_6">&lt;
												제 6 장 : 기타 &gt;</strong> <span>제 18 조 (저작권의 귀속 및 이용제한)</span> 1. 회사가
											작성한 저작물에 대한 저작권 기타 지적재산권은 회사에 귀속합니다. <br> 2. 이용자는 회사의
											서비스를 이용함으로써 얻은 정보를 회사의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여
											영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다. 이에 발생한 결과에 대하여 회사는 책임을 지지
											않습니다. <br> <span>제 19 조 (분쟁해결)</span> 서비스 이용으로 인하여 발생한
											분쟁에 대해 소송이 제기될 경우, 회사 소재지 관할 법원을 관할 법원으로 정합니다. <span>[부
												칙]</span> (시행일) 이 약관은 2022년 03월 01일부터 시행하며, 종전의 약관을 대체합니다.
										</div>
									</div>
									<div class="terms_chk">
										<div style="text-align: right">
											<input type="checkbox" name="termsAgree" id="termsAgree1">
											<label for="termsAgree1"></label> <span>동의함</span>
										</div>
									</div>
								</div>
								<div class="sec1_top" id="terms2">
									<div>
										<h3>
											<b style="font-size: 24px">[필수] 개인정보 처리방침 동의</b>
										</h3>
									</div>
									<div class="terms" style="margin-top: 10px;">
										<h3>개인정보처리 방침</h3>
										<br>
										<div class="terms_content">
											<span>개인정보보호정책 안내</span> 본 정책은 준오헤어, 준오아카데미, 애브뉴준오 (이하 '회사'라
											한다.)가 제공하는 인터넷 서비스(영문명 www.junohair.com 이하 '서비스'라 한다.)를 이용함에
											있어 개인정보보호 정책 정의를 목적으로 합니다. <span>수집하는 개인정보 항목</span> o 회사는
											회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br> o
											수집항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 전화번호 , 휴대전화번호 , 이메일 등
											<br> o 개인정보 수집방법 : 홈페이지(회원가입) <br> <span>개인정보의
												수집 및 이용목적</span> o 회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br> o 회사에서
											제공하는 모든 서비스는 무료이며 회원의 동의하에 회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한
											정보에 대하여 e-mail 우편등 기타의 방법으로 회원에게 제공 할 수 있습니다.<br> o 회원
											관리 - 회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지
											, 가입 의사 확인 , 연령확인 , 불만처리 등 민원처리 , 고지사항 전달 <br> o 마케팅 및
											광고에 활용<br> 이벤트 등 광고성 정보 전달 , 접속 빈도 파악 또는 회원의 서비스 이용에 대한
											통계 <br> <span>개인정보의 보유 및 이용기간</span> 원칙적으로, 개인정보 수집 및
											이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는
											경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.<br> o 보존
											항목 : 결제기록 <br> o 보존 근거 : 계약 또는 청약철회 등에 관한 기록 <br> o
											보존 기간 : 3년 <br> o 계약 또는 청약철회 등에 관한 기록 : 5년 (전자상거래등에서의
											소비자보호에 관한 법률) <br> o 대금결제 및 재화 등의 공급에 관한 기록 : 5년
											(전자상거래등에서의 소비자보호에 관한 법률) <br> o 소비자의 불만 또는 분쟁처리에 관한 기록 :
											3년 (전자상거래등에서의 소비자보호에 관한 법률) <br>o 「정보통신망 이용촉진 및 정보보호 등에
											관한 법률」 제29조 및 시행령 제16조에 따라 휴면회원의 경우 다음과 같이 처리합니다.<br> -
											미이용 기준 : 홈페이지 이용 1년 초과<br> - 휴면회원 처리에 대한 안내 : 30일 이전 메일을
											통한 안내<br> - 휴면회원에 대한 개인정보 처리 : 분리 보관조치<br> - 분리 보관
											정보 : 회원정보, 주문/결제 정보 등<br> - 분리 보관 정보에 대한 보존 기간 : 관련 법령에
											의거 보존<br> - 계정 활성화 : 고객의 요청에 의거 계정활성화 조치 실시<br> <span>개인정보위탁</span>
											회사는 서비스 이행을 위해 아래와 같이 준오그룹 계열사 전문업체에 위탁하여 운영하고 있습니다<br>
											위탁 대상자 : 부드러운 돌멩이<br> 위탁업무 내용 : 웹사이트 및 시스템 관리<br> <span>개인정보보호
												책임자</span> 회사는 이용자의 개인정보 관련 문의사항 및 불만 처리 등을 위하여 개인정보 보호책임자 및 담당자를
											지정하고 있으며 관련 문의사항은 고객센터를 이용하여 주시기 바랍니다. <br> <br>
											개인정보보호책임자 <br> 소속 : 준오헤어<br>이름 : 김영대<br> 직위 :
											전무<br> <br> 개인정보보호담당자 <br> 소속 : 준오헤어<br>이름
											: 김기정<br> 직위 : 상무
										</div>
									</div>
									<div class="terms_chk">
										<div style="text-align: right">
											<input type="checkbox" name="termsAgree2" id="termsAgree2">
											<label for="termsAgree2"></label> <span>동의함</span>
										</div>
									</div>
								</div>
								<div class="sec1_top">
									<div>
										<h3>
											<b style="font-size: 24px">[선택] 마케팅 활용 동의</b>
										</h3>
									</div>
									<div class="terms" style="margin-top: 10px; height: 152px">
										<h3>마케팅 활용 항목</h3>
										<br>
										<div class="terms_content">
											<span>1. SMS알림 문자<br> 2. 뉴스레터 및 안내 메일 수신
											</span>
										</div>
									</div>
									<div class="terms_chk">
										<div style="display: inline-block">* 선택항목에 동의하지 않으셔도
											회원가입은 가능합니다.</div>

										<div style="display: inline-block; float: right">
											<input type="checkbox" name="termsAgree3" id="termsAgree3">
											<label for="termsAgree3"></label> <span>동의함</span>
										</div>
									</div>
								</div>
								<div class="sec1_btm">
									<div class="join_form_wrap">

										<div class="btn_group">
											<ul>
												<li class="member_submit"><a href="javascript:void(0);"
													onclick="goNext();">다음단계</a></li>
												<li class="cancel"><a href="Login">취소</a></li>
											</ul>
										</div>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- footer.jsp 내용 -->
		<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	</div>
	<script>
		function goNext() {
			var termsAgree1 = $("#termsAgree1").is(":checked");
			var termsAgree2 = $("#termsAgree2").is(":checked");
			var termsAgree3 = $("#termsAgree3").is(":checked");

			if (!termsAgree1) {
				alert("이용약관 동의는 필수입니다");
				document.getElementById("termsAgree1").scrollIntoView();
				return;
			}

			if (!termsAgree2) {
				alert("개인정보 처리방침 동의는 필수입니다");
				document.getElementById("termsAgree2").scrollIntoView();
				return;
			}

			var agreeMarketing = termsAgree3 ? "Y" : "N";
			alert("동의가 완료되었습니다. 다음 단계로 이동합니다.");
			location.href = "/juno/Join2?p=" + agreeMarketing;
		}
	</script>

</body>
</html>