<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="" method="post" name="f1">
EnterFirst Number:<input type="number" name="a"><br>
EnterSecond Number:<input type="number" name="b"><br>
<br>
<input type="submit" value="Sum" name="sum">
</form>
<%
 String inp1 = request.getParameter("a");
 String inp2 = request.getParameter("b");
 
 if((inp1 !=null) && (inp2 != null)){
	 int px=Integer.parseInt(inp1);
	 int py=Integer.parseInt(inp2);
	 
	 int sum = px+py;
	 out.println("Sum ="+ sum);
 }
%>
      </body>
      </html>
 
   
   