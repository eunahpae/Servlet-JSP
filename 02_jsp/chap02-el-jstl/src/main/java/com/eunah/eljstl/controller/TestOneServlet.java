package com.eunah.eljstl.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/test1")
public class TestOneServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setAttribute("name", "다람쥐");
		request.setAttribute("age", Integer.valueOf(900));
		request.setAttribute("job", "teacher");
		
		List<String> items = new ArrayList<>();
		items.add(new String("apple"));
		items.add("banana");
		items.add("melon");
		request.setAttribute("items", items);
		
		RequestDispatcher view = request.getRequestDispatcher("views/el/testEl1.jsp");
		view.forward(request,response);

	}

}
