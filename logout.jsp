<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
<%
session.removeAttribute("uname");
session.invalidate();
%>
<h2>You have been logged out!</h2>
<a href=login.jsp>Login Again...</a>
</body>
</html>