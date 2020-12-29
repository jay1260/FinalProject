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
	void setDeleteTest()throws Exception{
		MemberVO memberVO = new MemberVO();
		memberVO.setId("test id1");
		int result = memberMapper.setMemberDelete(memberVO);
		
		assertNotEquals(0, result);
	}
	
	//@Test
	void setUpdateTest()throws Exception{
		MemberVO memberVO = new MemberVO();
		memberVO.setEmail("qwe@naver.com");
		memberVO.setAge(15);
		memberVO.setName("wr");
		memberVO.setPw("1");
		memberVO.setPw2("1");
		memberVO.setId("kwr");
		
		int result=memberMapper.setMemberUpdate(memberVO);
		
		assertNotEquals(0, result);
	}
	
	//@Test
	void setInsertFileTest()throws Exception{
		MemberFileVO memberFileVO = new MemberFileVO();
		memberFileVO.setId("t2");
		memberFileVO.setFnum(1);
		memberFileVO.setFileName("testfileName");
		memberFileVO.setOriName("testoriName");
		int result = memberMapper.setMemberFileInsert(memberFileVO);
		
		assertEquals(1, result);
	}
	
	//@Test
	void setInsertTest() throws Exception {
		MemberVO memberVO = new MemberVO();
		memberVO.setId("kwr");
		memberVO.setPw("123");
		memberVO.setName("wr");
		memberVO.setAge(25);
		memberVO.setEmail("test2@email.com");
		int result = memberMapper.setMemberJoin(memberVO);
		
		assertEquals(1, result);
	}
	
	//@Test
	void getMemberLoginTest()throws Exception{
		MemberVO memberVO = new MemberVO();
		memberVO.setId("test id1");
		memberVO.setPw("test pw1");
		memberVO=memberMapper.getMemberLogin(memberVO);
		
		assertNotNull(memberVO);
		
	}
}
