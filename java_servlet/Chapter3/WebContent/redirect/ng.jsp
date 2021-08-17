<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String str = request.getParameter("age");
%>
나이가 <%=str %>로 미성년자입니다. 주류 구매가 불가능합니다.
<a href="requestEX.html">처음으로 이동</a>
</body>
</html>