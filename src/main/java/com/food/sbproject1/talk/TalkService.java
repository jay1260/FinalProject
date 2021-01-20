package com.food.sbproject1.talk;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.sbproject1.util.Pager;

@Service
public class TalkService {

	@Autowired
	private TalkMapper talkMapper;
	
	// 소통 리스트
	public List<TalkVO> getTalkList(Pager pager) throws Exception{
		pager.makeRow(15);
		long totalCount = talkMapper.getTalkCount(pager);
		pager.makePage(totalCount, 5, 15);
		return talkMapper.getTalkList(pager);
	}
	
	// 조회수
	public int setTalkHit(TalkVO talkVO) throws Exception{
		return talkMapper.setTalkHit(talkVO);
	}
	
	// 소통 작성
	public int setTalkWrite(TalkVO talkVO) throws Exception{
		return talkMapper.setTalkWrite(talkVO);
	}
	
	// 소통 삭제
	public int setTalkDelete(TalkVO talkVO) throws Exception{
		return talkMapper.setTalkDelete(talkVO);
	}
	
	// 소통 하나
	public TalkVO getTalkOne(TalkVO talkVO) throws Exception{
		return talkMapper.getTalkOne(talkVO);
	}
	
	// 소통 댓글
	public int setTalkReply(TalkReplyVO talkReplyVO) throws Exception{
		return talkMapper.setTalkReply(talkReplyVO);
	}
	
	// 소통 댓글 리스트
	public List<TalkReplyVO> getReplyList(TalkReplyVO talkReplyVO) throws Exception{
		return talkMapper.getReplyList(talkReplyVO);
	}
	
	// 소통 댓글 삭제
	public int setReplyDelete(TalkReplyVO talkReplyVO) throws Exception{
		return talkMapper.setReplyDelete(talkReplyVO);
	}

}
