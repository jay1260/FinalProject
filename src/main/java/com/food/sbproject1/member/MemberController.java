package com.food.sbproject1.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@GetMapping("memberLogin")
	public void memberLogin() throws Exception{
		
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
