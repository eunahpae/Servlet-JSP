package com.eunah.practice0605;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet("/icecreamOrder")
public class IcecreamOrder extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		String name = request.getParameter("icecreamName");
		
		int cnt = Integer.parseInt(request.getParameter("cnt"));
		int price = 1000;

		if (cnt > 0) {
			int totalPrice = price * cnt;
			out.print("<h2>" + name + " 아이스크림 " + cnt + "개 주문하셨습니다.<br></h2>");
			out.print("결제하실 금액은 " + totalPrice + "원 입니다.");
		} else {
			response.sendError(404, "잘못된 수량입니다.");
		}
		out.close();
	}
}
