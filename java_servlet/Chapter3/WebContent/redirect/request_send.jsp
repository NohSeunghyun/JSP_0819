<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! // 멤버변수와 메서드를 정의할 수 있다. : 전역에서 사용가능함
	int age;
	%>
	<%
	String str = request.getParameter("age"); // requestEX.html에서 나이를 입력하면 가져와서 String str에 참조.
	age = Integer.parseInt(str); // str을 나이비교를위해 Integer사용하여 int age에 참조
	
	if ( age >= 20){
		response.sendRedirect("pass.jsp?age="+age); // 실행하면, Redirect = 새로운요청.(=주소변경) request객체 공유(X) // Redirect이므로 pass.jsp로 넘어가면 값이 null로됨
												    // 값을 같이 넘겨주면 null로 표시안됨.(="pass.jsp?age="+age)로 age에 값을 담아 넘김
	} else {
		response.sendRedirect("ng.jsp?age="+age);
	}	
	%>
</body>
</html>