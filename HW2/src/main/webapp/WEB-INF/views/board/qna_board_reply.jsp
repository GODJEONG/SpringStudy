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
<script language="javascript">
	function replyboard() {
		boardform.submit();
	}
</script>
<link rel="stylesheet" type="text/css"
	href="./resources/css_shop.css">
</head>
<body>
		<h1>
		${user_id }
		회원님의 답글 달기
	</h1>

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
	
	<!-- 게시판 답변 -->
	<form action="./BoardReplyAction" method="post" name="boardform">
		<input type="hidden" name="BOARD_NUM"
			value="${boarddata.BOARD_NUM }<%-- <%=board.getBOARD_NUM()%> --%>"> <input type="hidden"
			name="BOARD_RE_REF" value="${boarddata.BOARD_RE_REF }<%-- <%=board.getBOARD_RE_REF()%> --%>"> <input
			type="hidden" name="BOARD_RE_LEV"
			value="${boarddata.BOARD_RE_LEV }<%-- <%=board.getBOARD_RE_LEV()%> --%>"> <input type="hidden"
			name="BOARD_RE_SEQ" value="${boarddata.BOARD_RE_SEQ }<%-- <%=board.getBOARD_RE_SEQ()%> --%>">

		<table>
			<tr align="center" valign="middle">
				<td colspan="5"><div align="center"
						style="font-size: 30px; font-weight: bold;">답글 달기</div></td>
			</tr>
			<tr>
				<td style="font-family: 돋음; font-size: 12; width: 100px;" height="16">
					<div align="center" style="font-size: 18px; font-weight: bold;">글쓴이&nbsp;&nbsp;</div>
				</td>
				<td style="width: 250px;"><input name="BOARD_NAME" type="text" value="${user_id }" style="width: 100%;" /></td>
			</tr>
			<tr>
				<td style="font-family: 돋음; font-size: 12; width: 100px;" height="16">
					<div align="center" style="font-size: 18px; font-weight: bold;">제 목&nbsp;&nbsp;</div>
				</td>
				<td style="width: 250px;"><input name="BOARD_SUBJECT" type="text" size="50"
					maxlength="100" value="Re: ${boarddata.BOARD_SUBJECT } <%-- <%=board.getBOARD_SUBJECT()%> --%>" style="width: 100%;" /></td>
			</tr>
			<tr>
				<td style="font-family: 돋음; font-size: 12; width: 100px;" height="16">
					<div align="center" style="font-size: 18px; font-weight: bold;">내 용&nbsp;&nbsp;</div>
				</td>
				<td style="width: 250px;"><textarea name="BOARD_CONTENT" cols="67" rows="15" style="width: 100%;"></textarea>
				</td>
			</tr>
			<tr>
				<td style="font-family: 돋음; font-size: 12; width: 100px;" height="16">
					<div align="center" style="font-size: 18px; font-weight: bold;">비밀번호&nbsp;&nbsp;</div>
				</td>
				<td style="width: 250px;"><input name="BOARD_PASS" type="password" style="width: 100%;"></td>
			</tr>

			<tr bgcolor="cccccc">
				<td colspan="2" style="height: 1px;"></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>

			<tr align="center" valign="middle">
				<td colspan="5"><a href="javascript:replyboard()">[등록]</a>&nbsp;&nbsp;
					<a href="javascript:history.go(-1)">[뒤로]</a></td>
			</tr>
		</table>
	</form>
	<!-- 게시판 답변 -->
</body>
</html>

 	</c:otherwise>
</c:choose>
 
