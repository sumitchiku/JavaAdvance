<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demo JSP</title>
</head>
<body>
Demo JSP
<%
	//request.getRequestDispatcher("Forward.jsp").forward(request, response);
	out.println("forward request from current file to request file");
	response.sendRedirect("Redirect.jsp");
	out.println("Here we can send URL/JSP file");

%>
</body>
</html>