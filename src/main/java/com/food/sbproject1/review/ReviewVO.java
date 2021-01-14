package com.food.sbproject1.review;

import java.sql.Date;

import com.food.sbproject1.member.MemberFileVO;
import com.food.sbproject1.member.MemberVO;

import lombok.Data;

@Data
public class ReviewVO {

	private long num;
	private String id;
	private String contents;
	private long star;
	private Date regDate;
	private long ref;
	private String restaurant;
	
	private MemberVO memberVO;
	private MemberFileVO memberFileVO;
}
