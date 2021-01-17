package com.food.sbproject1.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.food.sbproject1.member.MemberVO;

@Component
public class PlaceLevelInterceptor implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		MemberVO memberVO = (MemberVO)request.getSession().getAttribute("member");
		boolean result = false;
		
		if(memberVO.getLevel() == 1) {
			result = true;
		}else {
			request.setAttribute("msg", "맛집 추천은 1등급부터 가능합니다.");
			request.setAttribute("path", "./placeList");
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
			view.forward(request, response);
		}
		
		return result;
	}
}
