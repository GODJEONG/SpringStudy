<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html xmlns="http://www.w3.org/1999/xhtml" class=" js no-touch csstransforms csstransforms3d csstransitions" style=""><head>

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
$(document).ready(function() {
    function updateTotal() {
        var total = 0;
        var shippingCost = 3000;

        $('.orderprodbx').each(function() {
            var priceText = $(this).find('.price').text().replace('원', '').trim();
            var quantityText = $(this).find('input[type="hidden"]').val().trim();

            var price = parseInt(priceText, 10) || 0; // 유효하지 않은 값일 경우 0을 반환
            var quantity = parseInt(quantityText, 10) || 0; // 유효하지 않은 값일 경우 0을 반환

            total += price * quantity;
        });

        if (total >= 50000) {
            shippingCost = 0;
        }

        var grandTotal = total + shippingCost;
        $('#totalPrice').text(total.toLocaleString() + '원');
        $('#shippingCost').text(shippingCost.toLocaleString() + '원');
        $('#grandTotal').text(grandTotal.toLocaleString() + '원');
    }

    // 수량 조절 및 삭제 버튼 이벤트를 적절히 처리
    $('.plus, .minus').click(function(event) {
        event.preventDefault();
        var button = $(this);
        var index = button.data('id');
        var quantityInput = $('#quantity_' + index);
        var displayQuantity = $('#displayQuantity_' + index);
        var currentQuantity = parseInt(quantityInput.val()) || 0; // 유효하지 않은 값일 경우 0을 사용

        if (button.hasClass('plus')) {
            currentQuantity += 1;
        } else if (button.hasClass('minus') && currentQuantity > 1) {
            currentQuantity -= 1;
        }

        quantityInput.val(currentQuantity);
        displayQuantity.text(currentQuantity);
        updateTotal();
    });

    $('.orderprodbx').on('click', '.btn_delete', function(event) {
        event.preventDefault();
        var divId = $(this).closest('.orderprodbx').attr('id').split('_')[1];
        $('#prodorder_' + divId).remove();
        updateTotal();
    });

    updateTotal(); // 페이지 로드 시 초기 계산
});

</script>

<script>
    $(document).ready(function() {
        var IMP = window.IMP; // 아임포트 라이브러리 초기화
        IMP.init("imp26166210"); // 가맹점 식별 코드

        function requestPay() {
            // 최종 결제 금액 가져오기
            var amount = $('#grandTotal').text().replace(/[^\d]/g, ""); // 금액에서 숫자만 추출

            IMP.request_pay({
                pg: "kakaopay",
                pay_method: "kakaopay",
                merchant_uid: 'order_' + Date.now(),
                name: "주노헤어",
                amount: amount, // 동적으로 결제 금액 설정
                buyer_email: "good@portone.io",
                buyer_name: "포트원 기술지원팀",
                buyer_tel: "010-1234-5678",
                buyer_addr: "서울특별시 강남구 삼성동",
                buyer_postcode: "123-456",
            }, function(rsp) {
                if (rsp.success) {
                    alert("결제가 완료되었습니다.");
                    $("#paymentForm").submit();
                } else {
                    alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
                }
            });
        }

        // 결제하기 버튼 이벤트
        $('#payButton').click(function(e) {
            e.preventDefault();
            requestPay();
        });
    });
</script>

