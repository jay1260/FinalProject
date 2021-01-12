package com.food.sbproject1.talk;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TalkService {

	@Autowired
	private TalkMapper talkMapper;
	
	// 소통 리스트
	public List<TalkVO> getTalkList() throws Exception{
		return talkMapper.getTalkList();
	}
	
	// 소통 작성
	public int setTalkWrite(TalkVO talkVO) throws Exception{
		return talkMapper.setTalkWrite(talkVO);
	}
	
	// 소통 하나
	public TalkVO getTalkOne(TalkVO talkVO) throws Exception{
		return talkMapper.getTalkOne(talkVO);
	}
}
