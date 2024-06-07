package com.eunah.practice0605;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/showErrorPage")
public class ShowErrorPage extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String errorMessage = (String) request.getAttribute("jakarta.servlet.error.message");
		Integer errorStatusCode = (Integer) request.getAttribute("jakarta.servlet.error.status_code");

		StringBuilder responseBuilder = new StringBuilder();
		responseBuilder.append("<!doctype html>\n").append("<html>\n").append("<head>\n").append("</head>\n")
				.append("<body>\n").append("<h1>Error Page</h1>\n")
				.append("<h3>ErrorCode : " + errorStatusCode + "</h3>\n")
				.append("<h3>ErrorMessage : " + errorMessage + "</h3>\n")
				.append("<a href=\"#\" onclick=\"goBack()\">주문 돌아가기</a>\n").append("<script>\n")
				.append("function goBack() {\n").append("    window.history.back();\n").append("}\n")
				.append("</script>\n").append("</body>\n").append("</html>\n");

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(responseBuilder.toString());
		out.close();
	}
}
