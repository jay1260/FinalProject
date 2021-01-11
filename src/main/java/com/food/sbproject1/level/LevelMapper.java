package com.food.sbproject1.level;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.food.sbproject1.util.Pager;

@Mapper
public interface LevelMapper {

	//등업신청 글 목록
	public List<LevelVO> getList(Pager pager) throws Exception;
	
	public long getCount(Pager pager) throws Exception;
	
	public int setInsert(LevelVO levelVO) throws Exception;
	
	public LevelVO getSelect(LevelVO levelVO) throws Exception;
	
	public int setUpdate(LevelVO levelVO) throws Exception;
	
	public int setDelete(LevelVO levelVO) throws Exception;
	
	public int setReply(LevelVO levelVO) throws Exception;
	
	public int setUpdateReply(LevelVO levelVO) throws Exception;
}
