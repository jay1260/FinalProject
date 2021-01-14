package com.food.sbproject1.member;

import java.io.File;
import java.util.List;

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
import com.food.sbproject1.util.Pager;

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
	
	// 회원가입시 에러 확인
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
	
	// 로그인
	public MemberVO getMemberLogin(MemberVO memberVO)throws Exception{
		
		System.out.println("id: "+memberVO.getId());
		System.out.println("name:"+memberVO.getName());
		System.out.println("age: "+memberVO.getAge());
		System.out.println("email: "+memberVO.getEmail());
	
		System.out.println("===========================");
		
		return memberMapper.getMemberLogin(memberVO);
	}
	
	// 회원가입
	public int setMemberJoin(MemberVO memberVO, MultipartFile memberPhoto)throws Exception{
		
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
		  
			  memberVO.setLevel(3);
		  
			  result = memberMapper.setMemberFileInsert(memberFileVO); 

				System.out.println("id: "+memberVO.getId());
				System.out.println("name:"+memberVO.getName());
				System.out.println("age: "+memberVO.getAge());
				System.out.println("email: "+memberVO.getEmail());
				System.out.println("file: "+memberFileVO.getOriName());
				System.out.println("===========================");
		  
		  }
		 	
		return result;
	}
	
	public MemberFileVO getFile(MemberFileVO memberFileVO)throws Exception{
		return memberMapper.getFile(memberFileVO);
	}
	
	// 회원정보
	public MemberVO getOne(MemberVO memberVO) throws Exception{
		return memberMapper.getOne(memberVO);
	}
	//정보수정
	public int setMemberUpdate(MemberVO memberVO) throws Exception{
		return memberMapper.setMemberUpdate(memberVO);
	}
	
	//회원 탈퇴
	public int setMemberDelete(MemberVO memberVO) throws Exception{
		return memberMapper.setMemberDelete(memberVO);
	}
	
	public List<MemberVO> getListPage(Pager pager) throws Exception{
		pager.makeRow(10);
		long totalCount =  memberMapper.getMemberCount(pager);
		pager.makePage(totalCount, 1, 10);
		
		return memberMapper.getListPage(pager);
	}
	public long getMemberCount(Pager pager)throws Exception{
		return memberMapper.getMemberCount(pager);
	}
	
	public int levelUpdate(MemberVO memberVO) throws Exception{
		return memberMapper.levelUpdate(memberVO);
	}
}
