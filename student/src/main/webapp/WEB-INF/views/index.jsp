<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
	<title>Form</title>
</head>
<body>

	<%
	String context = request.getContextPath();
	%>

   <form action="<%=context%>/studentConfirm" method="get">
 
        <label for="name">이름 : </label>
        <input type="text" id="name" name="name">
        <br>
        <label for="age">나이 : </label>
        <input type="text" id="age" name="age">
        <br>
        <label for="gradeNum">학년 : </label>
        <input type="text" id="gradeNum" name="gradeNum">
        <br>
        <label for="classNum">반 : </label>
        <input type="text" id="classNum" name="classNum">
        <br>
        <input type="submit" value="전송">
    </form>

</body>
</html>
