package com.wu.book.service;

import com.wu.book.dto.MemberDto;

public interface MemberService {

	public void register(MemberDto dto) throws Exception;
	
	public MemberDto login(MemberDto dto) throws Exception;
	
}
