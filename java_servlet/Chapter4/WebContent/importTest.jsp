<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, java.text.SimpleDateFormat"
    %>
<%-- <%@ page import="java.util.*" %> --%> <!-- 위에서 한번에 작성 -->
<%-- <%@ page import="java.text.SimpleDateFormat" %> --%> <!-- 위에서 한번에 작성 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 현재 시간을 표시하기 위해 Date객체 생성 -->
현재 날짜와 시간은 <%= new Date()%>입니다. <br>
<!-- 위 코드는 길게 나오고 알아보기 힘듬. 간단하게 만들기 -->
현재 날짜와 시간은 <%=new SimpleDateFormat().format(new Date()) %>입니다. <br>
				<!-- SimpleDateFormat()생성자 호출하여 .format()메서드 호출 -->
<br>
<!-- 참조하여 사용가능 -->
<%
	Date date = new Date();
	out.print("현재 날짜와 시간은" + date + "입니다.");
%>
<br>
<br>
현재 날짜와 시간은 <%=date %>입니다.<br>
현재 날짜와 시간은 <%=new SimpleDateFormat().format(date) %>입니다.<br>
<!-- 
229p JSP에서 제공하는 액션태그중 include 비교
-include지시어는 소스 복사하여 삽입 <%-- <%@ include file="파일명.jsp"%> --%>는 지시어 위치에 해당jsp파일 소스를 삽입.
-include액션태그는 제어가 넘어갔다가 돌아옴 <%-- <jsp:include page="파일명.jsp"> --%>는 현재페이지 진행하다가 이 태그를 만나면 해당파일로 넘어가 해당파일 실행후 액션태그로 다시돌아와 그 아래 소스들 실행.
 -->
</body>
</html>