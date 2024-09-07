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

	<h1>
		${user_id}
		ȸ������ �ֹ�����
	</h1>

	<div class="right-align">
		<a href="./Main.lo">Home</a> &nbsp;| &nbsp;


		<c:if test="${sessionScope.admin == '1'}">
			<a href="./Adminview.lo">������</a> &nbsp;| &nbsp;
        </c:if>
		
		<a href="./Shop.lo">�����Ϸ� ����</a> &nbsp;| &nbsp; <a href="./Logout.lo">�α׾ƿ�</a>
	</div>

	<br>
	<br>
	<hr>

	<table border="1">
		<tr>
			<td colspan="5">&nbsp; �� �ֹ����� &nbsp;</td>
		</tr>

		<tr>
			<td>�ֹ�����</td>
			<td>ID</td>
			<td>�ֹ�ǰ��</td>
			<td>�ֹ�����</td>
		</tr>
		

		<c:forEach var="order" items="${orderlist}">
    	<tr>
        <td>${order.orderdate}</td>
        <td>${order.id}</td>
        <td>${order.food}</td>
        <td>${order.food_cnt}</td>
    	</tr>
</c:forEach>

	</table>

</body>
</html>

	</c:otherwise>
</c:choose>