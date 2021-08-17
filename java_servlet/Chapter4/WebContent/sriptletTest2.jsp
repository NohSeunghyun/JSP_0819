<!-- JSP책 169p 3.2 스크립틀릿 태그 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% // 자바코드만 작성가능
	Calendar c = Calendar.getInstance();
	int year = c.get(Calendar.YEAR);
	int month = c.get(Calendar.MONTH)+1; // ★주의 : 0부터시작. 0(=1월)부터 시작하므로 Calendar.MONTH에 +1을 해준다.
	int day = c.get(Calendar.DAY_OF_MONTH); // 한달에 대한 일자
	int hour = c.get(Calendar.HOUR_OF_DAY); // 하루에 대한 시간
	int minute = c.get(Calendar.MINUTE);
	int second = c.get(Calendar.SECOND);
%>
<!-- 현재 년,월,일,시,분,초 출력하기 -->
지금은
<%=year %>년
<%=month %>월
<%=day %>일
<!-- 오전,오후로 나누고 난 후 ex)15시->3시 로 출력 -->
<%
if (hour>=12) {
	int hour2 = c.get(Calendar.HOUR);
%>
오후 <%=hour2 %>시
<%
} else {
	int hour2 = c.get(Calendar.HOUR);
%>
오전 <%=hour2 %>시
<%
}
%>
<%=minute %>분
<%=second %>초 입니다.
</body>
</html>