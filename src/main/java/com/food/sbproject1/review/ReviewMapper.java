package com.food.sbproject1.review;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReviewMapper {

	// 리뷰 작성
	public int setInsert(ReviewVO reviewVO) throws Exception;
}
