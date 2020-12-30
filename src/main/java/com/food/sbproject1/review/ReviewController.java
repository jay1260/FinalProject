package com.food.sbproject1.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.food.sbproject1.place.PlaceService;
import com.food.sbproject1.place.PlaceVO;

@Controller
@RequestMapping("/review/**")
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	@Autowired
	private PlaceService placeService;
	
	// 리뷰
	@PostMapping("reviewWrite")
	public ModelAndView setInsert(ReviewVO reviewVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = reviewService.setInsert(reviewVO);
		
		System.out.println(result);
		
		if(result>0) {
			mv.addObject("msg", "작성 완료");
			mv.addObject("path", "../place/placeList");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	// 리뷰폼
	@GetMapping("reviewWrite")
	public ModelAndView setInsert(PlaceVO placeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		placeVO = placeService.getOne(placeVO);
		mv.addObject("getOne", placeVO);
		return mv;
	}
}
