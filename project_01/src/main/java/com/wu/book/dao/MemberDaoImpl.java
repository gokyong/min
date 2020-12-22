package com.wu.book.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wu.book.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Inject SqlSession sql;
	
	@Override
	public void register(MemberDto dto) throws Exception {
		// TODO Auto-generated method stub
		sql.insert("MemberMapper.register", dto);
	}
	
	@Override
	public MemberDto login(MemberDto dto) throws Exception {
		
		return sql.selectOne("MemberMapper.login", dto);
	}

}
