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
<link rel="stylesheet" type="text/css"
	href="./resources/css_shop.css">
</head>

<body>
	<h1>
		${user_id }
		회원님의 게시판
	</h1>

	<div class="right-align">


		<c:if test="${sessionScope.admin == '1'}">
			<a href="./Adminview">관리자</a> &nbsp;| &nbsp;
        </c:if>
		<a href="./Main">Home</a> &nbsp;| &nbsp;
		 <a href="./BoardList">게시판 목록</a> &nbsp;| &nbsp; 
		 <a href="./Logout">로그아웃</a>
	</div>

	<br>
	<br>
	<hr>
	<br>
	<br>

	<!-- 게시판 수정 -->
	<table cellpadding="0" cellspacing="0">
		<tr align="center" valign="middle">
			<td colspan="5">
				<div align="center" style="font-size: 30px; font-weight: bold;">게시판&nbsp;&nbsp;</div>
			</td>
		</tr>

		<tr>
			<td style="font-family: 돋음; font-size: 12" height="16" width="100">
				<div align="center" style="font-size: 18px; font-weight: bold;">제
					목&nbsp;&nbsp;</div>
			</td>

			<td style="font-family: 돋음; font-size: 24"><%-- <%=board.getBOARD_SUBJECT()%> --%> ${boarddata.BOARD_SUBJECT }
			</td>
		</tr>

		<tr bgcolor="cccccc">
			<td colspan="2" style="height: 1px;"></td>
		</tr>

		<tr>
			<td style="font-family: 돋음; font-size: 12">
				<div align="center" style="font-size: 18px; font-weight: bold;">내
					용</div>
			</td>
			<td style="font-family: 돋음; font-size: 24">
				<table border=0 width=1500 height=300 style="table-layout: fixed">
					<tr>
						<td valign=top style="font-family: 돋음; font-size: 24"><%-- <%=board.getBOARD_CONTENT()%> --%> ${boarddata.BOARD_CONTENT }
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td style="font-family: 돋음; font-size: 12">
				<div align="center" style="font-size: 18px; font-weight: bold;">첨부파일</div>
			</td>
			<td style="font-family: 돋음; font-size: 12">

		<c:if test="${not empty boarddata.BOARD_FILE}">
    		<a href="./boardupload/${boarddata.BOARD_FILE}">${boarddata.BOARD_FILE}</a>
		</c:if>
			</td>
		</tr>

		<tr bgcolor="cccccc">
			<td colspan="2" style="height: 1px;"></td>
		</tr>
		<tr>
			<td colspan="2">&nbsp;</td>
		</tr>

		<tr align="center" valign="middle">
			<td colspan="5"><font size=2> <a
					href="./BoardReply?num=${boarddata.BOARD_NUM }<%-- <%=board.getBOARD_NUM()%> --%>"> [답변] </a>&nbsp;&nbsp;
					<a href="./BoardModify?num=${boarddata.BOARD_NUM }<%-- <%=board.getBOARD_NUM()%> --%>"> [수정]
				</a>&nbsp;&nbsp; <a
					href="./BoardDelete?num=${boarddata.BOARD_NUM }<%-- <%=board.getBOARD_NUM()%> --%>"> [삭제] </a>&nbsp;&nbsp;
					<a href="./BoardList">[목록]</a>&nbsp;&nbsp;
			</font></td>
		</tr>
	</table>
	<!-- 게시판 수정 -->
</body>
</html>

 	</c:otherwise>
</c:choose>
 