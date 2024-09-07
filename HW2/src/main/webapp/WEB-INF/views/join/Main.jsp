<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Shopping</title>
<link rel="stylesheet" type="text/css"
	href="./resources/css_shop.css">
<script src="./resources/js_shopcount.js"></script>
</head>



<c:set var="request_encoding" value="euc-kr" />
<c:set var="user_id" scope="session" value="${not empty user_info ? user_info.id : null}" />
<c:set var="admin" scope="session" value="${not empty user_info ? user_info.admin : null}" />


 
<c:choose>
    <c:when test="${empty user_id}">

<script>
	alert("�α��� �� �̿� �����մϴ�!");
	window.location.href = "./LoginForm";
</script>


 </c:when>
<c:otherwise>
 <body>
	<h1>
		${user_id}
		����, ȯ���մϴ�.
	</h1>

	<div class="right-align">

	  <c:if test="${sessionScope.admin == '1'}">
                    <a href="./Adminview">������</a> &nbsp;| &nbsp;
      </c:if>
	
	  <a href="./Logout">�α׾ƿ�</a>
	
	</div>

	<br>
	<br>
	<hr>

	<div class="cc">
		<div class="container">
			<img src="<%=request.getContextPath()%>/resources/board1.png"
				alt="�Խ��� �̹���" style="max-width: 200px; height: auto;"> <br>
			<br> <br> <a href="./BoardList" class="button">�Խ���</a>
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<div class="container">
			<img src="<%=request.getContextPath()%>/resources/shop1.png" alt="�����ϱ� �̹���"
				style="max-width: 200px; height: auto;"> <br> <br> <br>
			<a href="./Shop" class="button">�����ϱ�</a>
		</div>
	</div>

</body>
</html>

</c:otherwise>
</c:choose>