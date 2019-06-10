package com.finfo.dao;

import java.util.List;

import com.finfo.domain.GenreVO;

public interface AdminDAO {
	
	public List<GenreVO> genre() throws Exception;
}
