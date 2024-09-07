<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:choose>
    <c:when test="${empty admin}">

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
<link rel="stylesheet" type="text/css"
	href="./shop_basket2/css/css_member.css">
<title>Member_List</title>
</head>

<body>
	<h1>${memberinfo.id}���� �� ����
	</h1>

	<div class="right-align">
		<a href="./Main.lo">Home</a> &nbsp;| &nbsp;

	
		 <c:if test="${sessionScope.admin == '1'}">
        <a href="./Adminview.lo">������ ����</a> &nbsp;| &nbsp;
  		</c:if>
		<a href="./Logout.lo">�α׾ƿ�</a>
	</div>

	<br>
	<br>
	<hr>

	<table border="1">
		<tr style="font-weight: bold;">
			<td class="row">ID</td>
			<td class="row">�̸�</td>
			<td class="row">�������</td>
			<td class="row">�̸���</td>
			<td class="row">���ɺо�</td>
			<td class="row">�ڱ�Ұ�</td>
			<td class="row">�����ڿ���</td>

		</tr>

		<tr>

			<td>${memberinfo.id}</td>
			<td>${memberinfo.name}</td>
			<td>${memberinfo.birth}</td>
			<td>${memberinfo.email}</td>
			<td>${memberinfo.interstring}</td>
			<td>${memberinfo.intro}</td>
			<td>${memberinfo.admin == '1' ? '������' : '�Ϲ�ȸ��'}</td>
		</tr>

	</table>
</body>
</html>
</c:otherwise>
</c:choose>