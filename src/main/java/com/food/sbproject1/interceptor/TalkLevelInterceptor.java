package com.food.sbproject1.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.food.sbproject1.member.MemberVO;

@Component
public class TalkLevelInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		MemberVO memberVO = (MemberVO)request.getSession().getAttribute("member");
		boolean result = false;
		
		if(memberVO.getLevel() <= 2) {
			result = true;
		}else {
			request.setAttribute("msg", "2등급부터 소통작성이 가능합니다. 등업 신청을 진행해주세요.");
			request.setAttribute("path", "./talkList");
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
			view.forward(request, response);
		}
		
		return result;
	}
	
}
