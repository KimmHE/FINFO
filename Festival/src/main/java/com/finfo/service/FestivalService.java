package com.finfo.service;

import java.util.List;

import com.finfo.domain.FestivalVO;
import com.finfo.domain.ReviewVO;

public interface FestivalService {

	public void write(FestivalVO vo) throws Exception;
	public FestivalVO read(int f_NO) throws Exception;
	public void update(FestivalVO vo) throws Exception;
	public void delete(int f_NO) throws Exception;
	public List<FestivalVO> list() throws Exception;
	public void registReview(ReviewVO review) throws Exception;
	public List<ReviewVO> reviewList(int f_NO) throws Exception;
	public void deleteReview(ReviewVO review) throws Exception;
	public String reviewIdCheck(int r_NO) throws Exception;
}
