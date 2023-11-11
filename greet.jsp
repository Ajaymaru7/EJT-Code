<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Random number between 1 to 10</h1>
 <% 
 	int randomNumber= (int) (Math.random()*10)+1;
 %>
 <p>
 <%= randomNumber %>
 </p>
</body>
</html>