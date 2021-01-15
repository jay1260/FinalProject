package com.food.sbproject1.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.food.sbproject1.member.MemberVO;

@Component
public class PlaceInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		MemberVO memberVO = (MemberVO)request.getSession().getAttribute("member");
		
		boolean check = false;
		
		if(memberVO!=null) {
			check = true;
		}
		else {
			request.setAttribute("msg", "로그인 후 이용가능합니다.");
			request.setAttribute("path", "../member/memberLogin");	
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/result.jsp");
			view.forward(request, response);
		}
		
		return check;
	}
}
