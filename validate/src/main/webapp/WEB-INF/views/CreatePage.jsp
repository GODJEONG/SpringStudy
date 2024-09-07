<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
CreatePage.jsp
</h1>

	<%
	String context = request.getContextPath();
	%>


   <form action="<%=context%>/student3" method="post">
 
        <label for="name">이름 : </label>
        <input type="text" id="name" name="name" value="${student.name}">
        <br>
        <label for="id">아이디 : </label>
        <input type="text" id="id" name="id" value="${student.id}">
        <br>
        <input type="submit" value="전송">
    </form>
</body>
</html>
