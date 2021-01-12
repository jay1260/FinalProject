package com.food.sbproject1.talk;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/talk/**")
public class TalkController {

	@Autowired
	private TalkService talkService;
	
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
