package com.eunah.practice0605;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/payment")
public class Payment extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("결제해");

		String cardCompany = "송파";
		String cardNo = "1111-2222-3333-4444";

		HttpSession session = request.getSession();
		session.setAttribute("cardCompany", cardCompany);
		session.setAttribute("cardNo", cardNo);

		response.sendRedirect("redirect");

	}
}
