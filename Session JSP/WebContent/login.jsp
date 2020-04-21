<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<form action="<%= request.getContextPath()%>/SiteController" method="post">
	Username: <input type="text" name="username" placeholder="Enter Username"> <br/>
	Password: <input type="password" name="password" placeholder="Enter Passwordf"><br/>
	<input type="submit" value="Login"/>
</form>

</body>
</html>