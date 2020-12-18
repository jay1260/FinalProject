package com.food.sbproject1.place;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlaceService {

	@Autowired
	private PlaceMapper placeMapper;
	
	// 맛집 추천 리스트
	public List<PlaceVO> getList() throws Exception{
		return placeMapper.getList();
	}
	
	// 맛집 등록
	public int setInsert(PlaceVO placeVO) throws Exception{
		return placeMapper.setInsert(placeVO);
	}
}
