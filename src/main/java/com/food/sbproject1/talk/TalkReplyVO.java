package com.food.sbproject1.talk;

import java.sql.Date;

import lombok.Data;

@Data
public class TalkReplyVO {

	private long num;
	private String writer;
	private String reply;
	private long ref;
	private Date regDate;
}
