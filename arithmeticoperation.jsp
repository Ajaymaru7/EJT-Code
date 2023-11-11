<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Arithmetic Operation</title>
</head>
<body>
<h1>Arithmetic Operation</h1>
<form method="post" action="arithmeticoperation.jsp">
Enter Operand1:<input type="text" name="operand1"><br>
Enter Operand2:<input type="text" name="operand2"><br><br>
<input type="submit" name="add" value="Add">
<input type="submit" name="subtract" value="Subtract">
<input type="submit" name="multiply" value="Multiply">
<input type="submit" name="divide" value="Divide">
</form>
<c:set var="operand1" value="${param.operand1}" />
<c:set var="operand2" value="${param.operand2}" />
<c:choose>
<c:when test="${not empty param.add}">
<p>Result of Addition: ${operand1 + operand2}</p>
</c:when>
<c:when test="${not empty param.subtract}">
<p>Result of Subtraction: ${operand1 - operand2}</p>
</c:when>
<c:when test="${not empty param.divide}">
<c:choose>
<c:when test="${operand2 == 0}">
<p>Cannot divide by zero!</p>
</c:when>
<c:otherwise>
<p>Result of Division: ${operand1 / operand2}</p>
</c:otherwise>
</c:choose>
</c:when>
</c:choose>
</body>
</html>