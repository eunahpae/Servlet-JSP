package com.ohgiraffers.project.board.controller;

import java.io.IOException;

import com.ohgiraffers.project.board.model.dto.BoardDTO;
import com.ohgiraffers.project.board.model.service.BoardService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/thumbnail/detail")
public class ThumbnailDetailServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		BoardDTO thumbnail = new BoardService().selectOneThumbnailBoard(no);
		System.out.println(thumbnail);
		
		String path = "";
		if(thumbnail != null) {
			path = "/WEB-INF/views/thumbnail/thumbnailDetail.jsp";
			request.setAttribute("thumbnail", thumbnail);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "썸네일 게시판 상세 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}

