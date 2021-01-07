package com.food.sbproject1.level;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.food.sbproject1.member.MemberVO;
import com.food.sbproject1.util.Pager;

@Controller
@RequestMapping("/level/**")
public class LevelController {

	@Autowired
	private LevelService levelService;
	
	
	@GetMapping("levelList")
	public String getList(Pager pager, HttpSession session) throws Exception{
		
		List<LevelVO> ar = levelService.getList(pager);
		
		long num = levelService.getCount(pager);
		
		
		session.setAttribute("num", num);
		session.setAttribute("pager", pager);
		session.setAttribute("list", ar);
		
		
		System.out.println("List");
		return "level/levelList";
	}
	
	@GetMapping("levelWrite")
	public ModelAndView setInsert(LevelVO levelVO, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = new MemberVO();
		session.setAttribute("level", levelVO);
		mv.addObject("member", memberVO);
		mv.setViewName("level/levelWrite");
		
		return mv;
	
	}
	
	@PostMapping("levelWrite")
	public ModelAndView setInsert(LevelVO levelVO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		int result = levelService.setInsert(levelVO);
		
		if(result>0) {
			mv.addObject("msg", "신청완료");
			mv.addObject("path", "./levelList");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	@GetMapping("levelSelect")
	public ModelAndView getSelect(LevelVO levelVO, HttpSession session)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = new MemberVO();
		levelVO = levelService.getSelect(levelVO);

		mv.addObject("level", levelVO);
		mv.setViewName("level/levelSelect");
		
		System.out.println("title: "+levelVO.getTitle());
		System.out.println("contents : "+levelVO.getContents());
		System.out.println("writer: "+levelVO.getWriter());
		System.out.println("id: "+memberVO.getId());
		return mv;
	}
}
