<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Servlet과 jsp에서 사용하는 forward방식이 다름 -->
<!-- jsp에서는 서블릿처럼 자바코드를 사용하지않고 액션태그 사용
	 실행하면 주소표시줄의 주소가 변경되지 않는다.
	 즉, 하나의 요청이다 
	 따라서 request영역을 공유한다.(main.jsp와 sub.jsp에서 forward를 공유) -->
	<jsp:forward page="sub.jsp"/> <!-- JSP책 223p~228p참조 --> <!-- ★주의:마지막에 / 적어줘야함. -->
<!-- 실행 후 주소를 확인하면 main.jsp로 그대로되어있는데 sub.jsp의 내용이 출력된다. -->
<!-- 224p절대경로와 상대경로로 입력하는 방법 -->
<!-- 상대경로 <jsp:forward page=".\폴더이름\sub.jsp"/> -->
<!-- 							"폴더이름\sub.jsp"/> -->
</body>
</html>