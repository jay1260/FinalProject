package com.food.sbproject1.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.food.sbproject1.member.MemberVO;
import com.food.sbproject1.place.PlaceMapper;
import com.food.sbproject1.place.PlaceVO;

@Component
public class PlaceReviseInterceptor implements HandlerInterceptor{

	@Autowired
	private PlaceMapper placeMapper;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		MemberVO memberVO = (MemberVO)request.getSession().getAttribute("member");
		boolean result = false;
		
		String message = "권한이 없는 잘못된 경로입니다.";
		
		if(memberVO != null) {
			int num = Integer.parseInt(request.getParameter("num"));
			PlaceVO placeVO = new PlaceVO();
			placeVO.setNum(num);
			placeVO = placeMapper.getOne(placeVO);
			
			if(memberVO.getId().equals(placeVO.getWriter())) {
				result = true;
			}else {
				message = "작성자만 접근 가능합니다.";
			}
		}
		if(!result) {
			request.setAttribute("msg", message);
			request.setAttribute("path", "./placeList");
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
			view.forward(request, response);
		}
		
		return result;
	}
}
