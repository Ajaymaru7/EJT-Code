<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Comparison Operators in JSP</h1>
<%-- Define two numbers --%>
<c:set var="num1" value="10"/>
<c:set var="num2" value="5"/>
<p>Number 1: ${num1}</p>
<p>Number 2: ${num2}</p>
<h2>Comparison Results:</h2>
<p>Equal (==): ${num1 == num2}</p>
<p>Not Equal (!=): ${num1 != num2}</p>
<p>Greater Than (>): ${num1 > num2}</p>
<p>Less Than (<): ${num1 < num2}</p>
<p>Greater Than or Equal (>=): ${num1 >= num2}</p>
<p>Less Than or Equal (<=): ${num1 <= num2}</p>
<h2>Conditional Statements:</h2>
<p>Is Number 1 even? ${num1 % 2 == 0}</p>
<p>Is Number 2 odd? ${num2 % 2 != 0}</p>
</body>
</html>