<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Example Tags</title>
</head>
<body>

	<%
		//function with custon Object
		String[] cities = {"Hyderabad", "Banglore", "Kolkata", "Pune", "Delhi", "United State"};
	
		String unVarable = "              HEllo      This Unstructure   LIne and           fiNALLY iT WiLL sHow   in PropER      seqUAnce ";
	
	%>
	
	<!--Function on Length  -->
	${fn:length("cities") }<br/>
	${fn:length("SumitSharma") }
<br/><br/><br/>	
	
	<!-- Trim -->
	${fn:trim("       Sumit      Sharma        ") }<br/>
	${fn:trim("unVarable") }
	
	<br/>${fn:startsWith("SumitSharma", "Sum") }
	<br/>${fn:endsWith("SumitSharma", "rma") }
	<br/>${fn:contains("SumitSharma", "mit") }
	<br/>${fn:containsIgnoreCase("SumitSharma", "its") }
	
	<br/>${fn:toUpperCase("SumitSharma") }
	<br/>${fn:toLowerCase("SumitSharma") }
	<br/>${fn:indexOf("SumitSharma", "i") }
	<br/>${fn:replace("SumitSharma", "Sumit", "Chiku") }
	<br/>${fn:substring("SumitSharma", 2, 6) }
	<br/>${fn:substringBefore("SumitSharma", "Sharma") }
	<br/>${fn:substringAfter("SumitSharma", "mit") }
	
	
	<br/><br/>
	<c:set var="elements" value="${fn:split('www.google.com' , '.') }"></c:set>
	
	<c:forEach var="element" items="${elements}">
		${element}<br/>
	</c:forEach>
	
	
	Elements: ${fn:join(elements,'.') }
	
</body>
</html>