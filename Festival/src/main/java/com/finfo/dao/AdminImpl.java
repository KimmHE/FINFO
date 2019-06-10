package com.finfo.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.finfo.domain.GenreVO;

@Repository
public class AdminImpl implements AdminDAO {

	@Inject
	 private SqlSession sql;
	 
	 private static String namespace = "com.finfo.mapper.AdminMapper";

	@Override
	public List<GenreVO> genre() throws Exception {
		return sql.selectList(namespace + ".genre");
	}
	 
}
