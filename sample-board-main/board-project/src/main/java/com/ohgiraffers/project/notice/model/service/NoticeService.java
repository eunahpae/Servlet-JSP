package com.ohgiraffers.project.notice.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.ohgiraffers.project.member.model.dao.MemberDAO;
import com.ohgiraffers.project.notice.model.dao.NoticeDAO;
import com.ohgiraffers.project.notice.model.dto.NoticeDTO;

import static com.ohgiraffers.project.common.mybatis.Template.getSqlSession;

public class NoticeService {
	
	private NoticeDAO noticeDAO;
	
	/* 공지사항 전체 목록 조회용 메소드 */
	public List<NoticeDTO> selectAllNoticeList() {
		
		SqlSession session = getSqlSession();
		noticeDAO = session.getMapper(NoticeDAO.class);
		
		List<NoticeDTO> noticeList = noticeDAO.selectAllNoticeList();
		
		session.close();
		
		return noticeList;
	}
	
	/* 신규 공지 사항 등록용 메소드 */
	public int insertNotice(NoticeDTO newNotice) {
		
		SqlSession session = getSqlSession();
		noticeDAO = session.getMapper(NoticeDAO.class);
		
		int result = noticeDAO.insertNotice(newNotice);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 공지사항 상세보기용 메소드 */
	public NoticeDTO selectNoticeDetail(int no) {
		
		SqlSession session = getSqlSession();
		noticeDAO = session.getMapper(NoticeDAO.class);
		
		NoticeDTO noticeDetail = null;
		
		int result = noticeDAO.incrementNoticeCount(no);
		
		if(result > 0) {
			noticeDetail = noticeDAO.selectNoticeDetail(no);
			
			if(noticeDetail != null) {
				session.commit();
			} else {
				session.rollback();
			}
		} else {
			session.rollback();
		}
		
		session.close();
		
		return noticeDetail;
	}
	
}
