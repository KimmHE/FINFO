package com.finfo.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ReviewVO {
	private int r_NO;
	private int f_NO;
	private String u_ID;
	private String r_CONTENT;
	@DateTimeFormat(pattern="yyyy/mm/dd")
	private Date r_REGDATE;
}
