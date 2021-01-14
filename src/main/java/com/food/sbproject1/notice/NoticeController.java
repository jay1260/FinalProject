package com.food.sbproject1.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	// 공지하기
	@PostMapping("noticeWrite")
	public ModelAndView setNoticeWrite(NoticeVO noticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setNoticeWrite(noticeVO);
		if(result>0) {
			mv.addObject("msg", "공지사항 작성 완료되었습니다.");
			mv.addObject("path", "../talk/talkList");
			mv.setViewName("common/result");
		}
		
		return mv;
	}
	
	// 공지하기
	@GetMapping("noticeWrite")
	public void setNoticeWrite() throws Exception{}
	
	// 공지확인
	@GetMapping("noticeSelect")
	public ModelAndView getNoticeOne(NoticeVO noticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		noticeVO = noticeService.getNoticeOne(noticeVO);
		mv.addObject("noticeOne", noticeVO);
		mv.setViewName("notice/noticeSelect");
		
		return mv;
	}
	
	// 공지삭제
	@GetMapping("noticeDelete")
	public ModelAndView setNoticeDelete(NoticeVO noticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setNoticeDelete(noticeVO);
		
		if(result>0) {
			mv.addObject("msg", "삭제 완료.");
			mv.addObject("path", "../talk/talkList");
			mv.setViewName("common/result");
		}
		return mv;
	}
}
