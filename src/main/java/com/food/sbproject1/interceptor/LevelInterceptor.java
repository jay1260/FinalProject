package com.food.sbproject1.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.food.sbproject1.member.MemberVO;

@Component
public class LevelInterceptor implements HandlerInterceptor{

	

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		boolean result = false;
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		
		if(memberVO.getId().equals("admin")|| memberVO.getLevel()==3 || memberVO.getLevel()==2) {
				result = true;
				
		}

		else {
			request.setAttribute("msg", "접근권한이없습니다");
			request.setAttribute("path", "../");
			RequestDispatcher dispatcher = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
			dispatcher.forward(request, response);
		}
		
		return result;
	}
	
}
