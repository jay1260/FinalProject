package com.food.sbproject1.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService {

	@Autowired
	private NoticeMapper noticeMapper;

	// 공지 리스트
	public List<NoticeVO> getNoticeList() throws Exception{
		return noticeMapper.getNoticeList();
	}
	
	// 공지하기
	public int setNoticeWrite(NoticeVO noticeVO) throws Exception{
		return noticeMapper.setNoticeWrite(noticeVO);
	}
	
	// 공지확인
	public NoticeVO getNoticeOne(NoticeVO noticeVO) throws Exception{
		return noticeMapper.getNoticeOne(noticeVO);
	}
	
	// 공지삭제
	public int setNoticeDelete(NoticeVO noticeVO) throws Exception{
		return noticeMapper.setNoticeDelete(noticeVO);
	}
	
	// 조회수
	public int setNoticeHit(NoticeVO noticeVO) throws Exception{
		return noticeMapper.setNoticeHit(noticeVO);
	}
	
	// 공지 수 확인
	public Long getNoticeCount() throws Exception{
		return noticeMapper.getNoticeCount();
	}
}
