<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP책 160p 3.1 선언문</title>
</head>
<body>
<%! // 멤버변수와 메서드 : 전역변수로 jsp페이지의 어느 위치에서도 참조가능
	int i = 10;
	private String str = "ABCDE";
	
	public int add(int num1, int num2) {
		return num1+num2;
	}
%>
out 내장객체를 이용하여 출력 <br/>
<%	// 3.2 스크립틀릿 : 자바코드로 이루어진 비지니스 로직부분
	// out : JSP내장객체로 출력
	out.println("i = " + i + "<br/>");
	out.println("str = " + str + "<br/>");
	out.println("1 + 3 = " + add(1,3) + "<br/>");
%>
<hr/> <!-- hr은 줄긋기 br은 줄띄움 -->
표현식을 이용하여 출력 <br/>
i = <%=i %> <br/>
str = <%=str %> <br/>
1 + 3 = <%=add(1,3) %> <br/>
</body>
</html>