<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${empty user_id}">
		<script>
			alert("로그인 후 이용 가능합니다!");
			window.location.href = "./LoginForm";
		</script>
	</c:when>
	<c:otherwise>

		<html>
<head>
<title>MVC 게시판</title>
<link rel="stylesheet" type="text/css" href="./resources/css_shop.css">
<script type="text/javascript">
	// JSP에서 전달된 errorMessage가 존재하면 alert로 표시합니다.
	window.onload = function() {
		var errorMessage = "${errorMessage}";
		if (errorMessage) {
			alert(errorMessage);
		}
	}
</script>

</head>
<body>

	<h1>${user_id} 회원님의 게시글 삭제</h1>

	<div class="right-align">

		<c:if test="${sessionScope.admin == '1'}">
			<a href="./Adminview">관리자</a> &nbsp;| &nbsp;
        </c:if>
		<a href="./Main">Home</a> &nbsp;| &nbsp; <a href="./BoardList">게시판
			목록</a> &nbsp;| &nbsp; <a href="./Logout">로그아웃</a>
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

	<form name="deleteForm"
		action="./BoardDeleteAction?num=${param.num}<%-- <%=num%> --%>"
		method="post">
		<table border=1>
			<tr>
				<td style="font-family: 돋음; font-size: 12; width: 100px;"
					height="16">
					<div align="center" style="font-size: 18px; font-weight: bold;">글
						비밀번호: &nbsp;&nbsp;</div>
				</td>
				<td style="width: 250px;"><input name="BOARD_PASS"
					type="password" style="width: 100%;"></td>
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
