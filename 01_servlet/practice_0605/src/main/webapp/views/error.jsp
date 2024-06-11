<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
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
			color: #333;
			margin-bottom: 10px;
		}
        h3 {
            color: #555;
            margin-bottom: 10px;
        }
        .payment-button {
            background-color: #ff6b6b;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .payment-button:hover {
            background-color: #ff8e8e;
        }
    </style>
</head>
<body>
    <div class="container">
    <h1>Error Page</h1>
        <h3>ErrorCode : ${requestScope['jakarta.servlet.error.status_code']}</h3>
        <h3>ErrorMessage : ${requestScope['jakarta.servlet.error.message']}</h3><br>
        <a href="#" class="payment-button" onclick="goBack()">주문 돌아가기</a>
        <script>
            function goBack() {
                window.history.back();
            }
        </script>
    </div>
</body>
</html>