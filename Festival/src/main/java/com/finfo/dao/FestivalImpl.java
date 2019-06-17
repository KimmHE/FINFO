package com.finfo.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.finfo.domain.Criteria;
import com.finfo.domain.FestivalVO;
import com.finfo.domain.ReviewVO;

@Repository
public class FestivalImpl implements FestivalDAO {

	@Inject
	 private SqlSession sql;
	 
	 private static String namespace = "com.finfo.mapper.FestivalMapper";
	 
	@Override
	public void write(FestivalVO vo) throws Exception {
		sql.insert(namespace+".write", vo);
	}
	
	@Override
	public FestivalVO read(int f_NO) throws Exception {
		return sql.selectOne(namespace+".read", f_NO);
	}
	
	@Override
	public void update(FestivalVO vo) throws Exception {
		sql.update(namespace+".update", vo);
	}
	
	@Override
	public void delete(int f_NO) throws Exception {
		sql.delete(namespace+".delete", f_NO);
	}

	@Override
	public List<FestivalVO> list() throws Exception {
		return sql.selectList(namespace+".list");
	}

	@Override
	public void registReview(ReviewVO review) throws Exception {
		sql.delete(namespace+".registReview", review);
	}

	@Override
	public List<ReviewVO> reviewList(int f_NO) throws Exception {
		return sql.selectList(namespace + ".reviewList", f_NO);
	}

	@Override
	public void deleteReview(ReviewVO review) throws Exception {
		sql.delete(namespace+".deleteReview", review);
	}

	@Override
	public String reviewIdCheck(int r_NO) throws Exception {
		return sql.selectOne(namespace+".reviewIdCheck", r_NO);
	}

	@Override
	public List<FestivalVO> listPage(Criteria cri) throws Exception {
		return sql.selectList(namespace+".listPage",cri);
	}

	@Override
	public int listCount() throws Exception {
		return sql.selectOne(namespace+".listCount");
	}

	@Override
	public void modifyReview(ReviewVO review) throws Exception {
		sql.update(namespace +".modifyReview",review);
	}

	@Override
	public List<FestivalVO> list2() throws Exception {
		return sql.selectList(namespace+".list2");
	}
	
	@Override
	public List<FestivalVO> listGenre() throws Exception {
		return sql.selectList(namespace+".listGenre");
	}

}
