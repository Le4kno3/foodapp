<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	The new user is created successfully. You can now login using it. Redirecting to Home...
	<% response.setHeader("Refresh", "3;url='index'"); %>
</body>
</html>