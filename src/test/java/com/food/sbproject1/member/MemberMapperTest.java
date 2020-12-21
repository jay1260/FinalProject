package com.food.sbproject1.member;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class MemberMapperTest {
	@Autowired
	private MemberMapper memberMapper;
	
	@Test
	void setInsertTest() throws Exception {
		MemberVO memberVO = new MemberVO();
		memberVO.setId("test id1");
		memberVO.setPw("test pw1");
		memberVO.setName("test name1");
		memberVO.setAge(20);
		memberVO.setEmail("test@email.com");
		int result = memberMapper.setInsert(memberVO);
		
		assertEquals(1, result);
	}

}
