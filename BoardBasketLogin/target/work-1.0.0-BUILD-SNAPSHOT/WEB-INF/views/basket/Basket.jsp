<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<c:choose>
	<c:when test="${empty user_id}">
		<script>
			alert("로그인 후 이용 가능합니다!");
			window.location.href = "./LoginForm.lo";
		</script>
	</c:when>
	<c:otherwise>

		<!DOCTYPE html>
		<html>
<head>
<meta charset="EUC-KR">
<title>Basket</title>
<link rel="stylesheet" type="text/css"
	href="./shop_basket2/css/css_basket.css">

</head>
<body>

	<h1>${user_id} 회원님의 장바구니</h1>

	<div class="right-align">
		<a href="./Main.lo">Home</a> &nbsp;| &nbsp;
	
		<c:if test="${sessionScope.admin == '1'}">
			<a href="./Adminview.lo">관리자</a> &nbsp;| &nbsp;
        </c:if>
		<a href="./Shop.lo">구매하러 가기</a> &nbsp;| &nbsp; <a
			href="./OrderList.ba">구매내역</a> &nbsp;| &nbsp; <a ref="./Logout.lo">로그아웃</a>
	</div>

	<br>
	<br>
	<hr>

	<table border="1">
		<tr>
			<td colspan="3">&nbsp; 내 장바구니 &nbsp;</td>
		</tr>

		<tr>
			<td>항목</td>
			<td>주문</td>
			<td>수량조정(-1만 가능)</td>
		</tr>


		<c:if test="${not empty sessionScope.basketMap}">
			<c:forEach var="entry" items="${sessionScope.basketMap}">
				<tr>

	
					<td><img src="/COS0503/upload/${entry.key}.jpg"> <br>
						${entry.key}</td>
					<td id="${entry.key}">${entry.value}</td>
					<td>
						<form action="./RemoveAction.ba" method="post">
							<input type="hidden" name="itemName" value="${entry.key}">
							<button type="submit">-</button>
						</form>
					</td>

				</tr>
	
			</c:forEach>
		</c:if>
	</table>

	<div class="center-align">
		<a href="./OrderInsert.ba" class="button">주문하기</a>
	</div>

	</body>
</html>


	</c:otherwise>
</c:choose>