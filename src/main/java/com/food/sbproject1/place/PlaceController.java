package com.food.sbproject1.place;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/place/**")
public class PlaceController {

	@Autowired
	private PlaceService placeService;

	// 맛집 추천 작성
	@GetMapping("placeWrite")
	public void setInsert() throws Exception{}
	
	// 맛집 추천 리스트
	@GetMapping("placeList")
	public ModelAndView getList() throws Exception{
		ModelAndView mv = new ModelAndView();
		List<PlaceVO> ar = placeService.getList();
		
		mv.addObject("list", ar);
		mv.setViewName("place/placeList");
		return mv;
	}
}
