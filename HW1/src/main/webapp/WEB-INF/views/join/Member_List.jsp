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
<title>Member_List</title>
<link rel="stylesheet" type="text/css"
	href="./resources/css_member.css">

</head>

<body>

	<h1>��ü ȸ�� ����</h1>

	<h1>${user_id}</h1>



	<div class="right-align">
		<a href="./Main">Home</a> &nbsp;| &nbsp;

		<c:if test="${sessionScope.admin == '1'}">
        <a href="./Adminview">������ ����</a> &nbsp;| &nbsp;
  		</c:if>
		<a href="./Logout">�α׾ƿ�</a>
	</div>

	<br>
	<br>
	<hr>

	<table border="1">
		<tr style="font-weight: bold;">
			<td class="row">ID</td>
			<td class="row">�̸�</td>
			<td class="row">�� ����</td>
			<td class="row">ȸ�� ����</td>
			<td class="row">�����ڿ���</td>
		</tr>

		<c:forEach var="member" items="${member_all}">
  		<tr>
        <td>${member.id}</td>
        <td>${member.name}</td>
        <td><a href="./Infoview?id=${member.id}">�ڼ��� ����</a></td>
        <td><a href="./MemberDel?id=${member.id}">����</a></td>
        <td>${member.admin == '1' ? '������' : '�Ϲ�ȸ��'}</td>
    	</tr>
		</c:forEach>
	</table>
</body>
</html>


</c:otherwise>
</c:choose>