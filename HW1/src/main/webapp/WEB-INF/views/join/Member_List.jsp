<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<c:choose>
    <c:when test="${empty admin}">

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
<title>Member_List</title>
<link rel="stylesheet" type="text/css"
	href="./resources/css_member.css">

</head>

<body>

	<h1>전체 회원 정보</h1>

	<h1>${user_id}</h1>



	<div class="right-align">
		<a href="./Main">Home</a> &nbsp;| &nbsp;

		<c:if test="${sessionScope.admin == '1'}">
        <a href="./Adminview">관리자 메인</a> &nbsp;| &nbsp;
  		</c:if>
		<a href="./Logout">로그아웃</a>
	</div>

	<br>
	<br>
	<hr>

	<table border="1">
		<tr style="font-weight: bold;">
			<td class="row">ID</td>
			<td class="row">이름</td>
			<td class="row">상세 정보</td>
			<td class="row">회원 삭제</td>
			<td class="row">관리자여부</td>
		</tr>

		<c:forEach var="member" items="${member_all}">
  		<tr>
        <td>${member.id}</td>
        <td>${member.name}</td>
        <td><a href="./Infoview?id=${member.id}">자세히 보기</a></td>
        <td><a href="./MemberDel?id=${member.id}">삭제</a></td>
        <td>${member.admin == '1' ? '관리자' : '일반회원'}</td>
    	</tr>
		</c:forEach>
	</table>
</body>
</html>


</c:otherwise>
</c:choose>