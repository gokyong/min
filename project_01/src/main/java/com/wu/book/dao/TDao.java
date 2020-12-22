package com.wu.book.dao;

import java.util.ArrayList;

import com.wu.book.dto.TodolistDto;

public interface TDao {

	public ArrayList<TodolistDto> todolistDao(int tday, String userId);
	public void todosuccessDao(int tnum, String userId);
	public void todoreturnDao(int tnum, String userID);
	public void todowriteDao(String ttime1, String ttime2, String tdo, int tday, String userId);
	public void tododelete(int tnum, String userId);
	public ArrayList<TodolistDto> todooneDao(int tday, String userId);
	public void todomodifyDao(String ttime1, String ttime2, String tdo, int tday, int tnum, String userId);
	public int todocountaDao(int tday, String userId);
	public int todocountsDao(int tday, String userId);
}
