package com.food.sbproject1.talk;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class TalkMapperTest {

	@Autowired
	private TalkMapper talkMapper;
	
	//@Test
	void setTalkInserttest() throws Exception{
		
		for(int i=0; i<100; i++) {
			TalkVO talkVO = new TalkVO();
			
			talkVO.setTitle("title"+i);
			talkVO.setWriter("writer"+i);
			talkVO.setContents("contents"+i);
			int result = talkMapper.setTalkWrite(talkVO);
			
			if(i%10 == 0) {
				Thread.sleep(1000);
			}
			
			
		}
		System.out.println("FINISH");
	}

}
