<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	이름: ${member.name} <br>
	아이디: ${member.id} <br>
	비밀번호: ${member.pw} <br>
	메일: ${member.email} <br>
</body>
</html>
