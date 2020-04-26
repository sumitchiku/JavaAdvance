<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2>We will formate Date</h2>

	<c:set var="date" value="<%=new java.util.Date()%>" />
	<c:out value="${date }"></c:out><br/>
	
	<br/>Time: <strong><fmt:formatDate type="time" value="${date}" /></strong>
	
	<br/>Date: <strong><fmt:formatDate type="date" value="${date}" /></strong>
	
	<br/>Date and Time: <strong><fmt:formatDate type="both" value="${date}" /></strong>
	
	<br/>Date and Time: <strong><fmt:formatDate type="both" value="${date}" timeZone="GMT -1" /></strong>
	
	<br/>
	
	<fmt:setLocale value="en_UK"/>
	
	<br/>Date and Time: <strong><fmt:formatDate type="both" value="${date}" timeZone="GMT -1" /></strong>

	<hr/>
	
	<h2>Now we we will formate a big number using formatter </h2>
	
	<c:set var="someNumber" value="654321.123456"/>
	
	<b><c:out value="${someNumber}" /></b> 
	<br/><br/>
	
	Max Integer Digits : <fmt:formatNumber type="number" maxIntegerDigits="3" value="${someNumber}" /><br/>
	
	Max Fraction Digits :<fmt:formatNumber type="number" maxFractionDigits="3" value="${someNumber}" /><br/>
	
	<fmt:setLocale value="en_IN"/>
	
	Currency : <fmt:formatNumber value="${someNumber}" type="currency"/><br/>
	
	<fmt:setLocale value="en_US"/>
	
	Currency : <fmt:formatNumber value="${someNumber}" type="currency"/>
	
	

</body>
</html>