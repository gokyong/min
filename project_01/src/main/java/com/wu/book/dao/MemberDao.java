package com.wu.book.dao;

import com.wu.book.dto.MemberDto;

public interface MemberDao {

	// 회원가입
	public void register(MemberDto dto) throws Exception;
	
	// 로그인
	public MemberDto login(MemberDto dto) throws Exception;
}
