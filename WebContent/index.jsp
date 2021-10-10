<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Default Page </title>
</head>
<body>
	<%
	// Redirects To Main URL eg : http://localhost:8085/MobileComparison/DashBoard
	
	response.sendRedirect(request.getContextPath()+"/DashBoard");
	
	%>
</body>
</html>