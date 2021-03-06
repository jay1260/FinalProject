package com.food.sbproject1.place;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.food.sbproject1.util.Pager;

@Mapper
public interface PlaceMapper {
	
	// 글 삭제
	public int setDelete(PlaceVO placeVO) throws Exception;
	
	// 글 수정
	public int setUpdate(PlaceVO placeVO) throws Exception;
	
	// 게시글 수 조회
	public long getCount(Pager pager) throws Exception;
	
	// 상세 글 조회
	public PlaceVO getOne(PlaceVO placeVO) throws Exception;
	
	// 맛집 추천글 리스트
	public List<PlaceVO> getList(Pager pager) throws Exception;
	
	// 메인 맛집 리스트
	public List<PlaceVO> getMainList() throws Exception;
	
	// 맛집 등록
	public int setInsert(PlaceVO placeVO) throws Exception;
	
	// 조회수
	public int setHitUp(PlaceVO placeVO) throws Exception;
	
	// 대표 사진 등록
	public int setInsertFile(PlaceFileVO placeFileVO) throws Exception;
	
	// 음식 사진 등록
	public int setInsertFiles(PlaceFilesVO placeFilesVO) throws Exception;
	
	// 가게 찜
	public int setPlaceLikeInsert(PlaceLikeVO placeLikeVO) throws Exception;
	
	// 찜한 가게
	public List<PlaceLikeVO> getPlaceLikeList(PlaceLikeVO placeLikeVO) throws Exception;
	
	// 찜 삭제
	public int setPlaceLikeDelete(PlaceLikeVO placeLikeVO) throws Exception;
	
	// 찜 중복
	public PlaceLikeVO getPlaceLikeConfirm(PlaceLikeVO placeLikeVO) throws Exception;
	
	// 찜한 가게 수
	public Long getPlaceLikeCount(PlaceLikeVO placeLikeVO) throws Exception;
}
