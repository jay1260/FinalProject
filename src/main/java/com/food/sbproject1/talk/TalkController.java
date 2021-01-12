package com.food.sbproject1.talk;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/talk/**")
public class TalkController {

	@Autowired
	private TalkService talkService;
	
	// 소통 하나
	@GetMapping("talkSelect")
	public ModelAndView getTalkOne(TalkVO talkVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		talkVO = talkService.getTalkOne(talkVO);
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
			mv.addObject("msg", "소통 완료~~");
			mv.addObject("path", "./talkList");
		}
		
		mv.setViewName("common/result");
		return mv;
	}
	
	// 소통하기
	@GetMapping("talkWrite")
	public void getTalkWrite() throws Exception{}
	
	// 소통 리스트
	@GetMapping("talkList")
	public ModelAndView getTalkList() throws Exception{
		ModelAndView mv = new ModelAndView();
		List<TalkVO> ar = talkService.getTalkList();
		mv.addObject("talkList", ar);
		mv.setViewName("talk/talkList");
		
		return mv;
	}
}
