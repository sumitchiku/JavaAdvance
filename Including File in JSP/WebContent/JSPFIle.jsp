<%@page import="java.util.Date,com.includefile.UserDefiend"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reading File with JSP</title>
</head>
<body>
	<!-- Adding static content -->
	<%@ include file="abc.txt"%>
	<br /> above is code including files in JSP statically
	<br />
	<!-- Adding dynamic contet -->
	<jsp:include page="xyz.txt"></jsp:include>
	<br /> above is code includes files in JSP dynamically
	<br />
	<br />
	<br /> now we will see import class
	<br />
	<br />
	<%=new Date()%>
	<br /> now we will import user defined class
	<br />
	<% out.print("calling Demo Method : " + new UserDefiend().Demo());	%>
	<br />
</body>
</html>