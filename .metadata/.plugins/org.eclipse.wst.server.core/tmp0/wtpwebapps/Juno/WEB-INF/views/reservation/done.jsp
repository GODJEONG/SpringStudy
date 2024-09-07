<%@ page contentType="text/html; charset=UTF-8"%>

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
		<div class="reser_finish">
			
			
			<a href="#juno" onclick="location.href='/junohair'" class="btnbox_black btnbox_widauto">홈으로 돌아가기</a>
			
				<p class="ttl">예약이 완료되었습니다.<br>감사합니다.</p>
				<p class="desc">
					<span>예약 내용은 MY JUNO &gt; <a href="#juno" onclick="location.href='/myjuno/use_list'">예약내역</a>에서 </span>
					<span>확인 가능합니다.</span>
				</p>
				<a href="#juno" onclick="location.href='/junohair'" class="btnbox_black btnbox_widauto">홈으로 돌아가기</a>
		</div>
	</div>
</div>

<!-- footer.jsp 내용 -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
