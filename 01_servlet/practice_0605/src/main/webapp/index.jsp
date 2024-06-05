<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Icecream Order System</title>
</head>
<body>

	<h1>Icecream Order System</h1>

	<form action="icecreamOrder" method="post">
		아이스크림 선택 : <select name="icecreamName">
			<option value="초코">초코</option>
			<option value="바나나">바나나</option>
			<option value="망고">망고</option>
		</select> <br>
		수량 : 
		<input type="number" name="cnt">
		
		<input type="submit" value="아이스크림 주문">

	</form>

</body>
</html>