package com.food.sbproject1.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewService {

	@Autowired
	private ReviewMapper reviewMapper;
	
	// 리뷰 작성
	public int setInsert(ReviewVO reviewVO) throws Exception{
		return reviewMapper.setInsert(reviewVO);
	}
	
	// 별점 평균
	public Float getStarAvg(ReviewVO reviewVO) throws Exception{
		return reviewMapper.getStarAvg(reviewVO);
	}
	
	// 해당 글 리뷰 정보
	public List<ReviewVO> getReviewList(ReviewVO reviewVO) throws Exception{
		return reviewMapper.getReviewList(reviewVO);
	}
}
