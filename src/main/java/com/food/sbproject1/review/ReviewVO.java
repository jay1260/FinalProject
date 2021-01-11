package com.food.sbproject1.review;

import java.sql.Date;

import lombok.Data;

@Data
public class ReviewVO {

	private long num;
	private String writer;
	private String contents;
	private long star;
	private Date regDate;
	private long ref;
	private String restaurant;
}
