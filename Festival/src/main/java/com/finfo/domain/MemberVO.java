package com.finfo.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberVO {
	private int u_NO;
	private String u_PASSWORD;
	private String u_EMAIL;
	private String u_NAME;
	private String u_LIKE1;
	private String u_LIKE2;
	private int	u_CK;
}
