package com.wu.book.dao;

import java.util.ArrayList;

import com.wu.book.dto.BoardcontentDto;

public interface BDao {
	
	public ArrayList<BoardcontentDto> boardlistDao();
	public void boardwriteDao(String btitle, String bcontent, String userId);
	public ArrayList<BoardcontentDto> boardviewDao(int bnum);
	public void boardmodifyDao(int bnum, String btitle, String bcontent);
	public void boarddeleteDao(int bnum);
}
