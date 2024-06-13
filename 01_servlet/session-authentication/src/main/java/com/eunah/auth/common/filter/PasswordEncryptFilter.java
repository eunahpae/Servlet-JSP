package com.eunah.auth.common.filter;

import java.io.IOException;

import com.eunah.auth.common.wrapper.EncryptRequestWrapper;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;

@WebFilter("/member/*")
public class PasswordEncryptFilter extends HttpFilter implements Filter {

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		EncryptRequestWrapper wrapper = new EncryptRequestWrapper((HttpServletRequest) request);
		chain.doFilter(wrapper, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}
}
