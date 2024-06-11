<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Icecream Order System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h1 {
            color: #ff6b6b;
            text-align: center;
            margin-bottom: 30px;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        select, input[type="number"], input[type="submit"] {
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #ff6b6b;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #ff8e8e;
        }
    </style>
</head>
<body>

    <h1>🍦 Icecream Order System 🍦</h1>

    <form action="icecreamOrder" method="post">
        제품 : <select name="icecreamName">
            <option value="" disabled selected>아이스크림 선택</option>
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
