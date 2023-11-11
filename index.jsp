<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bind The Name</title>
</head>
<body>
	<form action="#">  
		<input type="text" name="uname">
		<input type="submit" value="Submit">
	</form>
	<p>Welcome  <%= request.getParameter("uname") %></p>
</body>
</html> 