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
	
	//게시글 목록
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
	//게시글 작성 폼
	@GetMapping("levelWrite")
	public ModelAndView setInsert(LevelVO levelVO, MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();

		mv.addObject("level", levelVO);
		
		mv.setViewName("level/levelWrite");
		
		return mv;
	
	}
	// 게시글 작성
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
	// 선택 게시글
	@GetMapping("levelSelect")
	public ModelAndView getSelect(LevelVO levelVO, HttpSession session, Pager pager)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		levelVO = levelService.getSelect(levelVO);
		
		int result = levelService.setHit(levelVO);
		
		levelVO.setRef(levelVO.getNum());
		/* pager.setRef(levelVO.getNum()); */
		
		System.out.println("num: " +levelVO.getNum());
		System.out.println("ref:"+levelVO.getRef());
		System.out.println("depth:"+levelVO.getDepth());
		
		mv.addObject("level", levelVO);
		mv.setViewName("level/levelSelect");
		
		System.out.println("title: "+levelVO.getTitle());
		System.out.println("contents : "+levelVO.getContents());
		System.out.println("writer: "+levelVO.getWriter());
		
		return mv;
	}
	@GetMapping("levelReply")
	public ModelAndView setReply(long num, LevelVO levelVO )throws Exception{
		ModelAndView mv = new ModelAndView();
		
		levelVO=levelService.getSelect(levelVO);
		levelVO.setRef(levelVO.getNum()); 
		mv.addObject("level", levelVO);
		
		System.out.println("ref:"+levelVO.getRef());
		System.out.println("depth:"+levelVO.getDepth());
		System.out.println("==============================");
		return mv;
	}
	
	@PostMapping("levelReply")
	public ModelAndView setReply(LevelVO levelVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		String msg="작성 중 에러발생";
		int result=levelService.setReply(levelVO);
		
		levelVO.setRef(levelVO.getNum()); 
		System.out.println("ref:"+levelVO.getRef());
		System.out.println("depth:"+levelVO.getDepth());
		System.out.println("==============================");
		if(result>0) {
			result = levelService.setRefUpdate(levelVO);
			msg="작성 완료";
			mv.addObject("msg", msg);
			mv.addObject("path", "./levelSelect?num="+levelVO.getRef());
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	//게시슬 수정 폼 
	@GetMapping("levelUpdate")
	public ModelAndView setUpdate(LevelVO levelVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		levelVO = levelService.getSelect(levelVO);
		
		mv.addObject("level", levelVO);
		mv.setViewName("level/levelUpdate");
		
		return mv;
	}
	// 게시글 수정
	@PostMapping("levelUpdate")
	public ModelAndView setUpdate(LevelVO levelVO, long num)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = levelService.setUpdate(levelVO);
		
		String message="수정실패";
		if(result>0) {
			
			levelVO = levelService.getSelect(levelVO);
			message="수정성공";
			mv.addObject("msg", message);
			mv.addObject("path", "./levelList");
			mv.setViewName("common/result");
		}
		
		return mv;
	}
	//게시글 삭제 
	@GetMapping("levelDelete")
	public ModelAndView setDelete(LevelVO levelVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = levelService.setDelete(levelVO);
		String message="삭제실패";
		if(result>0) {
			message="삭제성공";
			mv.addObject("msg", message);
			mv.addObject("path", "./levelList");
			mv.setViewName("common/result");
		}
		return mv;
	}
}
