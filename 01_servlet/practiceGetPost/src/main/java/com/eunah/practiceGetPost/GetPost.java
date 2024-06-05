package com.eunah.practiceGetPost;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/practice")
public class GetPost extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String httpMethod = request.getMethod();

		if (httpMethod.equals("GET")) {
			doGet(request, response);
		} else if (httpMethod.equals("POST")) {
			doPost(request, response);
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("GET 요청 처리를 위한 doGet() 호출됨");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("GET 요청 처리를 위한 doPost() 호출됨");
	}

}
