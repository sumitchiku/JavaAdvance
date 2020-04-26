
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br /><br /><br /><br />
	Now we will see Looping in JSTL
<br /><br />

<c:forEach var="counter" begin="0" end="9" step="1">
		${counter}<br />
</c:forEach>

<br /><br />
	Checking some more on loop
<br /><br />
	
	<%
		String[] array = new String[4];
		array[0] = "Sumit";
		array[1] = "Samarjeet";
		array[2] = "Somya";
		array[3] = "Manisha";
	%>

	<c:forEach items="<%=array%>" var="name">
			${name}<br />
	</c:forEach>

	
	<br/> Printing custom value using param taglib in core and as it is on forEach page we use between import tag when calling this page<br/>
	
	${param.myValue} <- is been displayed by using param tag