package com.food.sbproject1.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.food.sbproject1.member.MemberVO;

@Component
public class MemberInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		boolean result = false;
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		
		if(memberVO!=null) {
				result = true;
		}
		else{
			request.setAttribute("msg", "로그인 및 회원가입이 필요합니다.");
			request.setAttribute("path", "../");
			RequestDispatcher dispatcher = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
			dispatcher.forward(request, response);
			
		}
		return result;
	}
}
