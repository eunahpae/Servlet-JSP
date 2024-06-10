<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test3</title>
</head>
<body>

	<h1>parameter 값 받아서 출력</h1>

	<%-- 
		<%
			String name = request.getParameter("name");
			int price = Integer.parseInt(request.getParameter("price"));
			String[] no = request.getParameterValues("no");
			String option = request.getParameter("option");
		%>
		
		상품명 : <%= name %><br>
		가격 : <%= price %><br>
		제품번호 : <%= no[0] %>, <%= no[1] %><br>
		옵션 : <%= option %><br> 
	--%>

		<%-- 파라미터는 반드시 스코프를 명시해야 하며, 그렇지 않으면 값을 못 가지고 온다. --%>	
		<%-- 상품명 : ${ param.name }<br> --%>
		
		상품명 : ${ param.name }<br>
		가격 : ${ param.price }<br>
		제품번호 : ${ paramValues.no[0] }, ${ paramValues.no[1] }<br>
		옵션 : ${ (empty param.option) ? "옵션 없음" : param.option }<br> 

</body>
</html>