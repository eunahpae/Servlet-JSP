package com.ohgiraffers.project.board.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.ohgiraffers.project.board.model.dto.AttachmentDTO;
import com.ohgiraffers.project.board.model.dto.BoardDTO;
import com.ohgiraffers.project.common.paging.SelectCriteria;

public interface BoardDAO {
	
	public int selectTotalCount(Map<String, String> searchMap);

	public List<BoardDTO> selectBoardList(SelectCriteria selectCriteria);

	public int insertBoard(BoardDTO newBoard);
	
	/* 썸네일게시판 목록 조회용 메소드 */
	public List<BoardDTO> selectThumbnailList(SqlSession session);
	
	/* 썸네일 제목과 내용 insert용 메소드 */
	public int insertThumbnailContent(BoardDTO thumbnail);
	
	/* Attachment 테이블에 insert */
	public int insertAttachment(AttachmentDTO file);
	
	public int incrementBoardCount(int no);

	public BoardDTO selectOneThumbnailBoard(int no);
}
