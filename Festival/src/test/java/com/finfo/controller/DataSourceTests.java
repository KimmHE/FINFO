package com.finfo.controller;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.util.Date;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.finfo.domain.FestivalVO;
import com.finfo.service.FestivalService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/root-context.xml")
@Log4j
public class DataSourceTests {
	
	@Setter(onMethod_ = { @Autowired })
	private DataSource dataSource;
	
	@Setter(onMethod_ = { @Autowired })
	private SqlSessionFactory sqlSessionFactory;
	
	@Test
	public void testConnection() {
		try (Connection con = dataSource.getConnection()) {
			
			log.info(con);
			
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

	@Test
	public void testCoding() {
		try (SqlSession session = sqlSessionFactory.openSession();
				Connection con = session.getConnection();) {
			
			log.info(session);
			log.info(con);
			
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}
	
	@Inject
	private FestivalService service;
	
	@Test
	public void writeTest() throws Exception{
		FestivalVO vo = new FestivalVO();
		
		vo.setF_SUBJECT("test1");
		vo.setF_START(null);
		vo.setF_END(null);
		vo.setF_PLACE("test1");
		vo.setF_TAG1("test1");
		vo.setF_TAG2("test1");
		vo.setG_NO(1);
		vo.setF_THUMBNAIL("test1");
		vo.setF_DESC("test1");
		vo.setF_IMGURL("test1");
		vo.setF_URL("test1");
		vo.setF_SHOWLOWERPRICE("test1");
		vo.setF_STATE(1);
		
		service.write(vo);
		
	}
}
