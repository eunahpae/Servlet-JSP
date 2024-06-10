<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include directive</title>
</head>
<body>
    <%--
        include 지시자 태그를 이용하여 file 속성에 jsp 경로를 지정하면
        해당 jsp에 작성한 내용을 그대로 포함시켜 현재 jsp 파일을 동작시킨다.
        따라서 동일한 변수 이름을 include 이후에 또 사용하면
        한 페이지 내에 동일한 변수가 생성되는 것이므로 compile 에러가 발생한다.
    --%>

	<div>
		<%@ include file="today.jsp" %>
	</div>
	
	<%-- include 파일에서 선언된 변수명과 동일하게 선언 불가 --%>
	<% // Srting output = ""; %>

</body>
</html>