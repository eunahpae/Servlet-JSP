<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order complete</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f7f7f7;
		margin: 0;
		padding: 0;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
	}
	
	.container {
		background-color: #fff;
		padding: 20px;
		border-radius: 10px;
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		text-align: center;
	}
	
	h1 {
		color: #980000;
		margin-bottom: 10px;
	}
	
	h2 {
		color: #555;
		margin-top: 10px;
	}
</style>
</head>

<body>

	<div class="container">
		<h1>주문 완료</h1>
		<h2>${ cardName }
			카드로 ${ totalPrice } 원이 결제되었습니다.<br> 감사합니다.
		</h2>
		<br>
	</div>

</body>
</html>