package com.food.sbproject1.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

import com.food.sbproject1.util.Pager;

@Mapper
public interface MemberMapper {

	// 회원가입
	public int setMemberJoin(MemberVO memberVO) throws Exception;
	// 로그인
	public MemberVO getMemberLogin(MemberVO memberVO)throws Exception;
	// 아이디확인
	public MemberVO getMemberId(MemberVO memberVO)throws Exception;
	// 회원사진 추가
	public int setMemberFileInsert(MemberFileVO memberFileVO) throws Exception;
	// 회원정보
	public MemberVO getOne(MemberVO memberVO) throws Exception;
	// 회원탈퇴
	public int setMemberDelete(MemberVO memberVO) throws Exception;
	// 회원정보 수정
	public int setMemberUpdate(MemberVO memberVO) throws Exception;
	// 회원사진 불러오기
	public MemberFileVO getFile(MemberFileVO memberFileVO)throws Exception;

	//회원관리
	public List<MemberVO> getListPage(Pager pager)throws Exception;
	
	public long getMemberCount(Pager pager) throws Exception;
	
	public int levelUpdate(MemberVO memberVO) throws Exception;


}
