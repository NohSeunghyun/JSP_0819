<!-- JSP책 150p~157p 페이지 지시어 속성들 참조 -->

<%@ page language="java" // 사용할 언어

	//extends="org.apache.jasper.runtime.HttpJspBase" // 상속할 부모 클래스를 지정. 굳이 사용안해도 자동으로 지정되어있음.
	
	import="java.util.*, java.io.*, java.sql.*" // import만 구분자(,)를 사용해 여러개를 선언할 수 있다.
	
	session="true" // HttpSession 사용여부 설정. 로그인상태를 유지할 필요가 있는 경우 true로 사용
	
	buffer="8kb" // 설정 안했을 경우 기본값8kb. JSP페이지의 출력버퍼 크기 설정. 
				// 사용 안하고 싶다면 none. none으로 설정하면 응답할 때 버퍼를 사용하지않고 바로 클라이언트에 응답을 전송
				
	autoFlush="true" // 기본값 true. 출력버퍼가 다 찼을 경우 처리방법 설정.
					// true : 버퍼가 다 채워지면 클라이언트에 전송하고 버퍼를 비움
					// false : 버퍼가 다 채워지면 클라이언트에 전송하지않고 Exception객체 발생.
					// 만약 buffer="none"으로 지정하면 autoFlush="false"로 지정하는것이 불가능함. 이유?buffer="none"은 버퍼를 사용하지않고 바로 전송하기때문에
					
	isThreadSafe="true" //  다중 스레드의 동시 실행을 허용하지 않고 순서대로 요청을 처리하려면 true
	
	info="(ShoppingMall............)" // 해당 페이지 전체에 대한 주석 역할을 하는 속성으로 개발자가 해당페이지의 기능이나 특성을 설명해 놓을 때 활용
	
	errorPage="error/error.jsp" // 예외가 발생하면 직접 처리하지 않고 error.jsp에서 예외를 처리.
			// 폴더명/파일명       // error.jsp를 사용하려면 isErrorPage="true"가 되어있어야 함.
								// 만약 buffer속성이 none이라면 응답 즉시 전송하기때문에 예외가 발생하더라도 에러페이지로 넘어가지않는다.
								// 또, buffer속성이 지정되어있고 autoFlush가 true로 지정되어있다면 버퍼가 다채워져서 응답이 전송된 이후 예외가 발생되어도 에러페이지로 넘어가지않음.
	
	isErrorPage="false" // 기본값은 false. 현재 페이지가 다른 페이지에서 발생한 예외를 처리할 페이지일때 지정하는 속성->true로 지정
	
	contentType="text/html; charset=UTF-8" // ;charset=UTF-8을 빼도 무방하다. pageEncoding="UTF-8"가 있으므로
	// 기본값 (text/html)
	// JSP페이지가 생성할 문서 타입과 MIME타입을 지정(대분류/소분류)
	// 메일 동봉 시 문서의 종류 지정 -> 통신 문서 타입지정
	// MIME(Multipurpose Internet Mail Extension)
	// text/html, Application/xml, Application/json, Application/x-www-form-urlencode, text/plain, text/xml, multipart/formed-data (파일 업로드 시)
	
	//charset="UTF-8"한글깨짐방지(방법-1)
	
    pageEncoding="UTF-8" // 페이지의 문자셋 인코딩방식 지정. 한글깨짐방지(방법-2) 기본값은 ISO-8859-1(한글처리 못함)->한글처리위해 "UTF-8"이나 "euc-kr"사용
    
    isELIgnored="false" // EL(Expression Language=표현언어)의 사용 여부. 자바코드를 간략히 표현하는것을 거부하는지 묻는 속성 // 기본값 false : EL사용
    
    trimDirectiveWhitespaces="false" // 출력결과에서 공백 문자들을 제거할지 묻는 속성 // 기본값 false : 공백제거안함
    
    /*
     * charset과 pageEncoding의 차이점
     * -charset : 서버가 웹브라우저에게 보내는 문자 인코딩 타입
     * -pageEncoding : 소스 코드 자체의 문자 인코딩 타입
     */
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>