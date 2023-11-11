<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BG Color</title>
</head>
<body>
<form action="bgcolor.jsp" method="post">
Enter Color name:<input type="text" name="colorname">
<input type="submit" value="Submit">
</form>
<%
String bgColor = request.getParameter("colorname");
if(bgColor == null || bgColor.isEmpty()){
	bgColor = "red";
}
%>
<div style="background-color: <%=bgColor%>:">
<h1>Background Color page</h1>
<p>This is a Sample Page with a customizable background color</p>
</div>
</body>
</html>