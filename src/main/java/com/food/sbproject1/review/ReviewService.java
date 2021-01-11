package com.food.sbproject1.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.sbproject1.util.Pager;

@Service
public class ReviewService {

	@Autowired
	private ReviewMapper reviewMapper;
	
	// 리뷰 삭제
	public int setReviewDelete(ReviewVO reviewVO) throws Exception{
		return reviewMapper.setReviewDelete(reviewVO);
	}
	
	// 리뷰 작성
	public int setInsert(ReviewVO reviewVO) throws Exception{
		return reviewMapper.setInsert(reviewVO);
	}
	
	// 별점 평균
	public Float getStarAvg(ReviewVO reviewVO) throws Exception{
		return reviewMapper.getStarAvg(reviewVO);
	}
	
	// 해당 글 리뷰 정보
	public List<ReviewVO> getReviewList(Pager pager) throws Exception{
		pager.makeRow(5);
		long totalCount = reviewMapper.getReviewCount(pager);
		pager.makePage(totalCount, 1,5);
		return reviewMapper.getReviewList(pager);
	}
	
	// 해당 글 리뷰 개수
	public Long getReviewCount(Pager pager) throws Exception{
		return reviewMapper.getReviewCount(pager);
	}
	
	// 나의 리뷰
	public List<ReviewVO> getMyReview(ReviewVO reviewVO) throws Exception{
		return reviewMapper.getMyReview(reviewVO);
	}
}
