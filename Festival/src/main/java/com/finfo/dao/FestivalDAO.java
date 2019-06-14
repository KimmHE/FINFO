package com.finfo.dao;

import java.util.List;

import com.finfo.domain.Criteria;
import com.finfo.domain.FestivalVO;
import com.finfo.domain.ReviewVO;

public interface FestivalDAO {
	
	public void write(FestivalVO vo) throws Exception;
	public FestivalVO read(int f_NO) throws Exception;
	public void update(FestivalVO vo) throws Exception;
	public void delete(int f_NO) throws Exception;
	public List<FestivalVO> list() throws Exception;
	public List<FestivalVO> listPage(Criteria cri) throws Exception;
	public int listCount() throws Exception;
	public void registReview(ReviewVO review) throws Exception;
	public List<ReviewVO> reviewList(int f_NO) throws Exception;
	public void deleteReview(ReviewVO review) throws Exception;
	public String reviewIdCheck(int r_NO) throws Exception;
	public void modifyReview(ReviewVO review) throws Exception;
}
