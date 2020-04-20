<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Setting Property</title>
</head>
<body>

<jsp:useBean id="user12345" class="com.beans.demo.BeansExample" scope="session"></jsp:useBean>

Old First Name : <jsp:getProperty property="firstName" name="user12345"/><br/>
Old Last Name : <jsp:getProperty property="lastName" name="user12345"/><br/>

<jsp:setProperty property="firstName" name="user12345" value="Sumit"/>
<jsp:setProperty property="lastName" name="user12345" value="Sharma"/>
Value is SET.<br/>

<%
	request.getRequestDispatcher("getProperty.jsp").forward(request, response);
%> 
</body>
</html>