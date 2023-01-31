package com.marroticket.mapper;

import com.marroticket.umember.member.domain.UmemberVO;

public interface UmemberMapper {
	//아이디찾기
	public String findId(UmemberVO umember) throws Exception;
	
	public int updatePassword(UmemberVO umember) throws Exception;

	// 아이디를 읽어오기
	public UmemberVO readByUserId(String userId);
}
