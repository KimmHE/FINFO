package com.finfo.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.finfo.domain.FestivalVO;
import com.finfo.service.FestivalService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Inject
	FestivalService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "/finfo/main";
	}

	public void list(Model model) throws Exception {
		List<FestivalVO> list = null;
		list = service.list();

		List<FestivalVO> list2 = null;
		list2 = service.list2();
		
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		
		logger.info("do List 실행");
		logger.info("do List2 실행");
		
		
	}
	@RequestMapping("/")
	public void listGenre(Model model) throws Exception {
		List<FestivalVO> listGenre = null;
		listGenre = service.listGenre();

		model.addAttribute("listGenre", listGenre);
		
		logger.info("do List3 실행");
		
		
	}

}
