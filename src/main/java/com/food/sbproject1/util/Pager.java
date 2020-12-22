package com.food.sbproject1.util;

import lombok.Data;

@Data
public class Pager {

	private long curPage;	// 현재 페이지 번호
	private long perPage;	// 한 페이지에 보여줄 글의 개수

	private long startRow;
	
	// Pager 생성자
	public Pager() {
		this.perPage = 12;
	}
	
	
	// 1. 전체 글의 개수 조회
	
	// curPage 수정
	public void setCurPage(long curPage) {
		if(curPage==0) {
			this.curPage=1;
		}else {
			this.curPage=curPage;
		}
	}
	public long getCurPage() {
		if(this.curPage==0) {
			this.curPage=1;
		}
		return this.curPage;
	}
	
	// Row 계산하는 메서드
	public void makeRow() {
		// startRow 계산하는 메서드
		this.startRow = (this.getCurPage()-1)*perPage;
	}
	
}
