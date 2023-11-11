<!DOCTYPE html>
<html>
<head>
    <title>Multiplication Table</title>
</head>
<body>
    <h1>Multiplication Table</h1>
    <form action="SixthTableServlet.java" method="post">
        Enter a number: <input type="text" name="number">
        <input type="submit" value="Generate Table">
    </form>
    <hr>
    <% if (request.getAttribute("table") != null) { %>
        <h2>Multiplication Table for <%= request.getAttribute("table") %></h2>
    <% } %>
</body>
</html>
