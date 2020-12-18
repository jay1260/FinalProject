package com.food.sbproject1.place;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlaceService {

	@Autowired
	private PlaceMapper placeMapper;
	
	// 게시글 수 보내기
	public long getCount() throws Exception{
		return placeMapper.getCount();
	}
	
	// 상세 글 조회
	public PlaceVO getOne(PlaceVO placeVO) throws Exception{
		return placeMapper.getOne(placeVO);
	}
	
	// 맛집 추천 리스트
	public List<PlaceVO> getList() throws Exception{
		return placeMapper.getList();
	}
	
	// 맛집 등록
	public int setInsert(PlaceVO placeVO) throws Exception{
		return placeMapper.setInsert(placeVO);
	}
}
