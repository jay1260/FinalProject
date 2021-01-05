package com.food.sbproject1.place;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class PlaceVO {

	private long num;			// 글 번호
	private String title;		// 글 제목
	private String writer;		// 작성자
	private String contents;	// 추천 이유
	private Date regDate;		// 작성날짜
	private long hit;			// 조회수
	private String menu;		// 메뉴이름
	private String restaurant;	// 식당이름	
	private String address;		// 식당주소
	private String phone;		// 식당번호
	private String openTime;	// 오픈시간
	private String closeTime;	// 마감시간
	private String price;		// 가격대
	private String rest;		// 휴무일
	
	private PlaceFileVO placeFileVO;
	
	private List<PlaceFilesVO> placeFilesVO;
		
}
