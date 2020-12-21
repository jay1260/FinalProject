package com.food.sbproject1.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	
	public int setInsert(MemberVO memberVO) throws Exception;
		
	public MemberVO getMemberLogin(MemberVO memberVO)throws Exception;
	
	public MemberVO getMemberId(MemberVO memberVO)throws Exception;

}
