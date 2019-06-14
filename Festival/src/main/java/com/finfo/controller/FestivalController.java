package com.finfo.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finfo.domain.Criteria;
import com.finfo.domain.FestivalVO;
import com.finfo.domain.UserVO;
import com.finfo.domain.PageDTO;
import com.finfo.domain.ReviewVO;
import com.finfo.service.FestivalService;

@Controller
@RequestMapping("/festival")
public class FestivalController {
	
	@Inject
	FestivalService service;
	
	private static final Logger logger = LoggerFactory.getLogger(FestivalController.class);
	
	@RequestMapping("/list")
	public void list(Model model) throws Exception{
		List<FestivalVO> list = null;
		list = service.list();
		
		model.addAttribute("list",list);
		logger.info("do List 실행");
	}
	
	@RequestMapping("/listPage")
	public void listPage(@ModelAttribute("cri") Criteria cri, Model model) throws Exception{
		List<FestivalVO> list = null;
		list = service.listPage(cri);
		
		model.addAttribute("list",list);
		
		PageDTO page = new PageDTO();
		page.setCri(cri);
		page.setTotalCount(service.listCount());
		model.addAttribute("page", page);
		
		logger.info("do List Page실행");
	}
	
	@RequestMapping("/read")
	public void getread(@RequestParam("f_NO") int f_NO, Model model) throws Exception {
		FestivalVO read=null;
		read = service.read(f_NO);
		
		model.addAttribute("read", read);
		logger.info("do READ 실행");
	}
	
	/*
	 //댓글 작성
	 @RequestMapping(value="/read", method = RequestMethod.POST)
	
	public String registerReiew (ReviewVO review, HttpSession session) throws Exception {
		
		UserVO user = (UserVO)session.getAttribute("user");
		review.setU_ID(user.getU_EMAIL());
		
		service.registReview(review);
		
		logger.info("do Register Review 실행");
		
		return "redirect:/festival/read?f_NO=" + review.getF_NO();
	}
	 */
	
	@ResponseBody
	@RequestMapping(value="/read/registerReview", method = RequestMethod.POST)
	public void resisterReview(ReviewVO review,HttpSession session) throws Exception{
		logger.info("register review");
		UserVO user = (UserVO)session.getAttribute("user");
		review.setU_EMAIL(user.getU_EMAIL());
		
		service.registReview(review);
	}
	
	//리뷰 리스트 ->festival조회
	@RequestMapping(value="/read", method = RequestMethod.GET)
	public void getReview (@RequestParam("f_NO") int f_NO, Model model) throws Exception {
		FestivalVO read = service.read(f_NO);
		model.addAttribute("read", read);
		
		/*List<ReviewVO> review = service.reviewList(f_NO);
		model.addAttribute("review", review);
		*/
		logger.info("do Review List 실행");
	}
	
	//리뷰 리스트
	@ResponseBody
	@RequestMapping(value = "/read/reviewList", method = RequestMethod.GET)
	public List<ReviewVO> getReviewList(@RequestParam("f_NO") int f_NO) throws Exception {
	 logger.info("get review list");
	   
	 List<ReviewVO> review = service.reviewList(f_NO);
	 
	 return review;
	} 
	
	//리뷰 삭제 
	@ResponseBody
	@RequestMapping(value="/read/deleteReview", method = RequestMethod.POST)
	public int getReviewList(ReviewVO review,HttpSession session) throws Exception{
		logger.info("delete review");
		
		int res=0;
		
		UserVO user = (UserVO)session.getAttribute("user");
		String u_EMAIL = service.reviewIdCheck(review.getR_NO());
		
		if(user.getU_EMAIL().equals(u_EMAIL)) {
			review.setU_EMAIL(user.getU_EMAIL());
			service.deleteReview(review);
			
			res=1;
		}
		
		return res;
	}
	
	//리뷰 삭제 
		@ResponseBody
		@RequestMapping(value="/read/modifyReview", method = RequestMethod.POST)
		public int modifyReview (ReviewVO review,HttpSession session) throws Exception{
			logger.info("modify review");
			
			int result=0;
			
			UserVO user = (UserVO)session.getAttribute("user");
			String u_EMAIL = service.reviewIdCheck(review.getR_NO());
			
			if(user.getU_EMAIL().equals(u_EMAIL)) {
				review.setU_EMAIL(user.getU_EMAIL());
				service.deleteReview(review);
				
				result=1;
			}
			
			return result;
		}
	
}
