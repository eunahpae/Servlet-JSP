package com.eunah.filterWrapper.section02.uses;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@WebServlet("/member/regist")
public class RegistMemverServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		System.out.println("userId: " + userId);
		System.out.println("password : " + password);
		System.out.println("name : " + name);

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		System.out.println("password == pass01 ? " + passwordEncoder.matches("pass01", password));
		System.out.println("password == pass02 ? " + passwordEncoder.matches("pass02", password));

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h1>" + name + "님 회원 가입을 축하합니다~!</h1>");
		out.print("</body>");
		out.print("</html>");

		out.close();
	}

}
