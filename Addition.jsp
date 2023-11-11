<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition of Two Number</title>
</head>
<body>
<form action="Addition.jsp" method="post" name="f1">
Enter First Number:<input type="number" name="n1"><br>
Enter Second Number:<input type="number" name="n2"><br>
<br>
<input type="submit" value="Sum">
<input type="submit" value="Sub">
</form>
<%
String inp1= request.getParameter("n1");
String inp2 = request.getParameter("n2");
if((inp1 != null) && (inp2 != null)){
	int px = Integer.parseInt(inp1);
	int py = Integer.parseInt(inp2);
	
	int sum = px+py;
	
	out.println("Sum = "+sum);
	
}
%>
</body>
</html>