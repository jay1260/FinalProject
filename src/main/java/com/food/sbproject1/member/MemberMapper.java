package com.food.sbproject1.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	
	public int setMemberJoin(MemberVO memberVO) throws Exception;
		
	public MemberVO getMemberLogin(MemberVO memberVO)throws Exception;
	
	public MemberVO getMemberId(MemberVO memberVO)throws Exception;

	public int setMemberFileInsert(MemberFileVO memberFileVO) throws Exception;

	public MemberVO getMemberPage(MemberVO memberVO)throws Exception;
	
	public int setMemberDelete(MemberVO memberVO) throws Exception;
	
	public int setMemberPage(MemberVO memberVO)throws Exception;
	
	public MemberFileVO getFile(MemberFileVO memberFileVO)throws Exception;
	
	
}
