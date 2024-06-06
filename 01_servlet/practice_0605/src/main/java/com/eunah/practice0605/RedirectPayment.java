package com.eunah.practice0605;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/redirect")
public class RedirectPayment extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String cardCompany = (String) session.getAttribute("cardCompany");
		String cardNo = (String) session.getAttribute("cardNo");

		StringBuilder responseText = new StringBuilder();
		responseText.append("<!doctype html>\n").append("<html>\n").append("<head>\n").append("</head>\n")
				.append("<body>\n").append("<h3>카드번호 " + cardNo + " (카드사: " + cardCompany + ") 로 결제되었습니다.</h3>\n")
				.append("</body>\n").append("</html>");

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(responseText.toString());
		out.close();

	}

}
