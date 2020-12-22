package com.wu.book.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wu.book.dao.MemberDao;
import com.wu.book.dto.MemberDto;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject MemberDao dao;
	
	@Override
	public void register(MemberDto dto) throws Exception {
		// TODO Auto-generated method stub
		dao.register(dto);
	}
	
	@Override
	public MemberDto login(MemberDto dto) throws Exception {
		return dao.login(dto);
	}

}
