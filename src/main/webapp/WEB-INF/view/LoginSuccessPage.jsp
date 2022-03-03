<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	The supplied username and password is correct. Login Successful. Redirecting to Home...
	<% response.setHeader("Refresh", "3;url='index'"); %>
</body>
</html>