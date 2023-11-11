<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome User</title>
</head>
<body>
<form action="" method="post">
<lable for="param1">Parameter1:</lable>
<input type="text" name="username"><br>
<input type="submit" value="Submit">
</form>
<% 
	String uname = request.getParameter("username");
	if((uname != null) || (uname =="Ajay")){
		out.println("Welcome");
	} else{
		out.println("Hello World");
	}
%>

</body>
</html>