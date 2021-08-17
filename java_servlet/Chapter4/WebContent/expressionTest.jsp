<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! 
	//String str = "1부터 100까지의 합"; // 전역변수->멤버변수로 선언 // jsp페이지의 어느위치에서든 사용가능
	String name = "이순신"; // 다른것을 확인하기위해 추가한 소스
	// 1부터 100까지의 합을 구하여 리턴하는 메서드 정의
	public int sum() {
		int total = 0;
		for (int i = 1 ; i <= 100 ; i++) {
			total += i;
		}
		return total;
	}
%>
<%
	String age = request.getParameter("age"); // 다른것을 확인하기위해 추가한 소스 // requestEX.html에 입력값 없고 전달소스 없으므로 null이 되어있음.->오류발생함
											  // 방법 : get방식으로 주소표시줄에 파일명.jsp?age=나이(수)를 적으면 됨
	String str = "1부터 100까지의 합"; // !없는곳에 선언할 시 지역변수로 선언 -> 서블릿의 service()메서드에 선언
%>
<!-- 표현식은 모두 service()메서드 안의 out.print(변수);로 되있다.
표현식 끝에는 세미콜론(;)을 붙이면 오류 발생(이유?out.print(str;);와 같기때문) -->

<!-- 표현식에는 변수, 리턴값이 있는 메서드, 수식(변수나 리턴값이 있는 메서드 포함할 수 있다) -->
<%=str %>은 <%=sum() %> 입니다.<br/>
<%=str %>에 3을 곱하면 <%=sum()*3 %> 입니다.<br/>
<%=str %>을 1000으로 나누면 <%=sum()/1000. %> 입니다.<br/> <!-- /1000만 적을시 정수의 몫만 /1000.을 적을시 소수부분까지의 몫 출력 -->

안녕하세요. <%=name %>님 반갑습니다.<br/>
나이는 <%=age %>살 입니다.<br/>
나이 + 10 = <%=Integer.parseInt(age)+10 %>살 입니다.<br/>
</body>
</html>