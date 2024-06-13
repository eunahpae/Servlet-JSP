package com.eunah.auth.member.model.service;

import org.apache.ibatis.session.SqlSession;

import com.eunah.auth.member.model.dao.MemberDAO;
import com.eunah.auth.member.model.dto.MemberDTO;
import static com.eunah.auth.common.mybatis.Template.getSqlSession;

public class MemberService {

	private MemberDAO memberDAO;
	
	public int registMember(MemberDTO requestMember) {
	
		SqlSession session = getSqlSession();
		memberDAO = session.getMapper(MemberDAO.class);
		
		int result = memberDAO.insertMember(requestMember);
		System.out.println("test:" + result);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
}