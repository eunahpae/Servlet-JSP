<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Sheet</title>
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
            margin-bottom: 20px;
            margin-top: 0;
        }
        h2 {
            color: #555;
            margin-top: 20px;
            margin-bottom: 30px;
        }
        form {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        select, input[type="number"], button {
            margin-bottom: 10px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%; 
        }
        button:hover {
            background-color: #45a049;
        }
        .form-group {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
        }
        .form-group select,
        .form-group input {
            flex: 1; 
            margin-right: 10px; 
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-group"> 
            <h1>주문 내역</h1>
        </div>
        <h2>${name} 아이스크림 ${cnt} 개 주문, 결제하실 금액은 ${totalPrice} 원입니다.</h2>

        <form action="<%=request.getContextPath()%>/orderComplete" method="post">
            <input type="hidden" name="totalPrice" value="${totalPrice}">
            <div class="form-group"> 
                <select id="card" name="cardName">
                    <option value="" disable>카드 선택</option>
                    <option value="lotte">롯데 (10% 할인)</option>
                    <option value="hyundai">현대 (20% 할인)</option>
                    <option value="samsung">삼성 (30% 할인)</option>
                    <option value="kb">국민 (40% 할인)</option>
                </select>
                <input type="number" min="0" maxlength="16" step="1" name="cardNumber" placeholder="카드 번호">
            </div>
            <button type="submit">결제하기</button>
        </form>
    </div>
</body>
</html>
