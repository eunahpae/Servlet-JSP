package com.eunah.response.section03.status;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/status")
public class StatusCodeTsetServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		// sendError() 를 통해 임의로 에러를 반환할 수 있음
		// response.sendError(404);	
		response.sendError(500, "서버 내부 오류 500! 서버 내부 오류는 개발자 잘못이래요......");
	
	}

}
