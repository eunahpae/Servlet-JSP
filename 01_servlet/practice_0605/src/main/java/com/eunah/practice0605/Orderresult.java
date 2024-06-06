package com.eunah.practice0605;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/orderresult")
public class Orderresult extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("icecreamName");
		int cnt = Integer.parseInt(request.getParameter("cnt"));
		int totalPrice = (int) request.getAttribute("totalPrice");

		StringBuilder responseText = new StringBuilder();
		responseText.append("<!doctype html>\n")
        .append("<html>\n")
        .append("<head>\n")
        .append("</head>\n")
        .append("<body>\n")
        .append("<h2>" + name + " 아이스크림 " + cnt + "개 주문하셨습니다.<br></h2>")
        .append("결제하실 금액은 " + totalPrice + "원 입니다.\n")
        .append("<a href=\"payment\">결제하기</a>") 
        .append("</body>\n")
        .append("</html>");

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(responseText.toString());
		out.close();

	}

}
