<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	
	<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL XML</title>
</head>
<body>

	<c:import url = "/Users.xml" var="XMLFile"/>
	<x:parse xml="${XMLFile}" var="XMLDoc"/>
	
	<h5>Displaying 2nd records</h5>
	
	Name : <x:out select="$XMLDoc/users/user[2]/name" /><br/>
	gender : <x:out select="$XMLDoc/users/user[2]/gender" /><br/>
	Age : <x:out select="$XMLDoc/users/user[2]/age" /><br/>

<h4>**************</h4>
<hr/>


<table border="1">
	<tr>
		<th>Name</th>
		<th>Gender</th>
		<th>Age</th>
	</tr>
	
	<x:forEach select="$XMLDoc/users/user">
		
		<tr>
			<td><x:out select="name"/></td>
			<td><x:out select="gender"/></td>
			<td><x:out select="age"/></td>
		</tr>
	
	</x:forEach>
	
</table>




</body>
</html>