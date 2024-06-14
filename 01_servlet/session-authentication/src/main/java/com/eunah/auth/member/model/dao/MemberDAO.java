package com.eunah.auth.member.model.dao;

import com.eunah.auth.member.model.dto.MemberDTO;

public interface MemberDAO {

	int insertMember(MemberDTO requestMember);

	String selectEncryptedPwd(MemberDTO requestMember);

	MemberDTO selectLoginMember(MemberDTO requestMember);

}
