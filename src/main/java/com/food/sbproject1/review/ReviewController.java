package com.food.sbproject1.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/review/**")
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	// 리뷰
	@PostMapping("reviewWrite")
	public ModelAndView setInsert(ReviewVO reviewVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = reviewService.setInsert(reviewVO);
		if(result>0) {
			mv.addObject("msg", "작성 완료");
			mv.addObject("path", "../place/placeList");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	// 리뷰폼
	@GetMapping("reviewWrite")
	public void setInsert() throws Exception{}
}
