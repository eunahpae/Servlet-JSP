package com.eunah.practice0605;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/orderComplete")
public class Payment extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("카드 결제진행중~");
		String cardName = request.getParameter("cardName");
		String cardNumber = request.getParameter("cardNumber");
		int totalPrice = Integer.parseInt(request.getParameter("totalPrice"));

		switch (cardName) {
		case "lotte":
			cardName = "롯데";
			totalPrice =(int)(totalPrice * 0.9);
			break;
		case "hyundai":
			cardName = "현대";
			totalPrice = (int)(totalPrice * 0.8);
			break;
		case "samsung":
			cardName = "삼성";
			totalPrice = (int)(totalPrice * 0.7);
			break;
		case "kb":
			cardName = "국민";
			totalPrice = (int)(totalPrice * 0.6);
			break;
		}
		
		request.setAttribute("cardName", cardName);
		request.setAttribute("cardNumber", cardNumber);
		request.setAttribute("totalPrice", totalPrice);
		System.out.println(totalPrice);

		RequestDispatcher rd = request.getRequestDispatcher("views/orderComplete.jsp");
		rd.forward(request, response);

	}
}
