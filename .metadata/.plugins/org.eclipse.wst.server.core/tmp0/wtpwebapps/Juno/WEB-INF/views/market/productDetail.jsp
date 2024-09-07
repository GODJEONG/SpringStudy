<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml" class=" js no-touch csstransforms csstransforms3d csstransitions" style=""><head>

<link rel="shortcut icon" href="https://www.junohair.com/static_resources/images/junohair.ico">
<link rel="apple-touch-icon" href="https://www.junohair.com/static_resources/images/apple-touch-icon.png">
<link rel="apple-touch-icon-precomposed" href="https://www.junohair.com/static_resources/images/apple-touch-icon.png">
<link rel="canonical" href="https://www.junohair.com/junohair">


	<!-- Global site tag (gtag.js) - Google Analytics -->
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-DBGPMGH101&amp;l=dataLayer&amp;cx=c"></script>
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-150219424-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-150219424-1');
</script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "fce44f52888e1";
if(window.wcs) {
wcs_do();
}
</script>
<title>준오헤어</title>
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/reset.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/common.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/owl.carousel.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/junohair/common.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/junohair/sub_common.css?rscVer=0333">
<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/jmarket.css?rscVer=0333">
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
<script src="https://www.junohair.com/static_resources/js/common.js?rscVer=0333"></script>
<script src="https://www.junohair.com/static_resources/js/common_vue.js?rscVer=0333"></script>
<style>
	.txtbox * {line-height: 2;}
