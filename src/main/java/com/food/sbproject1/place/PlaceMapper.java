package com.food.sbproject1.place;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PlaceMapper {

	// 상세 글 조회
	public PlaceVO getOne(PlaceVO placeVO) throws Exception;
	
	// 맛집 추천글 리스트
	public List<PlaceVO> getList() throws Exception;
	
	// 맛집 등록
	public int setInsert(PlaceVO placeVO) throws Exception;
	
}
