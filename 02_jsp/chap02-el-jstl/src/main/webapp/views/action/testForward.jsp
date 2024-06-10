<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title (forward)</title>
</head>
<body>
	<h1><%= request.getAttribute("name") %>님 환영합니다!</h1>

	<h2>jsp:useBean 활용</h2>
	
	<jsp:useBean id="member" class="com.eunah.eljstl.model.dto.MemberDTO" scope="page" />
	
	<jsp:setProperty name="member" property="name" value="다람쥐" />
	<jsp:setProperty name="member" property="age" value="900" />
	<%-- <jsp:setProperty name="member" property="age" value="안녕하세요" /> --%>
	<jsp:setProperty name="member" property="phone" value="010-1234-5678" />
	<jsp:setProperty name="member" property="email" value="squirrel@ohgiraffers.com" />
	
	이름: <jsp:getProperty name="member" property="name" /><br>
	나이: <jsp:getProperty name="member" property="age" /><br>
	전화번호: <jsp:getProperty name="member" property="phone" /><br>
	이메일: <jsp:getProperty name="member" property="email" /><br>
	
</body>
</html>