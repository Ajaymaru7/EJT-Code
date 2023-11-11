<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Login</title>
	</head>
	<body>
		<div align=center> 
			<h1>Login</h1>
		</div>
		<form action=LoginServlet method="post"></br>
			<table align=center>
				<tr>
					<td>Enter Username:</td>
					<td><input type=text name=txtname required></td>
				</tr>
				<tr>
					<td>Enter Password:</td>
					<td><input type=password name=pwd required></td>
				</tr>
				<tr>
					<td align=center><input type=submit name=sub value=Submit></td>
				</tr>
			</table>
		</form>
	</body>
</html>