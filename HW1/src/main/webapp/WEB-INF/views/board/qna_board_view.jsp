<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${empty user_id}">
		<script>
			alert("�α��� �� �̿� �����մϴ�!");
			window.location.href = "./LoginForm";
		</script>
	</c:when>
	<c:otherwise>

<html>
<head>
<title>MVC �Խ���</title>
<link rel="stylesheet" type="text/css"
	href="./resources/css_shop.css">
</head>

<body>
	<h1>
		${user_id }
		ȸ������ �Խ���
	</h1>

	<div class="right-align">


		<c:if test="${sessionScope.admin == '1'}">
			<a href="./Adminview">������</a> &nbsp;| &nbsp;
        </c:if>
		<a href="./Main">Home</a> &nbsp;| &nbsp;
		 <a href="./BoardList">�Խ��� ���</a> &nbsp;| &nbsp; 
		 <a href="./Logout">�α׾ƿ�</a>
	</div>

	<br>
	<br>
	<hr>
	<br>
	<br>

	<!-- �Խ��� ���� -->
	<table cellpadding="0" cellspacing="0">
		<tr align="center" valign="middle">
			<td colspan="5">
				<div align="center" style="font-size: 30px; font-weight: bold;">�Խ���&nbsp;&nbsp;</div>
			</td>
		</tr>

		<tr>
			<td style="font-family: ����; font-size: 12" height="16" width="100">
				<div align="center" style="font-size: 18px; font-weight: bold;">��
					��&nbsp;&nbsp;</div>
			</td>

			<td style="font-family: ����; font-size: 24"><%-- <%=board.getBOARD_SUBJECT()%> --%> ${boarddata.BOARD_SUBJECT }
			</td>
		</tr>

		<tr bgcolor="cccccc">
			<td colspan="2" style="height: 1px;"></td>
		</tr>

		<tr>
			<td style="font-family: ����; font-size: 12">
				<div align="center" style="font-size: 18px; font-weight: bold;">��
					��</div>
			</td>
			<td style="font-family: ����; font-size: 24">
				<table border=0 width=1500 height=300 style="table-layout: fixed">
					<tr>
						<td valign=top style="font-family: ����; font-size: 24"><%-- <%=board.getBOARD_CONTENT()%> --%> ${boarddata.BOARD_CONTENT }
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td style="font-family: ����; font-size: 12">
				<div align="center" style="font-size: 18px; font-weight: bold;">÷������</div>
			</td>
			<td style="font-family: ����; font-size: 12">

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
					href="./BoardReply?num=${boarddata.BOARD_NUM }<%-- <%=board.getBOARD_NUM()%> --%>"> [�亯] </a>&nbsp;&nbsp;
					<a href="./BoardModify?num=${boarddata.BOARD_NUM }<%-- <%=board.getBOARD_NUM()%> --%>"> [����]
				</a>&nbsp;&nbsp; <a
					href="./BoardDelete?num=${boarddata.BOARD_NUM }<%-- <%=board.getBOARD_NUM()%> --%>"> [����] </a>&nbsp;&nbsp;
					<a href="./BoardList">[���]</a>&nbsp;&nbsp;
			</font></td>
		</tr>
	</table>
	<!-- �Խ��� ���� -->
</body>
</html>

 	</c:otherwise>
</c:choose>
 