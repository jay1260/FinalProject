package com.food.sbproject1.main;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.food.sbproject1.place.PlaceService;
import com.food.sbproject1.place.PlaceVO;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired
	private PlaceService placeService;
	
	public String home() {
		return "index";
	}
	
	@GetMapping("")
	public ModelAndView getMainList() throws Exception{
		ModelAndView mv = new ModelAndView();
		List<PlaceVO> ar = placeService.getMainList();
		mv.addObject("mainList", ar);
		mv.setViewName("index");
		
		return mv;
	}
	
}
