<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Shopping</title>
<link rel="stylesheet" type="text/css" href="./shop_basket2/css/css_shop.css">
<script src="./shop_basket2/js_shopcount.js"></script>
</head>

  
<c:choose>
    <c:when test="${empty user_id}">

<script>
	alert("�α��� �� �̿� �����մϴ�!");	
	window.location.href = "./LoginForm.lo";
</script>
 </c:when>

 <c:otherwise>
 
<body>

	<h1>
		${user_id}
		ȸ������ ���� ���
	</h1>

	<div class="right-align">
	
	<a href="./Main.lo">Home</a> &nbsp;| &nbsp;

    <c:if test="${sessionScope.admin == '1'}">
        <a href="./Adminview.lo">������</a> &nbsp;| &nbsp;
    </c:if>
		<a href="./basketview.ba">��ٱ���</a> &nbsp;| &nbsp;
		<a href="./OrderList.ba">���ų���</a> &nbsp;| &nbsp;
        <a href="./Logout.lo">�α׾ƿ�</a>
	</div>

	<br>
	<br>
	<hr>

	<form id="orderForm" action="./OrderAction.ba" method="post">
		<table border="1">
			<tr>
				<td colspan="2" class="shopping-list-title">&nbsp; �ǰ��� ���� ����Ʈ
					&nbsp;</td>
			</tr>

			<tr>
				<td>�׸�</td>
				<td>�ֹ�</td>
			</tr>

			<tr>
				<td><img src="/COS0503/upload/egg.jpg" alt="egg"><br>
					���</td>
				<td>
					<button type="button" onclick="decreaseQuantity('egg')">-</button>
					<input type="text" id="egg" name="egg" value=0
					style="width: 30px; text-align: center;">
					<button type="button" onclick="increaseQuantity('egg')">+</button>
				</td>
			</tr>

			<tr>
				<td><img src="/COS0503/upload/dak.jpg" alt="dak"><br>
					�߰�����</td>
				<td>
					<button type="button" onclick="decreaseQuantity('dak')">-</button>
					<input type="text" id="dak" name="dak" value=0
					style="width: 30px; text-align: center;">
					<button type="button" onclick="increaseQuantity('dak')">+</button>
				</td>
			</tr>

			<tr>
				<td><img src="/COS0503/upload/banana.jpg" alt="banana"><br>
					�ٳ���</td>
				<td>
					<button type="button" onclick="decreaseQuantity('banana')">-</button>
					<input type="text" id="banana" name="banana" value=0
					style="width: 30px; text-align: center;">
					<button type="button" onclick="increaseQuantity('banana')">+</button>
				</td>
			</tr>

			<tr>
				<td><img src="/COS0503/upload/tomato.jpg" alt="tomato"><br>
					�丶��</td>
				<td>
					<button type="button" onclick="decreaseQuantity('tomato')">-</button>
					<input type="text" id="tomato" name="tomato" value=0
					style="width: 30px; text-align: center;">
					<button type="button" onclick="increaseQuantity('tomato')">+</button>
				</td>

			</tr>
		</table>

		<div class="center-align">
			<input type="submit" name="order" value="��ٱ��� ���" class="button"></input>
		</div>

	</form>

</body>
</html>

</c:otherwise>
</c:choose>