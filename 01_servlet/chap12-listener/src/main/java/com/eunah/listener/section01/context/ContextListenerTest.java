package com.eunah.listener.section01.context;

import jakarta.servlet.ServletContextAttributeEvent;
import jakarta.servlet.ServletContextAttributeListener;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class ContextListenerTest implements ServletContextListener, ServletContextAttributeListener {

	public ContextListenerTest() {
		System.out.println("context listener 인스턴스 생성");
	}

	public void attributeReplaced(ServletContextAttributeEvent scae) {
		System.out.println("context attribute 수정");
	}

	public void attributeRemoved(ServletContextAttributeEvent scae) {
		System.out.println("context attribute 삭제");
	}

	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("context init!!!");
	}

	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("context destroy!!!");
	}

	public void attributeAdded(ServletContextAttributeEvent scae) {
		System.out.println("context attribute 추가");
	}

}
