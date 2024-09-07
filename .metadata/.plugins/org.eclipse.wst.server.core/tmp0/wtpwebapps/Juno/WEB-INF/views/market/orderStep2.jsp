<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class=" js no-touch csstransforms csstransforms3d csstransitions" style="">
<head>

<link rel="shortcut icon" href="https://www.junohair.com/static_resources/images/junohair.ico">
<link rel="apple-touch-icon" href="https://www.junohair.com/static_resources/images/apple-touch-icon.png">
<link rel="apple-touch-icon-precomposed" href="https://www.junohair.com/static_resources/images/apple-touch-icon.png">
<link rel="canonical" href="https://www.junohair.com/junohair">



<title>준오헤어</title>
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/reset.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/common.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/junohair/common.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/junohair/sub_common.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/jmarket.css?rscVer=0333">
<script src="https://www.junohair.com/static_resources/lib/jquery/1.12.4/jquery.min.js?rscVer=0333"></script>
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
<script src="https://www.junohair.com/static_resources/js/common.js?rscVer=0333"></script>
<script src="https://www.junohair.com/static_resources/js/common_vue.js?rscVer=0333"></script>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>

      <script>
   // 객체 초기화
        var IMP = window.IMP;
        IMP.init("imp26166210");

        function requestPay() {
          // 결제창 호출      
          IMP.request_pay(
            {
              // 파라미터 값 설정 
              pg: "kakaopay", //상점id
              pay_method: "kakaopay",
              merchant_uid: "57008833-33", // 상점 고유 주문번호
              name: "포트원 테스트",
              amount: 10,
              buyer_email: "good@portone.io",
              buyer_name: "포트원 기술지원팀",
              buyer_tel: "010-1234-5678",
              buyer_addr: "서울특별시 강남구 삼성동",
              buyer_postcode: "123-456",
            },
            function (rsp) {
              // callback
              //rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
            }
          );
      }
        
        
      </script>
</head>

