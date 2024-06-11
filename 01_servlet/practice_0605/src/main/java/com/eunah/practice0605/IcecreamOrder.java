package com.eunah.practice0605;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/icecreamOrder")
public class IcecreamOrder extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name = request.getParameter("icecreamName");
		
		int cnt = Integer.parseInt(request.getParameter("cnt"));
		int price = 1000;
		int totalPrice = price * cnt;
		request.setAttribute("name", name);
		request.setAttribute("cnt", cnt);
		request.setAttribute("totalPrice", totalPrice);
				
		if (cnt > 0) {		
			RequestDispatcher rd = request.getRequestDispatcher("views/orderSheet.jsp");
			rd.forward(request, response);
		
		} else {
			response.sendError(404, "잘못된 수량입니다.");
		}
	}
}
