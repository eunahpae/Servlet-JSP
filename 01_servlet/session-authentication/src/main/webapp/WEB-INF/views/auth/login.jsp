<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<h1>로그인</h1>
	<form action="${ pageContext.servletContext.contextPath }/member/login" method="post">
		ID: <input type="text" name="memberId"><br> 
		비밀번호: <input type="password" name="memberPwd"><br>
		<button>Login</button>
	</form>

</body>
</html>