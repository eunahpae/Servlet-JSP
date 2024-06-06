package com.eunah.practice0605;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;

@WebFilter("/icecreamOrder")
public class OrderFilter extends HttpFilter implements Filter {

	public OrderFilter() {
		System.out.println("OrderFilter 기본 생성자 호출");
	}

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

	
		String name = request.getParameter("icecreamName");
		int cnt = Integer.parseInt(request.getParameter("cnt"));
		System.out.println(name + " 아이스크림 " + cnt + " 개 주문");
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}
}
