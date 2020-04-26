<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Demo</title>
</head>

<body>

	<jsp:useBean id="userbean" class="com.bean.expressionlanguage.User" scope="page"></jsp:useBean>
	first name is : <c:out value="${userbean.getFirstName()}"/> //fetching by method<br/>
	last name is : ${userbean.lastName}		//fetching by variableName
	
	<br/>-------http://localhost:8080/Reading_Bean_using_Expression_Language/JSTLBean.jsp?name=Sumit  and name is case sensetive<br/>
	<br/>
	////Now we will see that how to work with decision making in jstl <br/>
	<c:if test="${param.name == 'Sumit' }">
		Hello ${param.name}<br/>
	</c:if>
		Hello User you are not Correct user<br/>
	
	<br/><br/>/////no if-else condition so we use choose and when tags
	<br/>
	...it act like switch case<br/><br/>
	
	<br/>run this<br/>
	http://localhost:8080/Reading_Bean_using_Expression_Language/JSTLBean.jsp?lang=python&name=Sumit<br/>
	<br/><br/>
	
	<c:choose>
		<c:when test="${param.lang == 'java' }">
			Learning Java<br/>
		</c:when>
		<c:when test="${param.lang == 'python' }">
			Learning Python<br/>
		</c:when>
		<c:otherwise>
			Learning Nothing Chill
		</c:otherwise>
	</c:choose>
	
	
	<br/><br/><br/><br/>Now we will see Looping in JSTL<br/><br/>
	<c:forEach var = "counter" begin="0" end="9" step="1">
		${counter}<br/>
	</c:forEach>
	
	
	
	<br/><br/>Checking some more on loop<br/><br/>
	
	<c:import url="/fragmentJSP/forEach.jsp">
		<c:param name="myValue" value="MY VALUE"></c:param>
	</c:import>
	
	
	<br/><br/>Checking forToken<br/><br/>
	
	<c:import url="/fragmentJSP/forToken.jsp"></c:import>
	
	<br/><br/>IMPORT are used as framentJSP  AND PARAM TAGS is below<br/><br/>
	
	
	
	
	<br/><br/>******NOW WORKING WITH url AND redirect TAGS******<br/><br/> 
	
	<a href="<c:url value="/Demo.jsp"/>" >Demo Page</a>
	
	
	<br/><br/>******CATCH TAGS******<br/><br/> 
	
	
	<c:catch var="exception">
	 <% int cult = 10/0; %> 
	</c:catch>
	
	${exception.message}
	
	
	<%
		String URL = "<br/><a href='http://www.google.com'>Google</a><br/>";
		String note = "If we setAttribute of servletContext then we can use Attribute in any JSP page within a Application. <br/>";
		
		ServletContext context = getServletContext();
		context.setAttribute("url", URL);
		context.setAttribute("contextNote" , note);
		context.setAttribute("author", "Sumit");
		
	%>
	
	${contextNote}
	${url}
	
	
	
	
	
	
</body>
</html>