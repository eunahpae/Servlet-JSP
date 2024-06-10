<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testEl4</title>
</head>
<body>

	<h1>requestScope & sessionScope</h1>
	
	<h3>requestScope 의 member</h3>
	이름 : ${ requestScope.member.name }<br>
	나이 : ${ requestScope.member.age }<br>
	전화번호 : ${ requestScope.member.phone }<br>
	이메일 : ${ requestScope.member.email }<br>
	
	<h3>sessionScope 의 member</h3>
	이름 : ${ sessionScope.member.name }<br>
	나이 : ${ sessionScope.member.age }<br>
	전화번호 : ${ sessionScope.member.phone }<br>
	이메일 : ${ sessionScope.member.email }<br>
	
	<h3>우선순위 테스트</h3>
	이름 : ${ member.name }<br>
	나이 : ${ member.age }<br>
	전화번호 : ${ member.phone }<br>
	이메일 : ${ member.email }<br>

</body>
</html>