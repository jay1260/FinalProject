package com.food.sbproject1.talk;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.food.sbproject1.notice.NoticeService;
import com.food.sbproject1.notice.NoticeVO;
import com.food.sbproject1.util.Pager;

@Controller
@RequestMapping("/talk/**")
public class TalkController {

	@Autowired
	private TalkService talkService;
	@Autowired
	private NoticeService noticeService;
	
	// 소통 하나
	@GetMapping("talkSelect")
	public ModelAndView getTalkOne(TalkVO talkVO, TalkReplyVO talkReplyVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		talkVO = talkService.getTalkOne(talkVO);
		int result = talkService.setTalkHit(talkVO);
		
		talkReplyVO.setRef(talkVO.getNum());
		List<TalkReplyVO> ar = talkService.getReplyList(talkReplyVO);
		
		mv.addObject("replyList", ar);
		mv.addObject("talkOne", talkVO);
		mv.setViewName("talk/talkSelect");
		
		return mv;
	}
	
	// 소통 작성
	@PostMapping("talkWrite")
	public ModelAndView setTalkWrite(TalkVO talkVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = talkService.setTalkWrite(talkVO);
		if(result>0) {
			mv.addObject("msg", "소통이 작성되었습니다.");
			mv.addObject("path", "./talkList");
		}
		
		mv.setViewName("common/result");
		return mv;
	}
	
	// 소통하기
	@GetMapping("talkWrite")
	public void getTalkWrite() throws Exception{}
	
	// 소통 삭제
	@GetMapping("talkDelete")
	public ModelAndView setTalkDelete(TalkVO talkVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = talkService.setTalkDelete(talkVO);
		if(result>0) {
			mv.addObject("msg", "소통을 삭제했습니다.");
			mv.addObject("path", "./talkList");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	// 소통 리스트
	@GetMapping("talkList")
	public ModelAndView getTalkList(Pager pager, TalkReplyVO talkReplyVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<NoticeVO> nar = noticeService.getNoticeList();
		List<TalkVO> tar = talkService.getTalkList(pager);
		
		mv.addObject("pager", pager);
		mv.addObject("noticeList", nar);
		mv.addObject("talkList", tar);
		mv.setViewName("talk/talkList");
		
		return mv;
	}
	
	// 소통댓글
	@PostMapping("talkReply")
	public ModelAndView setTalkReply(TalkVO talkVO, TalkReplyVO talkReplyVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = talkService.setTalkReply(talkReplyVO);
		
		if(result>0) {
			mv.addObject("msg", "댓글이 작성되었습니다.");
			mv.addObject("path", "./talkSelect?num="+talkReplyVO.getRef());
			mv.setViewName("common/result");
		}
		
		return mv;
	}
	
	
}
