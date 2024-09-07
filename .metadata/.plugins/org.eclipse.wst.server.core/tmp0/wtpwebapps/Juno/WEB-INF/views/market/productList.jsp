<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html xmlns="http://www.w3.org/1999/xhtml" class="js no-touch csstransforms csstransforms3d csstransitions">
    <head>
	<link rel="shortcut icon" href="https://www.junohair.com/static_resources/images/junohair.ico">
	<link rel="apple-touch-icon" href="https://www.junohair.com/static_resources/images/apple-touch-icon.png">
	<link rel="apple-touch-icon-precomposed" href="https://www.junohair.com /static_resources/images/apple-touch-icon.png">
	<link rel="canonical" href="https://www.junohair.com/junohair">
	
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<!-- 
	<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
	<script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-DBGPMGH101&amp;l=dataLayer&amp;cx=c"></script>
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
	 -->
	<title>준오헤어</title>
	<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/reset.css?rscVer=0333">
	<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/common.css?rscVer=0333">
	<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/junohair/common.css?rscVer=0333">
	<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/junohair/sub_common.css?rscVer=0333">
	<link rel="stylesheet" href="https://www.junohair.com/static_resources/css/jmarket.css?rscVer=0333">
	<script src="https://www.junohair.com/static_resources/lib/jquery/1.12.4/jquery.min.js?rscVer=0333"></script>
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
				<div id="contents" class="prodlistwrap">
					<div class="inner">
						<div class="contentsHead"><a href="./myorderList" class="btnback"><span>나의 구매내역</span></a></div>
						<div class="prodlistAll">
							<h2 class="ttl">SHAMPOO</h2>
							<div class="sectionbox"> 
								<div class="boxL">
									<div class="sttl">
										<p style="width:170px">
											<span>두피라인 </span>
											<span>SCALP LINE</span>
										</p>
									</div>
								    <div class="prodcont">
								        <c:forEach var="product" items="${products1}">
								            <a href="#juno" class="producthover" onclick="gotoProdView('${product.productType}','${product.productId}')">
								                <div class="cnt">
								                    <div class="prodthum" style="background-image:url(./resources/productupload/${product.productImg1});"></div>
								                    <div class="prodthum_mo" style="background-image:url(./resources/productupload/${product.productImg2});"></div>
								                    <div class="prodinfo">
								                        <div><span class="label">${product.name}</span></div>
								                        <span class="price">${product.price}원</span>
								                    </div>
								                </div>
								            </a>
								        </c:forEach>
								    </div>
								</div>
								<div class="boxR">
									<div class="sttl">
										<p style="width:200px">
											<span>모발라인 </span>
											<span>HAIR CARD LINE</span>
										</p>
									</div>
								    <div class="prodcont">
								        <c:forEach var="product" items="${products2}">
								            <a href="#juno" class="producthover" onclick="gotoProdView('${product.productType}','${product.productId}')">
								                <div class="cnt">
								                    <div class="prodthum" style="background-image:url(./resources/productupload/${product.productImg1});"></div>
								                    <div class="prodthum_mo" style="background-image:url(./resources/productupload/${product.productImg2});"></div>
								                    <div class="prodinfo">
								                        <div><span class="label">${product.name}</span></div>
								                        <span class="price">${product.price}원</span>
								                    </div>
								                </div>
								            </a>
								        </c:forEach>
								    </div>
								</div>
							</div>
							<h2 class="ttl">TREATMENT</h2>
							<div class="sectionbox"> 
								<div class="boxL">
									<div class="sttl">
										<p style="width:170px">
											<span>두피라인 </span>
											<span>SCALP LINE</span>
										</p>
									</div>
								    <div class="prodcont">
								        <c:forEach var="product" items="${products3}">
								            <a href="#juno" class="producthover" onclick="gotoProdView('${product.productType}','${product.productId}')">
								                <div class="cnt">
								                    <div class="prodthum" style="background-image:url(./resources/productupload/${product.productImg1});"></div>
								                    <div class="prodthum_mo" style="background-image:url(./resources/productupload/${product.productImg2});"></div>
								                    <div class="prodinfo">
								                        <div><span class="label">${product.name}</span></div>
								                        <span class="price">${product.price}원</span>
								                    </div>
								                </div>
								            </a>
								        </c:forEach>
								    </div>
								</div>
								<div class="boxR">
									<div class="sttl">
										<p style="width:200px">
											<span>모발라인 </span>
											<span>HAIR CARD LINE</span>
										</p>
									</div>
								    <div class="prodcont">
								        <c:forEach var="product" items="${products4}">
								            <a href="#juno" class="producthover" onclick="gotoProdView('${product.productType}','${product.productId}')">
								                <div class="cnt">
								                    <div class="prodthum" style="background-image:url(./resources/productupload/${product.productImg1});"></div>
								                    <div class="prodthum_mo" style="background-image:url(./resources/productupload/${product.productImg2});"></div>
								                    <div class="prodinfo">
								                        <div><span class="label">${product.name}</span></div>
								                        <span class="price">${product.price}원</span>
								                    </div>
								                </div>
								            </a>
								        </c:forEach>
								    </div>
								</div>
							</div>
							<h2 class="ttl line">STYLING</h2>
							<div class="sectionbox"> 
							    <div class="prodcont catenone">
							        <c:forEach var="product" items="${products5}">
							            <a href="#juno" class="producthover" onclick="gotoProdView('${product.productType}','${product.productId}')">
							                <div class="cnt">
							                    <div class="prodthum" style="background-image:url(./resources/productupload/${product.productImg1});"></div>
							                    <div class="prodthum_mo" style="background-image:url(./resources/productupload/${product.productImg2});"></div>
							                    <div class="prodinfo">
							                        <div><span class="label">${product.name}</span></div>
							                        <span class="price">${product.price}원</span>
							                    </div>
							                </div>
							            </a>
							        </c:forEach>
							    </div>
							</div>

							<h2 class="ttl line">ESSENCE</h2>
							<div class="sectionbox"> 
							    <div class="prodcont catenone">
							        <c:forEach var="product" items="${products6}">
							            <a href="#juno" class="producthover" onclick="gotoProdView('${product.productType}','${product.productId}')">
							                <div class="cnt">
							                    <div class="prodthum" style="background-image:url(./resources/productupload/${product.productImg1});"></div>
							                    <div class="prodthum_mo" style="background-image:url(./resources/productupload/${product.productImg2});"></div>
							                    <div class="prodinfo">
							                        <div><span class="label">${product.name}</span></div>
							                        <span class="price">${product.price}원</span>
							                    </div>
							                </div>
							            </a>
							        </c:forEach>
							    </div>
							</div>
							<h2 class="ttl line">BODY CARE</h2>
							<div class="sectionbox"> 
							    <div class="prodcont catenone">
							        <c:forEach var="product" items="${products7}">
							            <a href="#juno" class="producthover" onclick="gotoProdView('${product.productType}','${product.productId}')">
							                <div class="cnt">
							                    <div class="prodthum" style="background-image:url(./resources/productupload/${product.productImg1});"></div>
							                    <div class="prodthum_mo" style="background-image:url(./resources/productupload/${product.productImg2});"></div>
							                    <div class="prodinfo">
							                        <div><span class="label">${product.name}</span></div>
							                        <span class="price">${product.price}원</span>
							                    </div>
							                </div>
							            </a>
							        </c:forEach>
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
	<!-- 	
	<div id="miniCartbox" class="miniCartbox"><div class="box"><div><div class="head"><h2 class="ttl">J MARKET</h2> <span class="price">0원</span></div> </div></div> <a href="#juno" class="lbtn_black">구매하기</a></div>
	-->
		
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
	                    <a href="./deleteCart?ptype=${item.product.productType}&pid=${item.product.productId}&order=0" class="btn_delete"><span class="blind">상품 삭제</span></a>
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
		function gotoProdView(ptype, pid){
			location.href = "/juno/prodview?ptype=" + ptype + "&pid=" + pid;
		}
	</script>
	</body></html>
