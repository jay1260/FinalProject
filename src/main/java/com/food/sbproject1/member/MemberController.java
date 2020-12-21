package com.food.sbproject1.member;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@GetMapping("memberLogin")
	public void memberLogin() throws Exception{
		
	}
	
	@PostMapping("memberLogin")
	public ModelAndView getMemberLogin(MemberVO memberVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		memberVO=memberService.getLogin(memberVO);
		
		if(memberVO !=null) {
			session.setAttribute("member", memberVO);
			mv.setViewName("redirect:../");
		}
		else {
			String message="로그인 실패";
			mv.addObject("msg", message);
			mv.addObject("path", "./memberLogin");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	@PostMapping("memberJoin")
	public ModelAndView setMemberJoin(@Valid MemberVO memberVO,BindingResult bindingResult)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		if(bindingResult.hasErrors()) {
			mv.setViewName("member/memberJoin");
		}
		return mv;
	}
	
	@GetMapping("memberJoin")
	public void memberJoin()throws Exception{
		
	}
	
	@GetMapping("memberAgree")
	public void memberAgree()throws Exception{
		
	}
	@GetMapping("memberPage")
	public void memberPage()throws Exception{
		
	}

	
}
