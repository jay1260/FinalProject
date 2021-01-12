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
}
