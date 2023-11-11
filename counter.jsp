<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
  	int requestCounter = 0;
  if(application.getAttribute("requestCounter") != null){
	  requestCounter = (Integer) application.getAttribute("requestCounter");
  }
  requestCounter++;
  application.setAttribute("requestCounter", requestCounter);
  %>
  <h1>This is Counter</h1>
  <p>The Server will boot <%= requestCounter %> refresh</p>
</body>
</html>
   
   
   
   
   
