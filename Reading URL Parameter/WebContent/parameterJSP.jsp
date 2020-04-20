<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Parameter</title>
</head>
<body>
	<%
		out.print(" fire below URL <br/> http://localhost:8080/Reading_URL_Parameter/parameterJSP.jsp?getValue1=testingParam&getValue2=fetchingParam<br/><br/>");
		out.print("Value of First Parameter : " + request.getParameter("getValue1") + "<br/>"); // give value of URL
		out.print("Value of Second Parameter : " + request.getParameter("getValue2") + "<br/>");
	%>
</body>
</html>