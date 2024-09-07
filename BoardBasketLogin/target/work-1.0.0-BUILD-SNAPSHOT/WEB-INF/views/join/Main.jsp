<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Shopping</title>
<link rel="stylesheet" type="text/css"
	href="./shop_basket2/css/css_shop.css">
<script src="./shop_basket2/js_shopcount.js"></script>
</head>



<c:set var="request_encoding" value="euc-kr" />
<%-- <jsp:useBean id="user_info" class="net.login.db.LoginBean" scope="session" /> --%>
<c:set var="user_id" scope="session" value="${not empty user_info ? user_info.userid : null}" />
<c:set var="admin" scope="session" value="${not empty user_info ? user_info.admin : null}" />


 
<c:choose>
    <c:when test="${empty user_id}">

<script>
	alert("로그인 후 이용 가능합니다!");
	window.location.href = "./LoginForm.lo";
</script>


 </c:when>
<c:otherwise>
 <body>
	<h1>
		${user_id}
		고객님, 환영합니다.
	</h1>

	<div class="right-align">

	  <c:if test="${sessionScope.admin == '1'}">
                    <a href="./Adminview.lo">관리자</a> &nbsp;| &nbsp;
      </c:if>
	
	  <a href="./Logout.lo">로그아웃</a>
	
	</div>

	<br>
	<br>
	<hr>

	<div class="cc">
		<div class="container">
			<img src="<%=request.getContextPath()%>/shop_basket2/img/board1.png"
				alt="게시판 이미지" style="max-width: 200px; height: auto;"> <br>
			<br> <br> <a href="./BoardList.bo" class="button">게시판</a>
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<div class="container">
			<img src="/ShopBasket/shop_basket2/img/shop1.png" alt="쇼핑하기 이미지"
				style="max-width: 200px; height: auto;"> <br> <br> <br>
			<a href="./Shop.lo" class="button">쇼핑하기</a>
		</div>
	</div>

</body>
</html>

</c:otherwise>
</c:choose>