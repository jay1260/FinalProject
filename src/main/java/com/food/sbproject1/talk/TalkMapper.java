package com.food.sbproject1.talk;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.food.sbproject1.util.Pager;

@Mapper
public interface TalkMapper {
	
	// 소통 리스트
	public List<TalkVO> getTalkList(Pager pager) throws Exception;

	// 소통 리스트 수
	public Long getTalkCount(Pager pager) throws Exception;
	
	// 소통 작성
	public int setTalkWrite(TalkVO talkVO) throws Exception;
	
	// 소통 삭제
	public int setTalkDelete(TalkVO talkVO) throws Exception;
	
	// 소통 하나
	public TalkVO getTalkOne(TalkVO talkVO) throws Exception;
	
	// 조회수
	public int setTalkHit(TalkVO talkVO) throws Exception;
	
	// 소통 댓글
	public int setTalkReply(TalkReplyVO talkReplyVO) throws Exception;
	
	// 소통 댓글 리스트
	public List<TalkReplyVO> getReplyList(TalkReplyVO talkReplyVO) throws Exception;

}
