package com.food.sbproject1.talk;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.food.sbproject1.util.Pager;

@Mapper
public interface TalkMapper {
	
	// 소통 리스트
	public List<TalkVO> getTalkList(Pager pager) throws Exception;

	// 소통 리스트 수
	public Long getTalkCount(Pager pager) throws Exception;
	
	// 소통 작성
	public int setTalkWrite(TalkVO talkVO) throws Exception;
	
	// 소통 하나
	public TalkVO getTalkOne(TalkVO talkVO) throws Exception;
}
