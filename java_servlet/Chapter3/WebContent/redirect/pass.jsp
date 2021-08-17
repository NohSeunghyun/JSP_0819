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
	String str = request.getParameter("age"); // pass.jsp로 넘길때 값을 같이 넘기지 않는다면 새로운 요청이기 때문에 requestEX.html에서 입력한 나이가 여기서는 null로나옴.
											  // =request_send.jsp의 if문 안에 Redirect("pass.jsp?age="+age)를 적어 입력값을 넘겨 받는다.
	int age = Integer.parseInt(str);
%>
나이가 <%=age %>로 성인입니다. 주류 구매가 가능합니다.
<a href="requestEX.html">처음으로 이동</a>
</body>
</html>