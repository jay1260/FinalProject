package com.food.sbproject1.notice;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeVO {

	private long num;
	private String writer;
	private String title;
	private String contents;
	private Date regDate;
	private long hit;
}
