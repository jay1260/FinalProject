package com.food.sbproject1.place;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.food.sbproject1.review.ReviewService;
import com.food.sbproject1.review.ReviewVO;
import com.food.sbproject1.util.Pager;

@Controller
@RequestMapping("/place/**")
public class PlaceController {

	@Autowired
	private PlaceService placeService;
	@Autowired
	private ReviewService reviewService;
	
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
	public ModelAndView getOne(PlaceVO placeVO, ReviewVO reviewVO,Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		placeVO = placeService.getOne(placeVO);
		
		reviewVO.setRef(placeVO.getNum());
		System.out.println(reviewVO.getRef());
		pager.setRef(placeVO.getNum());
		
		List<ReviewVO> ar = reviewService.getReviewList(pager);
		long rCount = reviewService.getReviewCount(pager);
		float avg = reviewService.getStarAvg(reviewVO);
		
		mv.addObject("pager", pager);
		mv.addObject("rList", ar);
		mv.addObject("rCount", rCount);
		mv.addObject("avg", avg);
		mv.addObject("one", placeVO);
		
		return mv;
	}
	
	// 리뷰 정보 항목 
	@GetMapping("placeReview")
	public ModelAndView getPlaceReviewList(Pager pager, PlaceVO placeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		placeVO = placeService.getOne(placeVO);
		pager.setRef(placeVO.getNum());
		List<ReviewVO> ar = reviewService.getReviewList(pager);
		
		mv.addObject("rList", ar);
		mv.setViewName("place/placeReview");
		return mv;
	}
	
	// 맛집 추천 작성
	@PostMapping("placeWrite")
	public ModelAndView setInsert(PlaceVO placeVO, MultipartFile photo, MultipartFile [] files) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = placeService.setInsert(placeVO, photo, files);
		if(result>0) {
			mv.addObject("msg", "추천 감사합니다.");
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