</head>
<body>
	<div id="wrap" class="vue-contents-container" style="display: block;">
		
		<jsp:include page="/WEB-INF/views/common/header3.jsp">
			<jsp:param name="id" value="${sessionScope.id}" />
			<jsp:param name="admin" value="${sessionScope.admin}" />
		</jsp:include>
		
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
					<div class="contentsHead"><a href="./jmarket" class="btnback"><span>BACK TO SHOP</span></a></div>
					<div class="orderfrm">
						<div class="sectionL">
							<div class="box">
								<div class="ttl">
									<h2>주문고객정보</h2>
								</div>
								<div class="field"><label for="ordererName">이름</label>
									<div class="ipx"><input type="text" id="ordererName" placeholder="주문고객 이름" maxlength="25" value="${user.name}"></div>

								</div>
								<div class="field"><label for="ordererTel">아이디</label>
									<div class="ipx"><input type="text" id="ordererId" placeholder="예시: 010-1111-2222" value="${user.id}">
									</div>
								</div>
								<div class="field"><label for="ordererEmail">이메일</label>
									<div class="ipx">
										<input type="text" id="ordererEmail" placeholder="주문고객 이메일" maxlength="50" value="${user.email}">
									</div>
								</div>
							</div>
							<div class="box">
								<div class="ttl">
									<h2>배송지 정보</h2>
								</div>
								<div class="field"><label for="recipientName">받으시는 분 </label>
									<div class="ipx"><input type="text" id="recipientName" maxlength="25"></div>
								</div>
								<div class="addressfield">
									<div class="fir">
										<div class="field"><label for="recipientAddr1">주소</label>
											<div class="ipx"><input type="text" id="recipientAddr1"></div>
										</div>
									</div>
								</div>
								<div class="field"><label for="recipientTel">휴대폰</label>
									<div class="ipx"><input type="text" id="recipientTel"
											onkeyup="inputPhoneNumber(this);app.applyRecipientTel(this.value);" maxlength="13">
									</div>
								</div>
								<div class="field"><label for="comment">배송 요청사항</label>
									<div class="ipx"><textarea name="" id="comment" maxlength="250"></textarea></div>
								</div>
							</div>
							<!-- 
							<div class="box">
								<div class="ttl">
									<h2>제품 추천인</h2> <span>준오헤어에 추천인이 있으시면 기입해주세요.</span>
								</div>
								<div class="branchfield"><label for="store_name">매장명</label>
									<div class="selectgroup">
										<div><select class="selectarr">
												<option value="">시도선택</option>
												<option value="-">없음</option>
												<option value="1_1">서울특별시 강남구</option>
												<option value="1_2">서울특별시 강동구</option>
												<option value="1_3">서울특별시 강북구</option>
												<option value="1_4">서울특별시 강서구</option>
												<option value="1_5">서울특별시 관악구</option>
												<option value="1_6">서울특별시 광진구</option>
												<option value="1_7">서울특별시 구로구</option>
												<option value="1_8">서울특별시 금천구</option>
												<option value="1_9">서울특별시 노원구</option>
												<option value="1_11">서울특별시 동대문구</option>
												<option value="1_12">서울특별시 동작구</option>
												<option value="1_13">서울특별시 마포구</option>
												<option value="1_14">서울특별시 서대문구</option>
												<option value="1_15">서울특별시 서초구</option>
												<option value="1_16">서울특별시 성동구</option>
												<option value="1_17">서울특별시 성북구</option>
												<option value="1_18">서울특별시 송파구</option>
												<option value="1_19">서울특별시 양천구</option>
												<option value="1_20">서울특별시 영등포구</option>
												<option value="1_21">서울특별시 용산구</option>
												<option value="1_22">서울특별시 은평구</option>
												<option value="1_23">서울특별시 종로구</option>
												<option value="1_24">서울특별시 중구</option>
												<option value="1_25">서울특별시 중랑구</option>
												<option value="8_-">경기도 </option>
												<option value="7_-">부산광역시 </option>
												<option value="6_-">울산광역시 </option>
												<option value="2_-">인천광역시 </option>
												<option value="10_-">충청북도 </option>
											</select></div>
										<div><select class="selectarr">
												<option value="">지점선택</option>
											</select></div>
									</div>
								</div>
								<div class="field"><label for="designer_name">디자이너 이름</label>
									<div class="ipx"><select class="selectarr w100p">
											<option value="">디자이너 선택</option>
										</select></div>
								</div>
							</div>
							 -->
						</div>
						<div class="sectionR">
						<form action="./order" method="post" id="paymentForm">
						    <div class="box orderprodbox">
						        <div class="ttl">
						            <h2>주문리스트확인</h2>
						        </div>
						        <c:forEach items="${sessionScope.cart}" var="item" varStatus="status">
						            <div class="orderprodbx" id="prodorder_${status.index}">
						                <div class="prodorder">
						                    <div class="prodthum" style="background-image: url('./resources/productupload/${item.product.productImg1}');"></div>
						                    <div class="prodinfo">
						                        <p class="prodname">${item.product.name}</p>
						                        <div class="countChk">
                    <button type="button" class="minus" data-id="${status.index}">-</button>
                    <span id="displayQuantity_${status.index}">${item.quantity}</span>
                    <button type="button" class="plus" data-id="${status.index}">+</button>
                    <input type="hidden" id="quantity_${status.index}" name="productQuantity_${status.index}" value="${item.quantity}">
						                            <p class="price">${item.product.price}원</p>  
						                        </div>
						                    </div>
						                    <a href="#juno" class="btn_delete"><span class="blind">상품 삭제</span></a>
						                </div>
						            </div>
						            <c:if test="${status.last}">
								        <input type="hidden" name="totalItems" value="${status.count}">
								    </c:if>
								    <input type="hidden" name="productName_${status.index}" value="${item.product.name}">
						            <input type="hidden" name="productType_${status.index}" value="${item.product.productType}">
						            <input type="hidden" name="productId_${status.index}" value="${item.product.productId}">
						            <input type="hidden" name="productQuantity_${status.index}" value="${item.quantity}">
						        </c:forEach>
						        <div class="ordertxtfield"><span>배송비</span><span id="shippingCost"></span></div>
						        <div class="ordertxtfield total"><span>상품금액</span><span id="totalPrice"></span></div>
						        <div class="ordertxtfield total"><span>최종 결제금액</span><span id="grandTotal"></span></div>
						    </div>	
	
							<div id="payMethodBox" class="box">
								<div class="ttl">
									<h2>결제수단</h2>
								</div>
								<div class="paymethod">
									<label><input type="radio" name="pay_method" value="BANK">카카오 페이</label>
								</div>
							</div>
							<div id="agreeBox" class="box">
								<div class="ttl">
									<h2>구매 동의하기</h2>
								</div>
								<div class="agreechkbox">
									<div class="chkb"><label><input type="checkbox" id="agree1"> 구매조건 확인 및 결제진행 동의</label></div>
									<div class="chkb"><label><input type="checkbox" id="agree2"> 개인정보 제3자 제공 동의</label></div> <a
										href="#juno" onclick="openPop('popPrivacyAgree');return false;"
										class="btn_agreeview">내용보기</a>
								</div>
							</div>
							<div class="bottombtn"><button type="button" id="payButton" class="lbtn_black">결제하기</button></div>
						</form>
						</div>
					</div>
				</div>
			</div>

			<!-- pop 개인정보 제공 동의 -->
			<div id="popPrivacyAgree" class="pop_shopinfo">
				<div class="popinner">
					<h4>개인정보 제3자 제공 동의</h4>
					<a href="#juno" class="btnclose" onclick="closePop('popPrivacyAgree');return false;"></a>
					<p class="stext">(주)준오뷰티 회원 계정으로 상품 및 서비스를 구매하고자 할 경우, (주)준오뷰티는 거래 당사자간 원활한 의사소통 및 배송, 상담 등 거래 이행을 위하여 필요한 최소한의 개인정보만을 판매자에게 아래와 같이 제공하고 있습니다.<br><br><b>제공받는자</b><br>(주)준오디포<br><br><b>제공목적</b><br>주문상품의 배송, 고객상담 및 불만처리<br><b>제공정보</b><br>수령인 명, 수취인 연락처, 배송지 주소<br><br><b>보유 및 이용기간</b><br>거래종료 후 60일까지<br><br>본 개인정보 제공에 동의하지 않는 경우 동의를 거부할 수 있으며, 거부 시 상품구매가 제한될 수 있습니다.</p>
				</div>
				<button class="lbtn_black" onclick="closePop('popPrivacyAgree');return false;">뒤로 가기</button>
			</div>
			<!-- //pop 개인정보 제공 동의 -->

		</div>
</body>
</html>