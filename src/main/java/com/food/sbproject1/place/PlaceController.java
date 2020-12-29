package com.food.sbproject1.place;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.food.sbproject1.util.Pager;

@Controller
@RequestMapping("/place/**")
public class PlaceController {

	@Autowired
	private PlaceService placeService;
	
	@Value("${place.filePath}")
	private String filePath;
	
	// 글 삭제하기
	@GetMapping("placeDelete")
	public ModelAndView setDelete(PlaceVO placeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = placeService.setDelete(placeVO);
		if(result>0) {
			mv.addObject("msg", "삭제 완료했습니다.");
			mv.addObject("path", "./placeList");
			mv.setViewName("common/result");
		}
		
		return mv;
	}
	
	// 글 수정하기
	@PostMapping("placeUpdate")
	public ModelAndView setUpdate(PlaceVO placeVO, long num) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = placeService.setUpdate(placeVO);
		
		if(result>0) {
			mv.addObject("msg", "수정 완료했습니다.");
			placeVO = placeService.getOne(placeVO);
			
			mv.addObject("path", "./placeSelect?num="+num);
			mv.setViewName("common/result");
		}
		
		return mv;
	}
	
	// 글 수정 폼
	@GetMapping("placeUpdate")
	public ModelAndView setUpdate(PlaceVO placeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		placeVO = placeService.getOne(placeVO);
		
		mv.addObject("up", placeVO);
		mv.setViewName("place/placeUpdate");
		
		return mv;
	}
	
	// 상세 글 조회
	@GetMapping("placeSelect")
	public ModelAndView getOne(PlaceVO placeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		placeVO = placeService.getOne(placeVO);
		mv.addObject("one", placeVO);
		
		return mv;
	}
	
	// 맛집 추천 작성
	@PostMapping("placeWrite")
	public ModelAndView setInsert(PlaceVO placeVO, MultipartFile photo) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = placeService.setInsert(placeVO, photo);
		if(result>0) {
			mv.addObject("msg", "추천 감사드립니다!!");
			mv.addObject("path", "./placeList");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	// 맛집 추천 작성 폼 이동
	@GetMapping("placeWrite")
	public void setInsert() throws Exception{}
	
	// 맛집 추천 리스트
	@GetMapping("placeList")
	public ModelAndView getList(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<PlaceVO> ar = placeService.getList(pager);
		
		long num = placeService.getCount(pager);
				
		mv.addObject("num", num);
		mv.addObject("pager", pager);
		mv.addObject("list", ar);
		mv.setViewName("place/placeList");
		return mv;
	}
	
}
