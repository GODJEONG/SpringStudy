<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>

<head>
<meta charset="EUC-KR">
<title>login</title>
<link rel="stylesheet" type="text/css" href="./resources/css_login.css">
</head>

<body style="text-align: center;">

	<h1>GOD J 식단 관리</h1>
	<hr>

    <c:choose>
    <c:when test="${empty user_id}">
    
 	<div class="login-container">
		<h1>LOGIN</h1>
		<form action="./LoginAction" method="post" name="loginform"
			class="login-form">
			<label for="id">아이디</label> <input type="text" name="id"
				id="id" required /> <label for="pw">비밀번호</label> <input
				type="password" name="pw" id="pw" required />
			<br> <input type="submit" value="로그인" />

		</form>
		<br> <a href="./Joinview" class="login-form-submit">회원가입</a>
	</div>
  </c:when>
<c:otherwise>

  <c:redirect url="./Main" />
</c:otherwise>
</c:choose>
</body>
</html>