package com.ohgiraffers.project.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.ohgiraffers.project.notice.model.dto.NoticeDTO;

public interface NoticeDAO {
	
	/* 공지사항 목록 전체 조회용 메소드 */
	public List<NoticeDTO> selectAllNoticeList();
	
	/* 공지사항 테이블 삽입용 메소드 */
	public int insertNotice(NoticeDTO newNotice);
	
	/* 공지사항 조회수 증가용 메소드 */
	public int incrementNoticeCount(int no);
	
	/* 공지사항 상세보기 조회용 메소드 */
	public NoticeDTO selectNoticeDetail(int no);	
	
}
