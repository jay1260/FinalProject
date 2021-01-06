package com.food.sbproject1.member;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.eclipse.jdt.internal.compiler.apt.model.ModuleElementImpl;
import org.hibernate.validator.internal.util.privilegedactions.GetResolvedMemberMethods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	//약관동의
	@GetMapping("memberAgree")
	public void memberAgree()throws Exception{
	}
	
	//회원가입
	@PostMapping("memberJoin")
	public ModelAndView setMemberJoin(@Valid MemberVO memberVO, BindingResult bindingResult,MultipartFile memberPhoto)throws Exception{
			ModelAndView mv = new ModelAndView();
			MemberRoleVO memberRoleVO = new MemberRoleVO();
			
			if(memberService.getMemberError(memberVO, bindingResult)) {
				mv.setViewName("member/memberJoin");
			}
			else {
				int result = memberService.setMemberJoin(memberVO, memberPhoto, memberRoleVO);
				if(result>0) {
				String msg = "회원가입을 축하드립니다!";
				mv.addObject("msg", msg);
				mv.addObject("path", "../");
				mv.setViewName("common/result");
				}
		
			}
			return mv;
		}
		
	@GetMapping("memberJoin")
	public void setMemberJoin(MemberVO memberVO)throws Exception{
	}

	
	@GetMapping("memberLogin")
	public void memberLogin() throws Exception{
		
	}
	//로그인
	@PostMapping("memberLogin")
	public ModelAndView getMemberLogin(MemberVO memberVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberRoleVO memberRoleVO = new MemberRoleVO();
		memberVO=memberService.getMemberLogin(memberVO);
		
		if(memberVO !=null) {	
			session.setAttribute("member", memberVO);
			session.setAttribute("role", memberRoleVO);
			mv.setViewName("redirect:../");
			
			System.out.println("id: "+memberVO.getId());
			System.out.println("name:"+memberVO.getName());
			System.out.println("age: "+memberVO.getAge());
			System.out.println("email: "+memberVO.getEmail());
			System.out.println("grade: "+memberRoleVO.getGrade());
			System.out.println("-----------------------------");
		}
		else {
			String message="아이디 또는 비밀번호가 틀렸습니다.";
			mv.addObject("msg", message);
			mv.addObject("path", "./memberLogin");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	//로그아웃
	@GetMapping("memberLogout")
	public ModelAndView getMemberLogout(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		
		mv.setViewName("redirect:../");
		return mv;
	}
	
	
	
	//회원정보 조회
	@GetMapping("memberPage")
	public ModelAndView getOne(MemberVO memberVO,HttpSession session)throws Exception{
		memberVO=(MemberVO) session.getAttribute("member");
		MemberRoleVO memberRoleVO = new MemberRoleVO();
		memberVO=memberService.getOne(memberVO);
		
		 ModelAndView mv = new ModelAndView();
		 mv.addObject("members", memberVO);
		 mv.addObject("role",memberRoleVO);
		 mv.setViewName("member/memberPage");
		 
		System.out.println("id: "+memberVO.getId());
		System.out.println("name:"+memberVO.getName());
		System.out.println("age: "+memberVO.getAge());
		System.out.println("email: "+memberVO.getEmail());
		System.out.println("============================");
		 
		 return mv;
	}
	
	//회원수정 폼
	@GetMapping("memberUpdate")
	public ModelAndView setmemberUpdate(MemberVO memberVO, HttpSession session) throws Exception{
		memberVO =(MemberVO)session.getAttribute("member");
		memberVO=memberService.getOne(memberVO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("members", memberVO);
		mv.setViewName("member/memberUpdate");
		
		System.out.println("id: "+memberVO.getId());
		System.out.println("name:"+memberVO.getName());
		System.out.println("age: "+memberVO.getAge());
		System.out.println("email: "+memberVO.getEmail());
		System.out.println("============================");
		
		return mv;
	}
	//회원정보 수정
	@PostMapping("memberUpdate")
	public ModelAndView setMemberUpdate(MemberVO memberVO, HttpSession session)throws Exception{
		
		System.out.println("id: "+memberVO.getId());
		System.out.println("name:"+memberVO.getName());
		System.out.println("age: "+memberVO.getAge());
		System.out.println("email: "+memberVO.getEmail());
		System.out.println("============================");
		
		ModelAndView mv = new ModelAndView();
		int result = memberService.setMemberUpdate(memberVO);
		String message = "";
		memberVO=(MemberVO)session.getAttribute("member");

		if(result>0) {
			
			message="수정완료";
			session.setAttribute("member", memberVO);
			mv.addObject("member", memberVO);
			mv.addObject("msg", message);
			mv.addObject("path", "../");
			mv.setViewName("common/result");
		}
		return mv;

	}
	//회원 탈퇴
	@GetMapping("memberDelete")
	public ModelAndView setMemberDelete(MemberVO memberVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = memberService.setMemberDelete(memberVO);
		
		if(result>0) {
			mv.addObject("msg","탈퇴완료");
			mv.addObject("path", "../");
			mv.setViewName("common/result");
			session.invalidate();
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

	
}
