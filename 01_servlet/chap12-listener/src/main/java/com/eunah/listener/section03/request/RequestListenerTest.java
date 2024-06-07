package com.eunah.listener.section03.request;

import jakarta.servlet.ServletRequestAttributeEvent;
import jakarta.servlet.ServletRequestAttributeListener;
import jakarta.servlet.ServletRequestEvent;
import jakarta.servlet.ServletRequestListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class RequestListenerTest implements ServletRequestListener, ServletRequestAttributeListener {

	public RequestListenerTest() {
		System.out.println("request listener 인스턴스 생성");
	}

	public void attributeRemoved(ServletRequestAttributeEvent srae) {
		System.out.println("request attribute 삭제");
	}

	public void requestInitialized(ServletRequestEvent sre) {
		System.out.println("request 생성~!");
	}

	public void requestDestroyed(ServletRequestEvent sre) {
		System.out.println("request 소멸~!");
	}

	public void attributeReplaced(ServletRequestAttributeEvent srae) {
		System.out.println("request attribute 수정");
		System.out.println(srae.getName() + ", " + srae.getValue());
	}

	public void attributeAdded(ServletRequestAttributeEvent srae) {
		System.out.println("request attribute 추가");
	}

}
