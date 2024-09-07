<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	이름: ${studentinfo.name} <br>
	나이: ${studentinfo.age} <br>
	학년: ${student.gradeNum} <br>
	반: ${classNum} <br>
</body>
</html>
