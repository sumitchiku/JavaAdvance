<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<%
		String username = null, sessionID = null;
	Cookie[] cookies = request.getCookies();
	if (cookies != null) { //if cookies is not null then run loop
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("username")) {
		username = cookie.getValue();
			}
			if (cookie.getName().equals("JSESSIONID")) {
		sessionID = cookie.getValue();
			}
		}
	}

	/*if we run welcome.jsp page as we can access welcom page directly
	is should not be direst when login success then welcome
	so we write logig below
	*/
	
	if(sessionID == null || username == null){
		response.sendRedirect("login.jsp");
	}
	%>

	<br />Username : <%=username%><br />
	<br />Current Session ID : <%=sessionID%><br /> 
	<br/>
	<form action="<%= request.getContextPath() %>/MemberAreaController" method="get">
		<input type="hidden" name="action" value="destroy"></br>
		<input type="submit" value="Logout">
 	</form>
	


</body>
</html>