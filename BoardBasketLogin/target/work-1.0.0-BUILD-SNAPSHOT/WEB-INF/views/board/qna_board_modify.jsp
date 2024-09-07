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
<script type="text/javascript">
	function modifyboard() {
		modifyform.submit();
	}
</script>
<link rel="stylesheet" type="text/css"
	href="./shop_basket2/css/css_shop.css">
</head>

<body>
	<h1>
		${user_id }
		회원님의 게시글 수정
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

	<!-- 게시판 수정 -->
	<form action="./BoardModifyAction.bo" method="post" name="modifyform">
		<input type="hidden" name="BOARD_NUM" value=${boarddata.BOARD_NUM } <%-- <%=board.getBOARD_NUM()%> --%> >
		<table>
			<tr align="center" valign="middle">
				<td colspan="5"><div align="center"
						style="font-size: 30px; font-weight: bold;">게시글 수정</div></td>
			</tr>
			<tr>
					<td style="font-family: 돋음; font-size: 12; width: 100px;" height="16">
					<div align="center" style="font-size: 18px; font-weight: bold;">제목&nbsp;&nbsp;</div>
				</td>

				<td style="width: 250px;"><input name="BOARD_SUBJECT"
					type="text" size="50" maxlength="100"
					value="${boarddata.BOARD_SUBJECT } <%-- <%=board.getBOARD_SUBJECT()%> --%>" style="width: 100%;" /></td>


			</tr>
			<tr>
				<td style="font-family: 돋음; font-size: 12">
					<div align="center" style="font-size: 18px; font-weight: bold;">내
						용&nbsp;&nbsp;</div>
				</td>
				<td style="width: 250px;"><textarea name="BOARD_CONTENT" cols="67" rows="15" style="width: 100%;">
			<%-- <%=board.getBOARD_CONTENT()%> --%> ${boarddata.BOARD_CONTENT }
			</textarea></td>
			</tr>
	<%-- 	<%
			if (!(board.getBOARD_FILE() == null)) {
			%>
	 --%>	
	 		<c:if test="${not empty boarddata.BOARD_FILE}">
    			
			<tr>
				<td style="font-family: 돋음; font-size: 12">
					<div align="center" style="font-size: 18px; font-weight: bold;">파일
						첨부&nbsp;&nbsp;</div>
				</td>
				<td>&nbsp;&nbsp; <%-- <%=board.getBOARD_FILE()%> --%> ${boarddata.BOARD_FILE }
				</td>
			</tr>
			<%--
			 <%
			}
			%>
			--%>
			</c:if>
			
			<tr>
				<td height="16" style="font-family: 돋음; font-size: 12">
					<div align="center" style="font-size: 18px; font-weight: bold;">비밀번호&nbsp;&nbsp;</div>
				</td>
				<td><input name="BOARD_PASS" type="password" style="width: 100%;"></td>
			</tr>

			<tr bgcolor="cccccc">
				<td colspan="2" style="height: 1px;"></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>

			<tr align="center" valign="middle">
				<td colspan="5"><font size=2> <a
						href="javascript:modifyboard()">[수정]</a>&nbsp;&nbsp; <a
						href="javascript:history.go(-1)">[뒤로]</a>&nbsp;&nbsp;
				</font></td>
			</tr>
		</table>
	</form>
	<!-- 게시판 수정 -->
</body>
</html>

 	</c:otherwise>
</c:choose>
 