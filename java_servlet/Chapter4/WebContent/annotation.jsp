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
	/* String age = request.getParameter("age"); */
	// 서블릿에 자바 주석문으로 표시됩니다
%>
</body>
<!-- HTML 주석문 : HTML주석문은 브라우저로 전달됩니다. 
소스보기를 하면 주석문이 보임.(이유?웹브라우저에서 실행하므로) -->

<!-- JSP의 주석처리문 -->
<%-- <%=Integer.parseInt(age)+10 %> --%>
<!-- JSP 주석문 : 서블릿코드(=자바코드)로 변환되지 않습니다. 
소스보기를 하면 주석문이 안보임.(이유?JSP는 서버에서 실행하고 HTML문서로 응답하므로)-->
</html>