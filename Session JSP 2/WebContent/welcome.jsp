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
	if (request.getSession().getAttribute("username") == null) {
		response.sendRedirect(request.getContextPath() + "/SiteController?action=login");
	} else {
		username = request.getSession().getAttribute("username").toString();
		sessionID = request.getSession().getId();
	}
	%>

	<br />Username :
	<%=username%><br />
	<br />Current Session ID :
	<%=sessionID%><br />
	<br />
	<form action="<%=request.getContextPath()%>/MemberAreaController"
		method="get">
		<input type="hidden" name="action" value="destroy"></br> <input
			type="submit" value="Logout">
	</form>



</body>
</html>