<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response</title>
</head>
<body>

	<%
		String menuName = (String) request.getAttribute("menuName");
		int amount = (Integer) request.getAttribute("amount");
		int orderPrice = (Integer) request.getAttribute("orderPrice");
	%>

	<h3>
		주문한 메뉴 :
		<%= menuName %></h3>
	<h3>
		주문 수량 :
		<%= amount %></h3>
	<h1>
		결제 금액 :
		<%= orderPrice %></h1>

</body>
</html>