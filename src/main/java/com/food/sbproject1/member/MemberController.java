package com.food.sbproject1.member;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.eclipse.jdt.internal.compiler.apt.model.ModuleElementImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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
	
	@Value("${member.filePath")
	private String filePath;
	
	@GetMapping("memberLogin")
	public void memberLogin() throws Exception{
		
	}
	
	@PostMapping("memberLogin")
	public ModelAndView getMemberLogin(MemberVO memberVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		memberVO=memberService.getMemberLogin(memberVO);
		
		if(memberVO !=null) {
		
			session.setAttribute("member", memberVO);
			mv.setViewName("redirect:../");
		}
		else {
			String message="아이디 또는 비밀번호가 틀렸습니다.";
			mv.addObject("msg", message);
			mv.addObject("path", "./memberLogin");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	@GetMapping("memberLogout")
	public ModelAndView getMemberLogout(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		
		mv.setViewName("redirect:../");
		return mv;
	}
	
	@PostMapping("memberJoin")
	public ModelAndView setMemberJoin(@Valid MemberVO memberVO, BindingResult bindingResult,MultipartFile multipartFile)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		if(memberService.getMemberError(memberVO, bindingResult)) {
			mv.setViewName("member/memberJoin");
			
		}
		else {
			int result = memberService.setMemberJoin(memberVO, multipartFile);
			mv.setViewName("redirect:../");
		}
		return mv;
	}
	
	@GetMapping("memberJoin")
	public void setMemberJoin(MemberVO memberVO)throws Exception{
	}
	
	@GetMapping("memberAgree")
	public void memberAgree()throws Exception{
	}
	
	@GetMapping("memberPage")
	public ModelAndView getMemberPage(MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		memberVO = memberService.getMemberPage(memberVO);
		mv.addObject("member", memberVO);
		mv.setViewName("member/memberPage");
		
		return mv;
	}
	
	@PostMapping("memberPage")
	public ModelAndView setMemberPage(@Valid MemberVO memberVO, BindingResult bindingResult, MultipartFile multipartFile)throws Exception{
		ModelAndView mv = new ModelAndView();
		if(memberService.getMemberError(memberVO, bindingResult)) {
			mv.setViewName("member/meberPage");
		}
		else {
			int result = memberService.setMemberPage(memberVO);
			if(result!=0) {
			String message = "수정완료";
			mv.addObject("msg", message);
			mv.setViewName("redirect:../");
			}
		}
		
		return mv;
	}
	
	@GetMapping("memberFileDown")
	public ModelAndView getmemberFileDown(MemberFileVO memberFileVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		memberFileVO=memberService.getFile(memberFileVO);
		
		mv.addObject("memberFileVO", memberFileVO);
		mv.addObject("filePath", filePath);
		mv.setViewName("fileDown");
		
		return mv;
	}
	
	@GetMapping("memberDelete")
	public ModelAndView setmemberDelete(HttpSession session)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		memberService.setMemberDelete(memberVO);
		session.invalidate();
	
		mv.setViewName("redirect:../");
		return mv;
	}
	
}
