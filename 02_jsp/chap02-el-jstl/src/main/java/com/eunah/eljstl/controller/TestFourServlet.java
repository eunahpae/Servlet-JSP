package com.eunah.eljstl.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.eunah.eljstl.model.dto.MemberDTO;

@WebServlet("/test4")
public class TestFourServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		MemberDTO requestMember = new MemberDTO("다람쥐", 900, "010-2222-2222", "squirrel@naver.com");
		MemberDTO sessionMember = new MemberDTO("돼지", 200, "010-1111-1111", "pig@naver.com");

		HttpSession session = request.getSession();
		
		request.setAttribute("member", requestMember);
		session.setAttribute("member", sessionMember);
		
		RequestDispatcher view = request.getRequestDispatcher("views/el/testEl4.jsp");
		view.forward(request, response);
		
	}
}
