package com.food.sbproject1.place;

import java.sql.Date;
import java.util.List;

import javax.validation.constraints.Max;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.food.sbproject1.review.ReviewVO;

import lombok.Data;

@Data
public class PlaceVO {

	private long num;			// 글 번호
	
	@NotEmpty(message = "제목을 입력해주세요.")
	private String title;		// 글 제목
	
	private String writer;		// 작성자
	private String contents;	// 추천 이유
	private Date regDate;		// 작성날짜
	private long hit;			// 조회수
	
	@NotEmpty(message = "메뉴를 입력해주세요.")
	private String menu;		// 메뉴이름
	
	@NotEmpty(message = "식당 상호를 입력해주세요.")
	private String restaurant;	// 식당이름	
	
	@NotEmpty(message = "주소를 선택해주세요.")
	private String roadFullAddr; // 식당 도로명 주소
	
	@NotEmpty(message = "전화번호를 입력해주세요.")
	private String phone;		// 식당번호
	
	@Pattern(regexp = "^(\\d{2}):(\\d{2})", message = "24시 기준 00:00형태로 입력해주세요.")
	private String openTime;	// 오픈시간
	
	@Pattern(regexp = "^(\\d{2}):(\\d{2})", message = "24시 기준 00:00형태로 입력해주세요.")
	private String closeTime;	// 마감시간
	
	@NotEmpty(message = "가격대를 입력해주세요.")
	private String price;		// 가격대
	
	private String rest;		// 휴무일
	
	private PlaceFileVO placeFileVO;
	
	private List<PlaceFilesVO> placeFilesVO;	
	
	private PlaceLikeVO placeLikeVO;
}
