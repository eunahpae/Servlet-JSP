package com.ohgiraffers.project.board.controller;

import java.io.IOException;
import java.util.List;

import com.ohgiraffers.project.board.model.dto.BoardDTO;
import com.ohgiraffers.project.board.model.service.BoardService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/thumbnail/list")
public class ThumbnailSelectListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BoardService boardService = new BoardService();
		
		List<BoardDTO> thumbnailList = boardService.selectThumbnailList();
		
		for(BoardDTO board : thumbnailList) {
			System.out.println(board);
		}
		
		String path = "";
		if(thumbnailList != null) {
			path = "/WEB-INF/views/thumbnail/thumbnailList.jsp";
			request.setAttribute("thumbnailList", thumbnailList);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "썸네일 게시판 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
