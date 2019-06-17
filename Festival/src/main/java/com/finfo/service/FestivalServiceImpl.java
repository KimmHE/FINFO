package com.finfo.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.finfo.dao.FestivalDAO;
import com.finfo.domain.Criteria;
import com.finfo.domain.FestivalVO;
import com.finfo.domain.ReviewVO;

@Service
@Repository
public class FestivalServiceImpl implements FestivalService {

	@Inject
	private FestivalDAO dao;
	
	@Override
	public void write(FestivalVO vo) throws Exception {
		dao.write(vo);
	}

	@Override
	public FestivalVO read(int f_NO) throws Exception {
		return dao.read(f_NO);
	}

	@Override
	public void update(FestivalVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(int f_NO) throws Exception {
		dao.delete(f_NO);
	}

	@Override
	public List<FestivalVO> list() throws Exception {	
		return dao.list();
	}

	@Override
	public void registReview(ReviewVO review) throws Exception {
		dao.registReview(review);
	}

	@Override
	public List<ReviewVO> reviewList(int f_NO) throws Exception {
		return dao.reviewList(f_NO);
	}

	@Override
	public void deleteReview(ReviewVO review) throws Exception {
		dao.deleteReview(review);
	}

	@Override
	public String reviewIdCheck(int r_NO) throws Exception {
		return dao.reviewIdCheck(r_NO);
	}

	@Override
	public List<FestivalVO> listPage(Criteria cri) throws Exception {
		return dao.listPage(cri);
	}

	@Override
	public int listCount() throws Exception {
		return dao.listCount();
	}

	@Override
	public void modifyReview(ReviewVO review) throws Exception {
		dao.modifyReview(review);
	}

	@Override
	public List<FestivalVO> list2() throws Exception {
		return dao.list2();
	}

	@Override
	public List<FestivalVO> listGenre() throws Exception {
		return dao.listGenre();
	}

}
