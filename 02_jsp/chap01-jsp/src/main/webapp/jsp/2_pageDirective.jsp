<%--
  지시자 태그는 page 지시자 태그, include 지시자 태그, taglib 지시자 태그가 있다.
  - page 지시자 태그 : 현 jsp 페이지에 대한 설정을 하는 지시자 태그
  - include 지시자 태그 : 다른 jsp 파일을 포함하기 위해 사용하는 지시자 태그
  - taglib 지시자 태그 : xml 문법 기반의 라이브러리인 JSTL을 사용하기 위해 선언하는 지시자 태그
--%>
<%--
  지시자 태그에서 사용 가능한 속성은 여러 가지지만 수업에서는 아래 3가지를 다뤄본다.
  - errorPage : 현재 페이지에서 Exception이 발생하면 속성 값에 설정한 JSP 경로로 exception을 던진다.
  - isErrorPage : 현재 페이지가 Exception을 처리할 페이지인 경우 true로 지정, 기본값은 false이다.
  - import : java.lang 패키지 이외의 클래스를 현 jsp 파일에서 사용할 때 import 속성으로 정의하면,
             java 파일의 import 선언부를 작성하는 것과 같다.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date" errorPage="errorPage.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page directive</title>
</head>
<body>

	<%
		Date date = new Date();
		System.out.println(date);
	%>

	<% 
		String str = null;
		char ch = str.charAt(0);
	%>


</body>
</html>