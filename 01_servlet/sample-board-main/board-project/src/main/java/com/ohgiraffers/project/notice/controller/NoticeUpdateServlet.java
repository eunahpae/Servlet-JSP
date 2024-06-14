package com.ohgiraffers.project.notice.controller;

import java.io.IOException;

import com.ohgiraffers.project.notice.model.dto.NoticeDTO;
import com.ohgiraffers.project.notice.model.service.NoticeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/notice/update")
public class NoticeUpdateServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		NoticeService noticeService = new NoticeService();
		NoticeDTO notice = noticeService.selectNoticeDetail(no);
		
		String path = "";
		if(notice != null) {
			path = "/WEB-INF/views/notice/updateForm.jsp";
			request.setAttribute("notice", notice);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 수정용 조회하기 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
