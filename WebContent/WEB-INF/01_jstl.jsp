<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ tablib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = "홍길동";
%>
이름 : <%= name %> <br>

<%
	name = "";
%>
이름 : <%= name %> <br>
<hr>
<c:set var="name2" value="홍길동"/>
이름 : <c:out value="${name2}"/>
<c:remove var="name2"/>
<hr>
<%
	try {
		out.println(2/0);
	}catch(Exception e) {
		out.println(e.getMessage());
	}
%>
<br>
<c:catch var="message">
	<%= 2/0 %>
</c:catch>
<c:out value="${message}"/>
<hr>
<%	if((1+2) == 3){%>
		<%= "1 + 2 = 3" %>
<%	} %>

<br>
<c:if test="${1+2==3}">
	1 + 2 = 3
</c:if>
<br>
<%	if((1+2) != 3){%>
		<%= "1 + 2 = 3" %>
<%	} %>

<c:if test="${1+2!=4}">
	1 + 2 != 4
</c:if>
<hr>
<%	for(int i=1; i<10; i++) {%>
	<%= i %>
<%	}%>
<br>
<c:forEach var="i" begin="1" end="10" step="2">
	${i}
</c:forEach>

</body>
</html>