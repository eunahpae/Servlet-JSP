<%@page import="java.util.ArrayList"%>
<%@page import="java.awt.ItemSelectable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testEl1</title>
</head>
<body>

	<h1>전달된 request 객체에 저장된 정보 출력</h1>

	<%-- 
		<%
			String name = (String) request.getAttribute("name");
			int age = (Integer) request.getAttribute("age");
			int job = (Integer) request.getAttribute("job");
		%>		
		name : <%= name %><br>
		age : <%= age %><br>
		job : <%= job %><br> 
	--%>

	<%-- requestScope 가 기본값이라 생략 가능	
		name : ${ requestScope.name }<br>
		age : ${ requestScope.age }<br>
		job : ${ requestScope.job }<br>
	 --%>

	name : ${ name }
	<br> age : ${ age }
	<br> job : ${ job }

	<br>

	<h1>items 이름으로 저장된 리스트 정보 출력</h1>

	<%
		ArrayList items = (ArrayList) request.getAttribute("items");
		for (int i = 0; i < items.size(); i++) {
	%>
		<%= i %> : <%= items.get(i) %>
	<% } %>

	<br><br>
	
	0 : ${ items[0]}<br> 
	1 : ${ items[1]}<br> 
	2 : ${ items[2]}<br>


</body>
</html>