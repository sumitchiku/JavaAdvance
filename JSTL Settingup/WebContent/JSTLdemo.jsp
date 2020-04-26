<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL demo</title>
</head>
<body>

  <c:set var="fName" value="Sumit"></c:set>
  <c:set var="lName" value="Sharma"></c:set>
  
  first Name : <c:out value="${fName}"></c:out><br/>
  last Name : <c:out value="${lName}"></c:out><br/>
  
  <c:remove var="lName"/>
  <br/>after removing lastName<br/><br/>
  
  first Name : <c:out value="${fName}"></c:out><br/>
  last Name : <c:out value="${lName}"></c:out><br/>
  
  <br/>we can read parameter from URL;;; we add in URL ...JSTL_Settingup/JSTLdemo.jsp?msg=hello<br/><br/>
  <br/>then run application and see output<br/><br/>
  
  ${param.msg}   is msg from URL
</body>
</html>