<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL & JSTL</title>
</head>
<body>

	<h1>JSP Action Tag</h1>	
	<h3><a href="views/action/testAction.jsp">JSP Action Tag Test</a></h3>
	
	<br>
	
	<h1>EL (Expression Language)</h1>
	<h3><a href="test1">request.getAttribute() test</a></h3>
	<h3><a href="test2">request 에 저장된 객체 출력 test</a></h3>
	<h3><a href="views/el/test3.jsp?name=iphone&price=100&no=5&no=6&option=apple">parameter 로 값을 전달한 경우 EL test</a></h3>
	<h3><a href="test4">requestScope 와 sessionScope 우선순위 test</a></h3>
	
	<br>
	
	<h1>JSTL (JSP Standard Tag Library)</h1>
	<h3><a href="views/jstl/testJstlCore.jsp">Core Library test</a></h3>
	<h3><a href="views/jstl/testJstlFmt.jsp">FMT Library test</a></h3>
	<h3><a href="views/jstl/testJstlFunction.jsp">Function Library test</a></h3>
	

</body>
</html>