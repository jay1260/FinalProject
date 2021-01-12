package com.food.sbproject1.talk;

import java.sql.Date;

import lombok.Data;

@Data
public class TalkVO {

	private long num;
	private String writer;
	private String title;
	private String contents;
	private Date regDate;
	private long hit;
}
