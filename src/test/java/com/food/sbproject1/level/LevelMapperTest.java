package com.food.sbproject1.level;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class LevelMapperTest {

	@Autowired
	private LevelMapper leveMapper; 
	
	@Test
	void insertTest() throws Exception {
		
		for(int i=0; i<100; i++) {
			LevelVO levelVO = new LevelVO();
			levelVO.setTitle("title"+i);
			levelVO.setWriter("writer"+i);
			levelVO.setContents("contents"+i);
			
			int result= leveMapper.setInsert(levelVO);
			
			System.out.println("end");
			
		}
		
	}

}
