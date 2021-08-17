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
	int score = Integer.parseInt(request.getParameter("score"));
%>
	<h1>시험점수 <%=score %></h1>

<%
	if (score >= 90) {
%>
	<h1>A학점 입니다!</h1>
<%
	} else if (score < 90 && score >= 80) {
%>
	<h1>B학점 입니다!</h1>
<%
	} else if (score < 80 && score >= 70) {
%>
	<h1>C학점 입니다!</h1>
<%
	} else if (score < 70 && score >= 60) {
%>
	<h1>D학점 입니다!</h1>
<%
	} else if (score < 60) {
%>
	<h1>F학점 입니다!</h1>
<%
	}
%>
<br/>
<a href="scoreTest.html">시험점수 다시입력</a>
</body>
</html>