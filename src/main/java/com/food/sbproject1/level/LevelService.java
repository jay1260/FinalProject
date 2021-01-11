package com.food.sbproject1.level;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.sbproject1.util.Pager;

@Service
public class LevelService {
		
	@Autowired
	private LevelMapper levelMapper;
	
	public List<LevelVO> getList(Pager pager) throws Exception{
		pager.makeRow(11);
		long totalCount = levelMapper.getCount(pager);
		pager.makePage(totalCount, 1, 11);
		
		return levelMapper.getList(pager);
	}
	
	public long getCount(Pager pager) throws Exception{
		return levelMapper.getCount(pager);
	}
	
	public int setInsert(LevelVO levelVO) throws Exception{
		return levelMapper.setInsert(levelVO);
	}
	
	public LevelVO getSelect(LevelVO levelVO)throws Exception{
		return levelMapper.getSelect(levelVO);
	}
	
	public int setUpdate(LevelVO levelVO) throws Exception{
		return levelMapper.setUpdate(levelVO);
	}
	
	public int setDelete(LevelVO levelVO) throws Exception{
		return levelMapper.setDelete(levelVO);
	}
	
	public int setReply(LevelVO levelVO) throws Exception{
		int result = levelMapper.setUpdateReply(levelVO);
		result=levelMapper.setReply(levelVO);
		return result;
	}

}