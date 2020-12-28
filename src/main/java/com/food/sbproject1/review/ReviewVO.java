package com.food.sbproject1.review;

import java.sql.Date;

import lombok.Data;

@Data
public class ReviewVO {

	private long num;
	private String writer;
	private String contents;
	private long start;
	private Date regDate;
	private long ref;
}
