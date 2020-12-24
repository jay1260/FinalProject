package com.food.sbproject1.place;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.food.sbproject1.util.FileManager;
import com.food.sbproject1.util.FilePathAppoint;
import com.food.sbproject1.util.Pager;

@Service
public class PlaceService {

	@Autowired
	private PlaceMapper placeMapper;
	@Autowired
	private FilePathAppoint filePathAppoint;
	@Autowired
	private FileManager fileManager;
	
	@Value("${place.filePath}")
	private String filePath;
	
	// 글 삭제
	public int setDelete(PlaceVO placeVO) throws Exception{
		return placeMapper.setDelete(placeVO);
	}
	
	// 글 수정
	public int setUpdate(PlaceVO placeVO) throws Exception{
		return placeMapper.setUpdate(placeVO);
	}
	
	// 게시글 수 보내기
	public long getCount(Pager pager) throws Exception{
		return placeMapper.getCount(pager);
	}
	
	// 상세 글 조회
	public PlaceVO getOne(PlaceVO placeVO) throws Exception{
		return placeMapper.getOne(placeVO);
	}
	
	// 맛집 추천 리스트
	public List<PlaceVO> getList(Pager pager) throws Exception{
		pager.makeRow();
		long totalCount = placeMapper.getCount(pager);
		pager.makePage(totalCount);
		return placeMapper.getList(pager);
	}
	
	// 맛집 등록
	public int setInsert(PlaceVO placeVO, MultipartFile photo) throws Exception{
		// 1차로 HDD에 File 저장
		int result = placeMapper.setInsert(placeVO);
		System.out.println("Num : "+placeVO.getNum());
		File file = filePathAppoint.getUseResoureLoader(this.filePath);
		
		if(photo.getSize() != 0) {
			String fileName = fileManager.saveFileCopy(photo, file);
			System.out.println(fileName);
			
			PlaceFileVO placeFileVO = new PlaceFileVO();
			placeFileVO.setFileName(fileName);
			placeFileVO.setOriName(photo.getOriginalFilename());
			placeFileVO.setNum(placeVO.getNum());
			
			result = placeMapper.setInsertFile(placeFileVO);
		}
		
		return result;
	}
}
