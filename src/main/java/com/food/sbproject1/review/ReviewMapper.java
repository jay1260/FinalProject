package com.food.sbproject1.review;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.food.sbproject1.util.Pager;

@Mapper
public interface ReviewMapper {

	// 리뷰 작성
	public int setInsert(ReviewVO reviewVO) throws Exception;
	
	// 별점 평균
	public Float getStarAvg(ReviewVO reviewVO) throws Exception;

	// 해당 글 리뷰정보
	public List<ReviewVO> getReviewList(Pager pager) throws Exception;
	
	// 해당 글 리뷰 개수
	public Long getReviewCount(Pager pager) throws Exception;
	
	// 리뷰 삭제
	public int setReviewDelete(ReviewVO reviewVO) throws Exception;
	
	// 나의 리뷰
	public List<ReviewVO> getMyReview(ReviewVO reviewVO) throws Exception;
}
