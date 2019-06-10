package com.finfo.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.finfo.dao.AdminDAO;
import com.finfo.domain.GenreVO;

@Service
@Repository
public class AdminServiceImpl implements AdminService {

	@Inject
	private AdminDAO dao;

	@Override
	public List<GenreVO> genre() throws Exception {
		return dao.genre();
	}

}
