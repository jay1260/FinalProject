package com.food.sbproject1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

@Service
public class MemberService {

	@Autowired
	private MemberMapper memberMapper;
	
	public boolean getMemberError(MemberVO memberVO, BindingResult bindingResult) throws Exception{
		boolean result = false;
		
		if(bindingResult.hasErrors()) {
			result=true;
		}
		if(!memberVO.getPw().equals(memberVO.getPw2())) {
			bindingResult.rejectValue("pw2", "memberVO.password.notEqual");
			
			result = true;
		}
		MemberVO mv = memberMapper.getMemberId(memberVO);
		if(mv !=null) {
			bindingResult.rejectValue("id", "memberVO.id.equal");
			result=true;
		}
		return result;
	}
	
	public MemberVO getLogin(MemberVO memberVO)throws Exception{
		
		return memberMapper.getMemberLogin(memberVO);
	}
}
