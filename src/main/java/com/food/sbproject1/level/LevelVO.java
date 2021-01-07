package com.food.sbproject1.level;

import java.sql.Date;

import lombok.Data;

@Data
public class LevelVO {

	private long num;
	private String writer;
	private String title;
	private String contents;
	private Date regDate;
	private long hit;
	private long ref;
	private long step;
	private long depth;
	
}
