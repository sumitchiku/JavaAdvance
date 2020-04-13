<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Page</title>
</head>
<body>
	<h1>Hello This is JSP page and this is diff. from HTML page. But
		display same.</h1>
	<p>JSP paragraph and many more</p>
	<input type="text" placeholder="Write any thing" />
	<br />
	<br />
	<button type="Button">My button</button>
	<h3>we can also use of JSTL</h3>
	<h2>now we will see elements in JSP</h2>

	<h2>Scriptlet, Declaration, Directive, Comments</h2>

	#######################################################
	<h2>scriptlet elements:</h2>
	<br /> %="hello"%
	<br />
	<%="Displaying this using scriplet Tag, it starts with = "%>>
	<br />
	<p>we can not use specifier in scriptlet</p>
	<%=new Integer(245)%><br />
	<%=new String("ABCD")%><br />
	<%=new Date()%><br />
	<%=25 + 2%><br />
	<%=25 > 2%><br />

	<h4>Now some more about Scriptlets</h4>

	<%
		int numVariable = 26;
	out.println(numVariable + " is the value of numVariable. <br/>");
	if (numVariable > 26) {
		out.println("Number is greater then 26");
	} else {
		out.println("Number is Less then OR equal to 26. ");
	}
	out.println("<br/>We can write any java code within scriptlet.<br/>");

	for (int i = 0; i < 10; i++) {
		out.println("<br/>");
		out.println(i);
	}
	%>

	<p>*************************************************</p>
	<h2>declaration elements:</h2>
	<p>we write declaration syntax to declare in java applications with
		semicolon</p>
	<p>we can not use specifier in scriptlet</p>

	<h5>USE of '!' to declare syntax in java</h5>
	<%!public int x = 25;%>
	<%=x%>
	<br />
	<%!String message() {
	return "I love my India";
}%>
	<%=message() + " IS DISPLAYED"%>

	<p>%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%</p>
	<h2>Comments elements:</h2>

	<h5>use JSP comments to comment down code in java we use %--
		someThings --%</h5>

	<%-- response.sendRedirect("http://www.google.com"); --%>

	<p>@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@</p>
	<h2>Directive elements:</h2>

	<h5>we use @ symbol to directive elements of Specifying about the
		JSP</h5>
	<p>see first Line</p>
</body>
</html>
