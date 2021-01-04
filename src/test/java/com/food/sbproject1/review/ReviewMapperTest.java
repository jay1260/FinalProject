package com.food.sbproject1.review;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ReviewMapperTest {

	@Autowired
	private ReviewMapper reviewMapper;
	
	@Test
	void getReviewListtest() throws Exception{
		
		ReviewVO reviewVO = new ReviewVO();
		reviewVO.setRef(10);
		
			
	}

}
