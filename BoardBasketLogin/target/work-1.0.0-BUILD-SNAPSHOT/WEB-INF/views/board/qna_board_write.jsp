<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${empty user_id}">
		<script>
			alert("�α��� �� �̿� �����մϴ�!");
			window.location.href = "../LoginForm.lo";
		</script>
	</c:when>
	<c:otherwise>
<html>
<head>
<title>MVC �Խ���</title>
<script language="javascript">
	function addboard() {
		boardform.submit();
	}
</script>
<link rel="stylesheet" type="text/css"
	href="./shop_basket2/css/css_shop.css">
</head>
<body>
	<h1>
		${user_id }
		ȸ������ �۾���
	</h1>

	<div class="right-align">
		<a href="./Main.lo">Home</a> &nbsp;| &nbsp;

		<c:if test="${sessionScope.admin == '1'}">
			<a href="./Adminview.lo">������</a> &nbsp;| &nbsp;
        </c:if>		
		<a href="./Logout.lo">�α׾ƿ�</a>
	</div>

	<br>
	<br>
	<hr>
	<br>
	<br>


	<!-- �Խ��� ��� -->
	<form action="./BoardAddAction.bo" method="post"
		enctype="multipart/form-data" name="boardform">
		<table>
			<tr align="center" valign="middle">
				<td colspan="5"><div align="center" style="font-size: 30px; font-weight: bold;">�Խ���</div></td>
			</tr>
			<tr>
				<td style="font-family: ����; font-size: 12; width: 150px;" height="16">
					<div align="center" style="font-size: 18px; font-weight: bold;">�ۼ���&nbsp;&nbsp;</div>
				</td>
				<td style="width: 250px;"><input name="BOARD_NAME" id="name" type="text" size="10"
					maxlength="10" value=${user_id } style="width: 100%;"/></td>
			</tr>
			<tr>
				<td style="font-family: ����; font-size: 12" height="16">
					<div align="center" style="font-size: 18px; font-weight: bold;">��й�ȣ&nbsp;&nbsp;</div>
				</td>
				<td><input name="BOARD_PASS" type="password" size="10"
					maxlength="10" value="" style="width: 100%;" /></td>
			</tr>
			<tr>
				<td style="font-family: ����; font-size: 12" height="16">
					<div align="center" style="font-size: 18px; font-weight: bold;">�� ��&nbsp;&nbsp;</div>
				</td>
				<td><input name="BOARD_SUBJECT" type="text" size="50"
					maxlength="100" value="" style="width: 100%;" /></td>
			</tr>
			<tr>
				<td style="font-family: ����; font-size: 12">
					<div align="center" style="font-size: 18px; font-weight: bold;">�� ��&nbsp;&nbsp;</div>
				</td>
				<td><textarea name="BOARD_CONTENT" cols="67" rows="15" style="width: 100%;"></textarea>
				</td>
			</tr>
			<tr>
				<td style="font-family: ����; font-size: 12">
					<div align="center" style="font-size: 18px; font-weight: bold;">���� ÷��&nbsp;&nbsp;</div>
				</td>
				<td><input name="BOARD_FILE" type="file" /></td>
			</tr>
			<tr bgcolor="cccccc">
				<td colspan="2" style="height: 1px;"></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr align="center" valign="middle">
				<td colspan="5"><a href="javascript:addboard()">[���]</a>&nbsp;&nbsp;
					<a href="javascript:history.go(-1)">[�ڷ�]</a></td>
			</tr>
		</table>
	</form>
	<!-- �Խ��� ��� -->
</body>
</html>

 	</c:otherwise>
</c:choose>
 