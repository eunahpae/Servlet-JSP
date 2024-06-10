<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request</title>
</head>
<body>

	<h1>===== 주문하기 =====</h1>
	<form action="<%= request.getContextPath() %>/menu/order" method="post">
		<select id="menu" name="menuName">
			<option value="hamburger">햄버거</option>
			<option value="zzambbong">짬뽕</option>
			<option value="dongas">돈까스</option>
			<option value="gimbap">김밥</option>
		</select>
		<input type="number" min="0" maxlength="100" step="1" name="amount">
		<button type="submit">선택 완료 및 주문</button>
	</form>
</body>
</html>