<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
	<title>Form</title>
</head>
<body>

   <form action="./student" method="get">
 
        <label for="studentId">student id : </label>
        <input type="text" id="id" name="id">
        <br>
        <input type="submit" value="전송">
    </form>

</body>
</html>
