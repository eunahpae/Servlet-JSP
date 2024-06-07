package com.eunah.listener.section02.session;

import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionAttributeListener;
import jakarta.servlet.http.HttpSessionBindingEvent;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

@WebListener
public class SessionListenerTest implements HttpSessionListener, HttpSessionAttributeListener {

	public SessionListenerTest() {
		System.out.println("session listener 인스턴스 생성");
	}

	public void attributeReplaced(HttpSessionBindingEvent se) {
		System.out.println("session attribute 수정");
		System.out.println("session 에서 수정된 attr : " + se.getName() + ", " + se.getValue());
	}

	public void sessionCreated(HttpSessionEvent se) {
		System.out.println("session 생성!!!");
		System.out.println("생성된 session " + se.getSession().getId());
	}

	public void sessionDestroyed(HttpSessionEvent se) {
		System.out.println("session 소멸!!!");
	}

	public void attributeRemoved(HttpSessionBindingEvent se) {
		System.out.println("session attribute 삭제");
	}

	public void attributeAdded(HttpSessionBindingEvent se) {
		System.out.println("session attribute 추가");
	}

}
