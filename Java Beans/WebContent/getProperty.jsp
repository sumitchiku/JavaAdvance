<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Getting Property</title>
</head>
<body>
<jsp:useBean id="user12345" class="com.beans.demo.BeansExample" scope="session"></jsp:useBean>

First Name : <jsp:getProperty property="firstName" name="user12345"/><br/>
Last Name : <jsp:getProperty property="lastName" name="user12345"/>

</body>
</html>