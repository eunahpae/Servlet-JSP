package com.eunah.forward;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/forward")
public class ReceiveInformationServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String password = request.getParameter("password");

		System.out.println("userId: " + userId);
		System.out.println("password: " + password);

		// Attribute 는 요청하는 쪽에 작성
		request.setAttribute("userName", "다람쥐");
		
		RequestDispatcher rd = request.getRequestDispatcher("print");
		rd.forward(request, response);
	}
}
