<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<c:choose>
	<c:when test="${empty user_id}">
		<script>
			alert("�α��� �� �̿� �����մϴ�!");
			window.location.href = "./LoginForm.lo";
		</script>
	</c:when>
	<c:otherwise>

		<!DOCTYPE html>
		<html>
<head>
<meta charset="EUC-KR">
<title>Basket</title>
<link rel="stylesheet" type="text/css"
	href="./shop_basket2/css/css_basket.css">

</head>
<body>

	<h1>${user_id} ȸ������ ��ٱ���</h1>

	<div class="right-align">
		<a href="./Main.lo">Home</a> &nbsp;| &nbsp;
	
		<c:if test="${sessionScope.admin == '1'}">
			<a href="./Adminview.lo">������</a> &nbsp;| &nbsp;
        </c:if>
		<a href="./Shop.lo">�����Ϸ� ����</a> &nbsp;| &nbsp; <a
			href="./OrderList.ba">���ų���</a> &nbsp;| &nbsp; <a ref="./Logout.lo">�α׾ƿ�</a>
	</div>

	<br>
	<br>
	<hr>

	<table border="1">
		<tr>
			<td colspan="3">&nbsp; �� ��ٱ��� &nbsp;</td>
		</tr>

		<tr>
			<td>�׸�</td>
			<td>�ֹ�</td>
			<td>��������(-1�� ����)</td>
		</tr>


		<c:if test="${not empty sessionScope.basketMap}">
			<c:forEach var="entry" items="${sessionScope.basketMap}">
				<tr>

	
					<td><img src="/COS0503/upload/${entry.key}.jpg"> <br>
						${entry.key}</td>
					<td id="${entry.key}">${entry.value}</td>
					<td>
						<form action="./RemoveAction.ba" method="post">
							<input type="hidden" name="itemName" value="${entry.key}">
							<button type="submit">-</button>
						</form>
					</td>

				</tr>
	
			</c:forEach>
		</c:if>
	</table>

	<div class="center-align">
		<a href="./OrderInsert.ba" class="button">�ֹ��ϱ�</a>
	</div>

	</body>
</html>


	</c:otherwise>
</c:choose>