<body>
	<div id="wrap" class="vue-contents-container" style="display: block;">
		
		<div id="header" class="">
			<div class="header_top">
				<span class="logo"><a href="#juno" onclick="location.href='/'"><img src="https://www.junohair.com/static_resources/images/home_icon.png" alt="JUNO"></a></span>
				<div class="inner">
					<div id="gnb">
						<ul>
							<li class="active"><a href="#juno" onclick="location.href='/junohair'">JUNO HAIR</a></li>
							<li><a href="#juno" onclick="location.href='/junoacademy'">JUNO ACADEMY</a></li>
							<li><a href="#juno" onclick="location.href='/avenuejuno'">AVENUE JUNO</a></li>
							<li><a href="#juno" onclick="location.href='/recruit'">RECRUIT</a></li>
							<li><a href="#juno" onclick="gotoMyjuno()">MY JUNO</a></li>
						</ul>
					</div>
				</div>
				
				<div class="util">
					<dl>
						<dt class="hide">유틸메뉴</dt>

						<dd class="login"><a href="#juno" onclick="cf_logout()"><span>로그아웃</span><img src="https://www.junohair.com/static_resources/images/logout_icon.png" alt="로그인"></a></dd>

					</dl>
				</div>
				<div class="lang">
					<a href="#juno" onclick="lang_toggle()" class="cur_lang"><img src="https://www.junohair.com/static_resources/images/kr_n.png" alt="국가 아이콘" class="national">한국어</a>
					<span class="lang_arr arr_down"><img src="https://www.junohair.com/static_resources/images/lang_arr_down.png" alt=""></span>
					<span class="lang_arr arr_up"><img src="https://www.junohair.com/static_resources/images/lang_arr_up.png" alt=""></span>
					<ul class="lang_list">
						<li><a href="#juno" onclick="location.href='/en/junohair'"><img src="https://www.junohair.com/static_resources/images/en_n.png" alt="국가 아이콘" class="national">ENG</a></li>
						<li><a href="#juno" onclick="location.href='/cn/junohair'"><img src="https://www.junohair.com/static_resources/images/cn_n.png" alt="국가 아이콘" class="national">中國語</a></li>
					</ul>
				</div>
			</div>
			<div class="header_btm">
				<div class="inner">
					<h1>
						<a href="/junohair">
							<img src="https://www.junohair.com/static_resources/images/junohair/junohair_logo_dark.png" alt="JUNO HAIR" class="dark">
							<img src="https://www.junohair.com/static_resources/images/junohair/junohair_logo_light.png" alt="JUNO HAIR" class="light">
						</a>
					</h1>
					<div class="lnb">
						<ul>
							<li><a href="#juno" onclick="location.href='/junohair/about/story'">ABOUT</a></li>
							<li><a href="#juno" onclick="location.href='/junohair/salon/shop_list'">SALON</a></li>
							<li><a href="#juno" onclick="location.href='/junohair/membership/policy'">MEMBERSHIP</a></li>
							<li><a href="#juno" onclick="location.href='/junohair/communication/news_list'">COMMUNICATION</a></li>
							<li><a href="#juno" onclick="location.href='/junohair/reservation/intro'">RESERVATION</a></li>
							<li><a href="#juno" onclick="location.href='/junohair/jmarket/prodlist'">J MARKET</a></li>
						</ul>
					</div>
					<div class="mobile_menu_btn">
						<a href="#juno" onclick="m_nav();">
							<span></span>
							<span></span>
							<span></span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="mobile_nav" style="display: none;">
			<div class="mobile_nav_inner">
				<div class="m_util">
					<ul>

						<li><a href="#juno" onclick="cf_logout()">로그아웃</a></li>
	
					</ul>
				</div>
				<div class="mn_wrap">
					<div class="lnb">
						<ul>
							<li>
								<strong class="depth1">ABOUT<div><span class="horizon"></span><span class="vertical"></span></div></strong>
								<dl>
									<dt class="hide">ABOUT</dt>
									<dd><a href="#juno" onclick="location.href='/junohair/about/story'">스토리</a></dd>
									<dd><a href="#juno" onclick="location.href='/junohair/about/ceo'">CEO 인사말</a></dd>
									<dd><a href="#juno" onclick="location.href='/junohair/about/brand'">브랜드</a></dd>
									<dd><a href="#juno" onclick="location.href='/junohair/about/location'">오시는길</a></dd>
								</dl>
							</li>
							<li>
								<strong class="depth1">SALON<div><span class="horizon"></span><span class="vertical"></span></div></strong>
								<dl>
									<dt class="hide">SALON</dt>
									<dd><a href="#juno" onclick="location.href='/junohair/salon/shop_list'">살롱 소개</a></dd>

								</dl>
							</li>
							<li>
								<strong class="depth1">MEMBERSHIP<div><span class="horizon"></span><span class="vertical"></span></div></strong>
								<dl>
									<dt class="hide">MEMBERSHIP</dt>
									<dd><a href="#juno" onclick="location.href='/junohair/membership/policy'">멤버십 제도</a></dd>
									<dd><a href="#juno" onclick="location.href='/junohair/membership/partnercard'">제휴 할인 카드</a></dd>
									<dd><a href="#juno" onclick="location.href='/junohair/membership/mobilecoupon'">모바일 쿠폰</a></dd>
								</dl>
							</li>
							<li>
								<strong class="depth1">COMMUNICATION<div><span class="horizon"></span><span class="vertical"></span></div></strong>
								<dl>
									<dt class="hide">COMMUNICATION</dt>
									<dd><a href="#juno" onclick="location.href='/junohair/communication/news_list'">NEWS</a></dd>
									<dd><a href="#juno" onclick="location.href='/junohair/communication/qna'">Q&amp;A</a></dd>
									<dd><a href="#juno" onclick="location.href='/junohair/communication/partnership'">제휴문의</a></dd>
								</dl>
							</li>
							<li>
								<strong class="depth1"><a href="#juno" onclick="location.href='/junohair/reservation/intro'">RESERVATION</a></strong>
							</li>
							<li>
								<strong class="depth1"><a href="#juno" onclick="location.href='/junohair/jmarket/prodlist'">J MARKET</a></strong>
							</li>
							<li>
							</li><li>
								<strong class="depth1">MY JUNO<div><span class="horizon"></span><span class="vertical"></span></div></strong>
								<dl>
									<dt class="hide">MY JUNO</dt>
									<dd><a href="#juno" onclick="gotoMyjunoMbr()">회원정보</a></dd>
									<dd><a href="#juno" onclick="gotoMyjunoUL()">이용내역</a></dd>
									<dd><a href="#juno" onclick="gotoMyjunoOL()">구매내역</a></dd>
									<dd><a href="#juno" onclick="gotoMyjunoSS()">정기배송 설정</a></dd>
									<dd><a href="#juno" onclick="gotoMyjunoWD()">회원 탈퇴</a></dd>
								</dl>
							</li>
						</ul>
					</div>
					<div class="gnb">
						<ul>
							<li><a href="#juno" onclick="location.href='/junohair'"><img class="hair" src="https://www.junohair.com/static_resources/images/m_gnb_hair.png" alt="JUNO HAIR"></a></li>
							<li><a href="#juno" onclick="location.href='/junoacademy'"><img class="academy" src="https://www.junohair.com/static_resources/images/m_gnb_academy.png" alt="JUNO ACADEMY"></a></li>
							<li><a href="#juno" onclick="location.href='/avenuejuno'"><img class="avenue" src="https://www.junohair.com/static_resources/images/m_gnb_avenue.png" alt="AVENUE JUNO"></a></li>
							<li><a href="#juno" onclick="location.href='https://www.triamilia.com/'"><img class="tria" src="https://www.junohair.com/static_resources/images/m_gnb_tria.png" alt="TRIA MILIA"></a></li>
							<li><a href="#juno" onclick="location.href='/recruit'">RECRUIT</a></li>
							<li><a href="#juno" onclick="location.href='/en/junohair/'">ENGLISH</a></li>
							<li><a href="#juno" onclick="location.href='/cn/junohair/'">中国</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="container">
			<!-- 2020-03-13 상품주문 -->
			<div class="sub_visual">
				<div class="sub_visual_bg" style="background-image:url('https://www.junohair.com/static_resources/images/junohair/sub/jmarket/intro_visual.jpg')"></div>
				<div class="sub_visual_text">
					<strong>J MARKET</strong>
					<p class="sub_visual_sub_text">
						<span>고객의 아름다움을 지원하기 위한</span><br>
						<span>뷰티 제품 전문 온라인 몰입니다</span><br>
					</p>
				</div>
			</div>
			
			<div class="clear"></div>
			<div id="contents" class="orderwrap">
				<div class="inner">
					<h1>카카오페이 진행 페이지</h1>
					<button onclick="requestPay()">결제하기</button>
				</div>
			</div>
		</div>
		
</body>
</html>
