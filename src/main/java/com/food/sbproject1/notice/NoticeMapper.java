package com.food.sbproject1.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoticeMapper {

	// 공지 리스트
	public List<NoticeVO> getNoticeList() throws Exception;
	
	// 공지하기
	public int setNoticeWrite(NoticeVO noticeVO) throws Exception;

	// 공지 확인
	public NoticeVO getNoticeOne(NoticeVO noticeVO) throws Exception;
	
	// 공지 삭제
	public int setNoticeDelete(NoticeVO noticeVO) throws Exception;
}
