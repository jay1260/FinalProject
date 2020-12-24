package com.food.sbproject1.util;

import lombok.Data;

@Data
public class Pager {
	
	// 검색
	private String search;

	private long curPage;	// 현재 페이지 번호
	private long perPage;	// 한 페이지에 보여줄 글의 개수

	private long startRow;
	
	private long startNum;
	private long lastNum;
	
	private boolean beforeCheck;
	private boolean nextCheck;
	
	// Pager 생성자
	public Pager() {
		this.perPage = 12;
	}
	
	// search 결과가 null값일 경우 ""문자열 넣어준다.
		public String getSearch() {
			if(this.search ==null) {
				this.search ="";
			}
			
			return this.search;
		}
		
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
	
	// Page 계산하는 메서드
		public void makePage(long totalCount) {
			
			//2. 전체 페이지의 개수
			long totalPage = totalCount/this.getPerPage();
			if(totalCount%this.getPerPage()!=0) {
				totalPage++;
			}
			
			//3. 전체 블럭의 수 구하기
			long perBlock = 1;
			long totalBlock = totalPage/perBlock;
			if(totalPage%perBlock!=0) {
				totalBlock++;
			}
			
			//4. curPage를 이용해서 현재 블럭번호 찾기
			long curBlock = this.getCurPage()/perBlock;
			if(this.getCurPage()%perBlock!=0) {
				curBlock++;
			}
			
			//5. 현재 블럭번호로 시작번호 , 끝 번호
			this.startNum = (curBlock-1)*perBlock+1;
			this.lastNum = curBlock*perBlock;
			
			//curBlock이 마지막 Block(totalBock)일 때 lastNum 변경
			if(curBlock==totalBlock) {
				this.lastNum = totalPage;
			}
			
			if(curBlock>1) {
				this.beforeCheck=true;
			}
			
			if(curBlock<totalBlock) {
				this.nextCheck=true;
			}
			
			System.out.println("totalPage : "+ totalPage);
			System.out.println("curBlock : " + curBlock);
			System.out.println("totalBlock : " + totalBlock);
			System.out.println("StartNum : "+this.getStartNum());
			System.out.println("LastNum : "+this.getLastNum());
			System.out.println("isBefore : "+this.beforeCheck);
			System.out.println("isAfter : "+this.nextCheck);
		}
	
}
