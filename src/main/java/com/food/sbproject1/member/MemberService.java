package com.food.sbproject1.member;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.food.sbproject1.util.FileManager;
import com.food.sbproject1.util.FilePathAppoint;
import com.food.sbproject1.util.FilePathGenerator;

@Service

public class MemberService  {

	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private FilePathGenerator filePathGenerator;
	
	@Autowired
	private FilePathAppoint filePathAppoint;
	
	@Value("${member.filePath}")
	private String filePath;
	
	@Autowired
	private FileManager fileManager;
	
	public boolean getMemberError(MemberVO memberVO, BindingResult bindingResult) throws Exception{
		boolean result = false;
		
		if(bindingResult.hasErrors()) {
			result=true;
		}
		if(!memberVO.getPw().equals(memberVO.getPw2())) {
			bindingResult.rejectValue("pw2", "memberVO.pw.notEqual");
			
			result = true;
		}
		MemberVO mv = memberMapper.getMemberId(memberVO);
		if(mv !=null) {
			bindingResult.rejectValue("id", "memberVO.id.equal");
			result=true;
		}
		return result;
	}
	
	public MemberVO getMemberLogin(MemberVO memberVO)throws Exception{
		
		return memberMapper.getMemberLogin(memberVO);
	}
	
	public int setMemberJoin(MemberVO memberVO, MultipartFile memberPhoto, MemberRoleVO memberRoleVO)throws Exception{
		
	
		 int result= memberMapper.setMemberJoin(memberVO);
		 	
		memberVO=memberMapper.getMemberId(memberVO);
		
		File file = filePathAppoint.getUseResoureLoader(this.filePath);
		
		  if(memberPhoto.getSize()!=0) {
			  String fileName=fileManager.saveFileCopy(memberPhoto, file); 
			  System.out.println(fileName);
		  
			  MemberFileVO memberFileVO = new MemberFileVO();
			  memberFileVO.setFileName(fileName);
			  memberFileVO.setOriName(memberPhoto.getOriginalFilename());
			  memberFileVO.setId(memberVO.getId());
		  
			  memberRoleVO.setId(memberVO.getId());
			  memberRoleVO.setGrade("3등급");
		  
			  result = memberMapper.setGradeInsert(memberRoleVO);
		  
			  System.out.println(memberRoleVO);
		  
			  result = memberMapper.setMemberFileInsert(memberFileVO); 
		  
		  
		  }
		 	
		return result;
	}
	public MemberFileVO getFile(MemberFileVO memberFileVO)throws Exception{
		return memberMapper.getFile(memberFileVO);
	}
	
	public MemberVO getMember(MemberVO memberVO)throws Exception{
		return memberMapper.getMember(memberVO);	
	}
	
	public MemberRoleVO getGrade(MemberRoleVO memberRoleVO) throws Exception{
		return memberMapper.getGrade(memberRoleVO);
	}
	
	public int setMemberDelete(MemberVO memberVO) throws Exception{
		return memberMapper.setMemberDelete(memberVO);
	}
	
	public int setMemberUpdate(MemberVO memberVO)throws Exception{
		
		return memberMapper.setMemberUpdate(memberVO);
		
	}
	
}