</style>
</head>
<body>
	<div id="wrap">
		
		<jsp:include page="/WEB-INF/views/common/header3.jsp">
			<jsp:param name="id" value="${sessionScope.id}" />
			<jsp:param name="admin" value="${sessionScope.admin}" />
		</jsp:include>
		<div id="container">
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
			<div id="contents" class="prodviewwrap">
				<div class="inner">
					<div class="prodviewInfo">
						<div class="detail">
							<a href="#juno" class="btnback" onclick="gotoShop()"><span>BACK TO SHOP</span></a>
							<h1 class="title">${productDetail.name}</h1>
							<p class="price">${productDetail.price}</p>
							<div class="txtbox">
							    <p style="margin-bottom: 10px; border-style: solid; border-color: rgb(229, 231, 235);">
							        <span style="text-align: center; display: inline !important; font-family: Arial;">
							            <b>${productDetail.productDes}</b>
							        </span>
							    </p>
							    <hr style="box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-style: solid; border-top-color: rgb(221, 221, 221);">
							    
							    <p style="margin-bottom: 10px; border-style: solid; border-color: rgb(229, 231, 235);">
							        <span style="font-family: Arial;">제품 키워드</span>
							    </p>
							    <p style="margin-bottom: 10px; border-style: solid; border-color: rgb(229, 231, 235);">
							        <span style="text-align: center; display: inline !important; font-family: Arial;">
							            ${productDetail.productKeyword}
							        </span>
							    </p>
							    <hr style="box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-style: solid; border-top-color: rgb(221, 221, 221);">
							    
							    <p style="margin-bottom: 10px; border-style: solid; border-color: rgb(229, 231, 235);">
							        <span style="font-family: Arial;">추천 고객</span>
							    </p>
							    <p style="margin-bottom: 10px; border-style: solid; border-color: rgb(229, 231, 235);">
							        <span style="text-align: center; display: inline !important; font-family: Arial;">
							            ${productDetail.productToWho}
							        </span>
							    </p>
							    <hr style="box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-style: solid; border-top-color: rgb(221, 221, 221);">
							    
							    <p style="margin-bottom: 10px; border-style: solid; border-color: rgb(229, 231, 235);">
							        <span style="font-family: Arial;">향</span>
							    </p>
							    <p style="margin-bottom: 10px; border-style: solid; border-color: rgb(229, 231, 235);">
							        <span style="text-align: center; display: inline !important; font-family: Arial;">
							            ${productDetail.productSmell}
							        </span>
							    </p>
							    <hr style="box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-style: solid; border-top-color: rgb(221, 221, 221);">
							    
							    <p style="margin-bottom: 10px; border-style: solid; border-color: rgb(229, 231, 235);">
							        <span style="font-family: Arial;">주요 성분</span>
							    </p>
							    <p style="margin-bottom: 10px; border-style: solid; border-color: rgb(229, 231, 235);">
							        <span style="text-align: center; display: inline !important; font-family: Arial;">
							            ${productDetail.productIngr}
							        </span>
							    </p>
							</div>

							<div class="bottombtns">
								<div class="btnbox">
								    <select id="productQuantity" type="number" class="selectarr">
								        <option value="1">1</option>
								        <option value="2">2</option>
								        <option value="3">3</option>
								        <option value="4">4</option>
								        <option value="5">5</option>
								    </select>
								    <form action="./addCart" method="post" id="addToCartForm">
								        <input type="hidden" name="productType" value="${productDetail.productType}">
								        <input type="hidden" name="productId" value="${productDetail.productId}">
								        <input type="hidden" name="productQuantity" id="quantityInputCart">
								        <button class="btnbuy" type="submit">장바구니</button>
								    </form>
								  
								</div>
								
								<script>
								document.getElementById('productQuantity').addEventListener('change', updateQuantityInputs);
								
								function updateQuantityInputs() {
								    var quantity = document.getElementById('productQuantity').value;
								    document.getElementById('quantityInputCart').value = quantity;
								    document.getElementById('quantityInputBuyNow').value = quantity;
								}
								
								document.getElementById('addToCartForm').addEventListener('submit', function() {
								    updateQuantityInputs();
								});
								
								document.getElementById('buyNowForm').addEventListener('submit', function() {
								    updateQuantityInputs();
								});
								</script>

								<div class="popbtns_group">
									<a href="#none" class="sbtn_arr" onclick="openPop('popSource');return false;"><span>제품 정보 고시</span></a>
								</div>
								
								<div id="popSource" class="pop_shopinfo">
									<div class="popinner">
										<h4>제품 정보 고시</h4>
										<a href="#juno" class="btnclose" onclick="closePop('popSource');return false;"></a>
										<div><b>제품명</b> 트리아 밀리아 베레 플루비아 샴푸</div><div><b>용도</b> Sensitive Scalp (민감성 두피용)</div><div><b>용량</b> 250ml</div><div><b>두피타입</b> 건성 두피, 지루성 두피</div><div><b>사용기한</b>&nbsp;제조일로부터 2년 (개봉 후 1년 이내 사용 권장)</div><div><b>사용방법</b>&nbsp;<span style="text-align: center; display: inline !important;">미온수로 두피와 모발을 충분히 적시고 적당량을 덜어 거품을 내고 두피와 모발에 도포 후, 다시 미온수로 충분히 헹구어 냅니다.</span></div><div><b>제조자 및 제조판매업자</b> 제품 내 별도 표기</div><div><b>제조국</b>&nbsp;대한민국</div><div><b>사용할 때 주의사항</b>&nbsp;<span style="text-align: center; display: inline !important;">1. 화장품 사용 시 또는 사용 후 직사광선에 의하여 사용부위가 붉은 반점, 부어오름 또는 가려움증 등의 이상 증상이나 부작용이 있을 경우에는 전문의 등과 상담할 것 2. 상처가 있는 부위 등에는 사용을 자제할 것 3. 눈에 들어갔을 때에는 즉시 씻어낼 것 4. 사용 후 물로 씻어내지 않으면 탈모 또는 탈색의 원인이 될 수 있으므로 주의할 것 5. 보관 및 취급 시 주의사항 가) 어린이의 손이 닿지 않는 곳에 보관할 것 나) 직사광선을 피해서 보관할 것</span></div><div>품질보증기준&nbsp;<span style="display: inline !important;">본 제품에 이상이 있을 경우 공정거래위원회 고시 소비자분쟁해결기준에 의하여 교환 또는 보상받을 수 있습니다.</span></div><div><b>소비자상담 전화번호</b> 070-8672-3188</div><div><b>전성분</b>&nbsp;<span style="text-align: center; display: inline !important;">정제수, 다이소듐라우레스설포석시네이트, 코코-베타인, 글리세린, 포타슘코코일글리시네이트, C12-14파레스-12, 피이지-7글리세릴코코에이트, 소듐클로라이드, 피이지-120메틸글루코스디올리에이트, 향료, 폴리쿼터늄-10, 시트릭애씨드, 소듐라우릴글라이콜카복실레이트, 소듐카보네이트, 카프릴릴글라이콜, 클로페네신, 에틸헥실글리세린, 폴리쿼터늄-7, 폴리쿼터늄-73, 다이소듐이디티에이, 하이드록시프로필구아하이드록시프로필트라이모늄클로라이드, 소듐벤조에이트, 인도멀구슬나무잎추출물, 프로판다이올, 부틸렌글라이콜, 인도멀구슬나무꽃추출물, 테트라소듐이디티에이, 병풀추출물, 황금추출물, 호장근뿌리추출물, 귤껍질추출물, 녹차추출물, 스페인감초뿌리추출물, 마트리카리아꽃추출물, 로즈마리잎추출물, 시트로넬올, 리모넨, 제라니올, 리날룰</span></div>
									</div>
									<button class="lbtn_black" onclick="closePop('popSource');return false;">뒤로 가기</button>
								</div>
							</div>
						</div>
						
						<div>
							<div class="mo_topbtn">
								<div><a href="#juno" class="btnback" onclick="gotoShop()"><span>BACK TO SHOP</span></a></div>
								<div><a href="#juno" class="msbtn sbtn_arr" onclick="openPop('popSource');return false;"><span>제품 정보 고시</span></a></div>
							</div>
							<div class="prodslideImg owl-carousel owl-theme owl-loaded">

							<div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1036px;"><div class="owl-item active" style="width: 518px; margin-right: 0px;"><div class="img" style="background-image:url(./resources/productupload/${productDetail.productImg1}">
									<img src="./resources/productupload/${productDetail.productImg1}" alt="">
								</div></div><div class="owl-item" style="width: 518px; margin-right: 0px;"><div class="img" style="background-image:url(./resources/productupload/${productDetail.productImg2}">
									<img src="./resources/productupload/${productDetail.productImg2}" alt="">
								</div></div></div></div><div class="owl-controls"><div class="owl-nav"><div class="owl-prev" style="display: none;">prev</div><div class="owl-next" style="display: none;">next</div></div><div class="owl-dots" style=""><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div></div></div></div>
						</div>
					</div>

					<!-- 
					<div class="prodrelated">
						<div class="ttl"><span>RELATED PRODUCTS</span></div>
						<div>
							<a href="#juno" onclick="location.href='/junohair/jmarket/prodview?idx=5'" class="producthover">
								<div class="cnt">
									<div class="prodthum" style="background-image:url(/upload/marketproduct/202308/3f52d0cb8e0b4668a0030f7e6c5fe9ee.jpg);"></div>
									<div class="prodinfo">
										<div><span class="label">포스트 플루비아 250ml - 지성두피용 샴푸</span></div>
										<span class="price">32,000</span>
									</div>
								</div>
							</a>
							<a href="#juno" onclick="location.href='/junohair/jmarket/prodview?idx=9'" class="producthover">
								<div class="cnt">
									<div class="prodthum" style="background-image:url(/upload/marketproduct/202308/199a1abde80949b7a05b18967077e588.jpg);"></div>
									<div class="prodinfo">
										<div><span class="label">베레 플루비아 600ml - 민감성 두피용 샴푸</span></div>
										<span class="price">65,000</span>
									</div>
								</div>
							</a>
						</div>
					</div>
					 -->
					 
					<div class="prodviewEdit">
						<img src="./resources/productupload/${productDetail.productDetailImg}" alt="">
					</div>
					
					<!-- 2020-05-21 모바일 상품상세설명 -->
					<div class="mobile_prodviewEdit">
						<img src="./resources/productupload/${productDetail.productDetailImg}" alt="">
					</div>
					<!-- //2020-05-21 모바일 상품상세설명 -->
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
	<div id="miniCartbox" class="miniCartbox active">
	    <div class="box">
	        <div>
	            <div class="head">
	                <h2 class="ttl">J MARKET</h2>
	                <span class="price"></span>
	            </div>
	            <c:forEach var="item" items="${sessionScope.cart}">
	                <div class="prodorder">
	                    <div class="prodthum" style="background-image: url('./resources/productupload/${item.product.productImg1}');"></div>
	                    <div class="prodinfo">
	                        <p class="prodname">${item.product.name}</p>
	                        <div class="countChk">
	                            <p class="quantity">수량: ${item.quantity}</p>
	                            <p class="price">단가: ${item.product.price}원</p>	                            
	                        </div>
	                    </div>
	                    <a href="/juno/deleteCart?ptype=${item.product.productType}&pid=${item.product.productId}" class="btn_delete"><span class="blind">상품 삭제</span></a>
	                </div>
	            </c:forEach>
	        </div>	        
	    </div>
	    <a href="./purchase" class="lbtn_black">구매하기</a>
	</div>

<script>
/*
	var minicart_app = new Vue({
		el : "#miniCartbox",
		data : {
			cartProductList : [],
			totalProductAmt : "",
		},
		mounted : function(){
			this.getCartInfo();
		},
		methods : {
			getCartInfo : function(mode){
				var params = {
						siteGubun : "1",
					}
				cf_call("/market/getCartInfo", params, function(data){ minicart_app.getCartInfoCB(data, mode)} );
			},
			getCartInfoCB : function(data, mode){
				this.cartProductList = data.cartProductList;
				for(var i=0; i<this.cartProductList.length; i++){
					this.cartProductList[i].file1Style = "background-image:url(" + this.cartProductList[i].file1 + ")";
					this.cartProductList[i].cntSlider = this.getCntSlider(this.cartProductList[i].productCnt)
				}
				this.totalProductAmt = data.totalProductAmt;
				
				if(mode === "show"){
					minicartopen();
				}
			},
			getCntSlider : function(productCnt){
				var cntSlider = [];
				productCnt = Number(productCnt);
				if(productCnt <= 5) {
					productCnt = 5;
				}
				for(var i = productCnt-4; i<=productCnt+5; i++){
					var cnt = {};
					cnt.value = i;
					cnt.code = i;
					cntSlider.push(cnt);
				}
				return cntSlider;
			},
			productCntChange01 : function(data){
				var params = {
						productIdx : data.productIdx,
						productCnt : data.productCnt,
						mode : "set",
						siteGubun : "1",
					}
				cf_call("/market/add2Cart", params, this.productCntChange01CB);
			},
			productCntChange01CB : function(data){
				this.getCartInfo();
			},
			delCartProduct : function(data){
				var params = {
						productIdx : data.productIdx,
						siteGubun : "1",
					}
				cf_call("/market/delCartProduct", params, this.delCartProductCB);
			},
			delCartProductCB : function(data){
				this.getCartInfo();
			},
			gotoBuyFromMiniCart01 : function(data){
				location.href = "/junohair/jmarket/order_detail";
			},
		}
	});
*/
</script>

<script>
// 	function openPop(id){
// 		var _this = $('#' + id);
// 		_this.show();
// 	}
	
// 	function closePop(id){
// 		var _this = $('#' + id);
// 		_this.hide();
// 	}
	
	$(function(){
		$('.prodslideImg').owlCarousel({
			items:1
		});
	})
	
	function add2Cart(){
		var params = {
				productIdx : "6",
				productCnt : $("#productCnt").val(),
				mode : "add",
				siteGubun : "1",
			}
		cf_call("/market/add2Cart", params, add2CartCB);
	}
	
	var isCartAddes = false;
	function add2CartCB(data){
		minicart_app.getCartInfo('show');
		isCartAddes = true;
	}
	
	function gotoBuy(){
		if(isCartAddes){
			location.href = "/junohair/jmarket/order_detail";
		} else {
			var params = {
					productIdx : "6",
					productCnt : $("#productCnt").val(),
					mode : "add",
					siteGubun : "1",
				}
			cf_call("/market/add2Cart", params, gotoBuyCB);
		}
	}
	
	function gotoBuyCB(data){
		location.href = "/junohair/jmarket/order_detail";
	}
	
	function gotoShop(){
		location.href = "/junohair/jmarket/prodlist?catagoryMst=";
	}
	
</script>

</body></html>