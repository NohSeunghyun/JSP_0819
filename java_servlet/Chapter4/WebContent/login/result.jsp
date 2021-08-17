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
	request.setCharacterEncoding("UTF-8"); // post방식에 대한 한글깨짐방지
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
%>
<%
// 첫번째 if문에서 먼저,ID가 정상적으로 입력되었는지 체크한 후 정상적으로 입력되었으면
// 다시 내부 if문을 수행하여 id가 admin인지 체크
	if (user_id == null || user_id.length() == 0) { // 정상적으로 입력되지 않았으면
%>
	아이디를 입력하세요.<br/>
	<a href="login.html">로그인하기</a>
<%
	} else { // 정상적으로 입력되었으면
		if (user_id.equals("admin") && user_pw.equals("admin")) {
%>
	관리자로 로그인하였습니다!! <br/>
	<input type="button" value="회원정보 삭제하기"> &nbsp;&nbsp;
	<input type="button" value="회원정보 수정하기"> <br/>
<%
		}
%>
	환영합니다. <%=user_id %>님~!! <br/>
<%
	}
%>
</body>
</html>