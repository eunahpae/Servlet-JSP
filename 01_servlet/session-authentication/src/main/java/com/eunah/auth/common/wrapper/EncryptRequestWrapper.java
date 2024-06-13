package com.eunah.auth.common.wrapper;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletRequestWrapper;

public class EncryptRequestWrapper extends HttpServletRequestWrapper {

	public EncryptRequestWrapper(HttpServletRequest request) {
		super(request);
	}

	public String getParameter(String name) {

		if ("memberPwd".equals(name)) {
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			return passwordEncoder.encode(super.getParameter(name));
		} else {
			return super.getParameter(name);
		}

	}

}
