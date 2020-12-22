package com.food.sbproject1.place;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class PlaceMapperTest {

	@Autowired
	private PlaceMapper placeMapper;
	
	@Test
	void test() throws Exception{
		
		for(int i =0; i<100; i++) {
			PlaceVO placeVO = new PlaceVO();
			placeVO.setTitle("title"+i);
			placeVO.setWriter("writer"+i);
			placeVO.setContents("contents"+i);
			
			int result = placeMapper.setInsert(placeVO);
			
			System.out.println("Finish");
		}
	}

}
