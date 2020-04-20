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

<form action="getSessionProperty.jsp">
First Name : <input type="text" name="firstName" value='<jsp:getProperty property="firstName" name="user12345"/>'><br/>
Last Name : <input type="text" name="lastName" value='<jsp:getProperty property="lastName" name="user12345"/>'><br/>
<input type="submit" value="Submit">

</form>
</body>
</html>