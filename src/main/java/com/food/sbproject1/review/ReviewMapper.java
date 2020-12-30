package com.food.sbproject1.review;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReviewMapper {

	// 리뷰 작성
	public int setInsert(ReviewVO reviewVO) throws Exception;
	
	// 별점 평균
	public Float getStarAvg(ReviewVO reviewVO) throws Exception;

	// 해당 글 리뷰정보
	public List<ReviewVO> getReviewList(ReviewVO reviewVO) throws Exception;
}
