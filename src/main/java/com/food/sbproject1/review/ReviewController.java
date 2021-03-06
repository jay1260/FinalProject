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
	
	// 나의 리뷰
	@GetMapping("reviewMyPage")
	public ModelAndView getMyReview(ReviewVO reviewVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<ReviewVO> ar = reviewService.getMyReview(reviewVO);
		mv.addObject("myRe", ar);
		
		return mv;
	}
	
	// 리뷰 삭제
	@PostMapping("reviewDelete")
	public ModelAndView setReviewDelete(ReviewVO reviewVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = reviewService.setReviewDelete(reviewVO);
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	// 리뷰
	@PostMapping("reviewWrite")
	public ModelAndView setInsert(ReviewVO reviewVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = reviewService.setInsert(reviewVO);
		
		if(result>0) {
			mv.addObject("msg", "리뷰 감사합니다.");
			mv.addObject("path", "../place/placeSelect?num="+reviewVO.getRef());
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
