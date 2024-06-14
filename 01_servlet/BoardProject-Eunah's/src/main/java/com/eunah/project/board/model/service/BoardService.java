package com.eunah.project.board.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.eunah.project.board.model.dao.BoardDAO;
import com.eunah.project.board.model.dto.AttachmentDTO;
import com.eunah.project.board.model.dto.BoardDTO;
import com.eunah.project.common.paging.SelectCriteria;

import static com.eunah.project.common.mybatis.Template.getSqlSession;

public class BoardService {
	
	private BoardDAO boardDAO;
	
	/* 페이징 처리를 위한 전체 게시물 수 조회용 메소드 */
	public int selectTotalCount(Map<String, String> searchMap) {
		
		SqlSession session = getSqlSession();
		boardDAO = session.getMapper(BoardDAO.class);
		
		int totalCount = boardDAO.selectTotalCount(searchMap);
		
		session.close();
		
		return totalCount;
	}
	
	/* 게시물 전체 조회용 메소드 */
	public List<BoardDTO> selectBoardList(SelectCriteria selectCriteria) {
		
		SqlSession session = getSqlSession();
		boardDAO = session.getMapper(BoardDAO.class);
		
		selectCriteria.setStartRow(selectCriteria.getStartRow() - 1);
		
		List<BoardDTO> boardList = boardDAO.selectBoardList(selectCriteria);
		
		session.close();
		
		return boardList;
	}
	
	/* 신규 게시물 등록용 메소드 */
	public int insertBoard(BoardDTO newBoard) {
		
		SqlSession session = getSqlSession();
		boardDAO = session.getMapper(BoardDAO.class);
		
		int result = boardDAO.insertBoard(newBoard);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 썸네일 게시판 조회용 메소드 */
	public List<BoardDTO> selectThumbnailList() {
		
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		boardDAO = session.getMapper(BoardDAO.class);
		
		/* List 조회 */
		List<BoardDTO> thumbnailList = boardDAO.selectThumbnailList(session);
		
		/* Connection 닫기 */
		session.close();
		
		/* 조회 결과 반환 */
		return thumbnailList;
	}
	
	public int insertThumbnail(BoardDTO thumbnail) {
		
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		boardDAO = session.getMapper(BoardDAO.class);
		
		/* 최종적으로 반환할 result 선언 */
		int result = 0;
		
		/* 먼저 board 테이블부터 thumbnail 내용부터 insert 한다. */
		int boardResult = boardDAO.insertThumbnailContent(thumbnail);
		
		System.out.println("boardResult : " + thumbnail);
	
		/* Attachment 리스트를 불러온다. */
		List<AttachmentDTO> fileList = thumbnail.getAttachmentList();
		
		/* fileList에 boardNo값을 넣는다. */
		for(int i = 0; i < fileList.size(); i++) {
			fileList.get(i).setRefBoardNo(thumbnail.getNo());
		}
		
		/* Attachment 테이블에 list size만큼 insert 한다. */
		int attachmentResult = 0;
		for(int i = 0; i < fileList.size(); i++) {
			attachmentResult += boardDAO.insertAttachment(fileList.get(i));
		}
		
		/* 모든 결과가 성공이면 트랜젝션을 완료한다. */
		if(boardResult > 0 && attachmentResult == fileList.size()) {
			session.commit();
			result = 1;
		} else {
			session.rollback();
		}
		
		/* Connection을 닫는다. */
		session.close();
		
		/* 수행 결과를 리턴한다. */
		return result;
	}

	public BoardDTO selectOneThumbnailBoard(int no) {
		
		SqlSession session = getSqlSession();
		boardDAO = session.getMapper(BoardDAO.class);
		
		BoardDTO thumbnail= null;
		
		int result = boardDAO.incrementBoardCount(no);
		
		if(result > 0) {
			thumbnail = boardDAO.selectOneThumbnailBoard(no);
			
			if(thumbnail != null) {
				session.commit();
			} else {
				session.rollback();
			}
		} else {
			session.rollback();
		}
		
		session.close();
		
		return thumbnail;
		
	}

}
