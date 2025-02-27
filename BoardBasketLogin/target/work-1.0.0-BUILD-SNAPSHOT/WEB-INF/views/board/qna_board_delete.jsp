<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${empty user_id}">
		<script>
			alert("로그인 후 이용 가능합니다!");
			window.location.href = "../LoginForm.lo";
		</script>
	</c:when>
	<c:otherwise>

<html>
<head>
<title>MVC 게시판</title>
<link rel="stylesheet" type="text/css"
	href="./shop_basket2/css/css_shop.css">
</head>
<body>

	<h1>
		${user_id}
		회원님의 게시글 삭제
	</h1>

	<div class="right-align">

		<c:if test="${sessionScope.admin == '1'}">
			<a href="./Adminview.lo">관리자</a> &nbsp;| &nbsp;
        </c:if>		
		<a href="./Main.lo">Home</a> &nbsp;| &nbsp; <a href="./BoardList.bo">게시판
			목록</a> &nbsp;| &nbsp; <a href="./Logout.lo">로그아웃</a>
	</div>

	<br>
	<br>
	<hr>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<form name="deleteForm" action="./BoardDeleteAction.bo?num=${param.num}<%-- <%=num%> --%>"
		method="post">
		<table border=1>
			<tr>
			<td style="font-family: 돋음; font-size: 12; width: 100px;" height="16">
					<div align="center" style="font-size: 18px; font-weight: bold;">글 비밀번호: &nbsp;&nbsp;</div>
				</td>
				<td style="width: 250px;"><input name="BOARD_PASS" type="password" style="width: 100%;"></td>
			</tr>
			

			
			
			<tr>
				<td colspan=2 align=center><a
					href="javascript:deleteForm.submit()">삭제</a> &nbsp;&nbsp; <a
					href="javascript:history.go(-1)">돌아가기</a></td>
			</tr>
		</table>
	</form>
</body>
</html>

 	</c:otherwise>
</c:choose>
 