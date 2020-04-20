<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<%
	out.println("This is home page<br/>");
	out.println("if we run application index.jsp is fire first");

%>
<br/>
<a href="<%= request.getContextPath()%>/Controller?page=about">About</a>
<a href="<%= request.getContextPath()%>/Controller?page=login">Login</a>
<a href="<%= request.getContextPath()%>/Controller?page=signin">SignIn</a>
</body>
</html>