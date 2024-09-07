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
<link rel="stylesheet" type="text/css" href="./resources/css_shop.css">
<script type="text/javascript">
	// JSP���� ���޵� errorMessage�� �����ϸ� alert�� ǥ���մϴ�.
	window.onload = function() {
		var errorMessage = "${errorMessage}";
		if (errorMessage) {
			alert(errorMessage);
		}
	}
</script>

</head>
<body>

	<h1>${user_id} ȸ������ �Խñ� ����</h1>

	<div class="right-align">

		<c:if test="${sessionScope.admin == '1'}">
			<a href="./Adminview">������</a> &nbsp;| &nbsp;
        </c:if>
		<a href="./Main">Home</a> &nbsp;| &nbsp; <a href="./BoardList">�Խ���
			���</a> &nbsp;| &nbsp; <a href="./Logout">�α׾ƿ�</a>
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
				<td style="font-family: ����; font-size: 12; width: 100px;"
					height="16">
					<div align="center" style="font-size: 18px; font-weight: bold;">��
						��й�ȣ: &nbsp;&nbsp;</div>
				</td>
				<td style="width: 250px;"><input name="BOARD_PASS"
					type="password" style="width: 100%;"></td>
			</tr>




			<tr>
				<td colspan=2 align=center><a
					href="javascript:deleteForm.submit()">����</a> &nbsp;&nbsp; <a
					href="javascript:history.go(-1)">���ư���</a></td>
			</tr>
		</table>
	</form>
</body>
		</html>

	</c:otherwise>
</c:choose>
