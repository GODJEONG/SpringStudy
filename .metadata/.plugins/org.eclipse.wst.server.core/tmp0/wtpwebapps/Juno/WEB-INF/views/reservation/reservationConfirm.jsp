<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- header.jsp 내용 -->
<jsp:include page="/WEB-INF/views/common/headerReservation.jsp">
	<jsp:param name="id" value="${sessionScope.id}" />
	<jsp:param name="admin" value="${sessionScope.admin}" />
</jsp:include>

<div id="container" class="reservation_wrap">
	<div class="sub_visual">
		<div class="sub_visual_bg" style="background-image:url('https://www.junohair.com/static_resources/images/junohair/sub/reservation/reser_visual.jpg')"></div>
		<div class="sub_visual_text">
			<strong>RESERVATION</strong>
			<p class="sub_visual_sub_text">
				<span>실시간 매장 예약을 통해 <br class="m">편리한 매장 이용을 도와드리며,</span><br>
				<span>AI기반의 디자이너 추천 기능을 제공합니다.</span>
			</p>
		</div>
	</div>
	<div id="contents" class="shop_list">
		<div class="reser_process">
			<ul>
				<li>
					<span class="num">01</span>
					<span>매장 선택</span>
				</li>
				<li>
					<span class="num">02</span>
					<span>디자이너 선택</span>
				</li>
				<li style="cursor: pointer;" onclick="gotoPre()">
					<span class="num">03</span>
					<span>일정 및 시술 선택</span>
				</li>
				<li class="current">
					<span class="num">04</span>
					<span>예약 확인</span>
				</li>
			</ul>
		</div>

		<div class="clear"></div>

		<div class="reser_confirm">
			<div class="secgroup">
				<div class="designer_namebox">
					<p class="profileimg">
						<img src="./resources/productupload/${designerInfo.designerPath}" class="profileimgsrc">
					</p>
					<div class="infocont">
						<p class="ttl">${designerInfo.designerName}</p>
						<p class="desc">${designerInfo.introduce}</p>
					</div>
					<span class="line"></span>
				</div>
				<div class="reserlist_confirm">
					<ul>
						<li>
							<p class="tit">예약 매장</p>
							<p class="branch">${branchInfo.branchName}</p>
						</li>
						<li>
							<p class="tit">날짜</p>
							<p class="date">
								<fmt:formatDate value="${reservation.reservationDate}" pattern="yyyy-MM-dd HH:mm" />
							</p>
						</li>
						<li>
							<p class="tit">예약자 ID</p>
							<p>${reservation.userId}</p>
						</li>
						
						<li>
							<p class="tit">연락처</p>
							<p>${branchInfo.contact}</p>
						</li>
						<!-- 
						<li>
							<p class="tit">요청사항</p>
							<p class="msg">&nbsp;</p>
						</li>
						<li>
							<p class="tit">시술 정보</p>
							<div class="detail" id="sisulDtls">

								<div>
									<p class="dtit" name="sisulNm">앞머리 커트</p>
									<p class="price">15,000<span class="won">원</span></p>
								</div>
							</div>
						</li>
						-->
					</ul>
				</div>
			</div><br><br><br><br><br>
			<div class="forecastbox">
				<p class="desc">
					<span>실제 이용 금액은 세부 시술 내용 및</span>
					<span>할인 적용에 따라 달라질 수 있습니다.</span>
					
					<span style="display: inline-block; margin-top: 10px;">※ 컷트, 드라이, 부분 시술(부리염색, 뿌리펌, 다운펌, 앞머리펌, 앞머리컷 등)은</span>
					<span>멤버십 할인 적용이 불가능합니다.</span>
					<span>위 상품에 대한 할인율은 실제 할인율과 달라질 수 있습니다.</span>
				</p>
				<!-- 
				<div class="total_price">
					<p class="tit">예상 금액</p>
					<p class="price">15,000<span class="won">원</span></p>
				</div>
				 -->
			</div>
			<!-- 
			<div class="agreebox">
				<span class="check_type">
				    <input type="checkbox" id="haircate01" name="haircate" class="checkbox">
				    <label for="haircate01">준오헤어 이용약관 동의하기</label>
				</span>
			</div>	
			
			<div class="ai_foot_btns">
				<a href="javascript:gotoPre();" class="btnbox_line" onclick="gotoPre()">이전</a>
				<a href="#juno" class="btnbox_black" onclick="gotoNext()">예약하기</a>
			</div>
			 -->
		</div>
	</div>
</div>

<!-- footer.jsp 내용 -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

</div>
<script>

function gotoNext(){
	
	
	// 여의도IFC몰점 예약 제한
	if(80 === 83) return

	if(0 != "0") {
		alert("예약정보가 없습니다.\n처음부터 다시 시도해주시기 바랍니다.");
		return;
	}
	
	if(!$("input:checkbox[id='haircate01']").is(":checked")){
		alert("이용약관에 동의해주세요.");
		return;
	}
	
	var sisulMenuAry = [];
	var sisulIdAry = [];
	var sisulDtlAry = $("[name='sisulNm']");
	
	var strSisulList = "[{id=22c03bfcb95d7d22ddcc0781ebef2e4d, sisulId=14b3341ceae44eddad06f20211e55506, sisulDesc=앞머리 커트, price=15,000, priceDiscount=, discountYn=N, recommendSisulId=, sort=1, sisulDiv=cut, membershipDiscountYn=N}]".split("[{").join("").split("}]").join(""); //양끝 문자열 제거
	strSisulList = strSisulList.split("}, {");

	for(var i=0; i<sisulDtlAry.length; i++){
		var sisulNm = $(sisulDtlAry[i]).text();
		var sisulId = "";
		var arrSisulElement = strSisulList[i].split(", ");
		for(var j=0; j<arrSisulElement.length; j++){
			var elementAry = arrSisulElement[j].split("=");
			if(elementAry[0] == "sisulId") {
				sisulId = elementAry[1];
			}
		}
		sisulMenuAry.push(sisulNm);
		sisulIdAry.push(sisulId);
	}
	var params = "?rmenu=" + encodeURIComponent(sisulMenuAry.join())
				+ "&sisulid=" + encodeURIComponent(sisulIdAry.join())
				+ "&rdate=" + "2024.07.02".replaceAll(".","-")
				+ "&rtime=" + "10:00"
				+ "&cpcode=" + "80"
				+ "&scode=" + "1093"
				+ "&rsrvamt=" + "15,000"
				+ "&sname=" + encodeURIComponent("정원")
				+ "&mname=" + encodeURIComponent("임경민")
				+ "&mtel=" + encodeURIComponent("01076279992")
				+ "&refer=" + "norm"
				+ "&rmemo=" + encodeURIComponent("".replaceAll("<br/>","\n"));
				
				
	location.href = "/junohair/reservation/process05_finish" + params;
}

function gotoPre(){
// 	var cururl = window.location.href + "";
// 	if(cururl.indexOf("#") != -1){
// 		window.history.go(-2);
// 	} else {
// 		window.history.go(-1);
// 	}
	location.href = "/junohair/reservation/process03_date?scode=" + "1093" + "&refer=" + "norm";
}
</script>

</body>