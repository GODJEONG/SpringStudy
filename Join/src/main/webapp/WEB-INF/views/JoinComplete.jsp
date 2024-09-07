<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/join_css.css">
<script src="verify.js"></script>

</head>

<body>

	<h2>회원가입</h2>

	<br>
	<hr>
	<form id="join" action="JoinProcess.jsp" method=post>

		<table>

			<tr>
				<!-- 기본정보-->
				<td colspan="2" class="subtitle td">회원 기본 정보</td>
			</tr>
			<tr>
				<!-- 아이디 -->
				<td class="division">아이디:</td>
				<td class="valuefield">${join.id} ${id}</td>
			</tr>

			<tr>
				<!-- 비밀번호 -->
				<td class="division">비밀번호:</td>
				<td class="valuefield">${join.pw} ${pw}</td>
			</tr>

			<tr>
				<!-- 비밀번호 확인 -->
				<td class="division">비밀번호 확인:</td>
				<td class="valuefield">${join.pwconfirm} ${pwconfirm }</td>
			</tr>

			<tr>
				<!-- 메일주소 -->
				<td class="division">메일주소:</td>
				<td class="valuefield">${join.email} ${email }</td>
			</tr>

			<tr>
				<!-- 이름 -->
				<td class="division">이름:</td>
				<td class="valuefield">${join.name} ${name }</td>
			</tr>

			<tr>
				<!-- 기본정보-->
				<td colspan="7" class="subtitle">개인 신상 정보</td>
			</tr>


			<tr>
				<!-- 주민등록번호 -->
				<td class="division">주민등록번호:</td>
				<td class="valuefield">${join.socialsecuritynumber} ${socialsecuritynumber }</td>
			</tr>

			<tr>
				<!-- 생일 -->
				<td class="division">생일:</td>
				<td class="valuefield"> ${join.year} ${year }년 ${join.month} ${month } 월 ${join.day} ${day }
					일</td>
			</tr>

			<tr>
				<!-- 관심분야 -->
				<td class="division">관심분야:</td>
				<td class="valuefield">${join.inter} ${inter }</td>
			</tr>

			<tr>
				<!-- 자기소개  -->
				<td class="division">자기소개:</td>
				<td class="valuefield">${join.intro} ${intro }</td>
			</tr>

</body>
</html>
