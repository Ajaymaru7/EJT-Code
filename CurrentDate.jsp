<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Current Date</title>
</head>
<body>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
String date = sdf.format(new Date());
%>
<p>Hello! The Time is: <%= date %></p>
</body>
</html>