package com.food.sbproject1.member;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

@Mapper
public interface MemberMapper {

	
	public int setMemberJoin(MemberVO memberVO) throws Exception;
		
	public MemberVO getMemberLogin(MemberVO memberVO)throws Exception;
	
	public MemberVO getMemberId(MemberVO memberVO)throws Exception;

	public int setMemberFileInsert(MemberFileVO memberFileVO) throws Exception;

	public MemberVO getMember(MemberVO memberVO)throws Exception;
	
	public int setMemberDelete(MemberVO memberVO) throws Exception;
	
	public int setMemberUpdate(MemberVO memberVO)throws Exception;
	
	public MemberFileVO getFile(MemberFileVO memberFileVO)throws Exception;
	
	public int setGradeInsert(MemberRoleVO memberRoleVO) throws Exception;
	
	public MemberRoleVO getGrade(MemberRoleVO memberRoleVO) throws Exception;
	
	
}
