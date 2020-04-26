
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<c:forTokens items="Hello my name is Sumit and i am reading JSTL with tokens" delims=" " var="temp">
		${temp}<br/>
	</c:forTokens>
	
	
	<br/><br/>MORE IN TOKENS<br/><br/>
	<%
		String URL= "com.jstl.token.fortoken";
	%>
	<c:forTokens items="<%=URL%>" delims="." var="flag">
		${flag}<br/>
	</c:forTokens>