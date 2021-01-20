package com.food.sbproject1.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.food.sbproject1.member.MemberVO;
import com.food.sbproject1.talk.TalkMapper;
import com.food.sbproject1.talk.TalkReplyVO;

@Component
public class TalkReplyReviseInterceptor implements HandlerInterceptor{

	@Autowired
	private TalkMapper talkMapper;
	
	String message = "권한이 없는 잘못된 경로입니다.";
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		MemberVO memberVO = (MemberVO)request.getSession().getAttribute("member");
		boolean result = false;
		
		if(memberVO != null) {
			int num = Integer.parseInt(request.getParameter("num"));
			TalkReplyVO talkReplyVO = new TalkReplyVO();
			talkReplyVO.setNum(num);
			talkMapper.setReplyDelete(talkReplyVO);
			
			if(memberVO.getId().equals(talkReplyVO.getWriter())) {
				result = true;
			}else {
				message = "작성자만 접근 가능합니다.";
			}
		}
		
		if(!result) {
			request.setAttribute("msg", message);
			request.setAttribute("path", "./talkList");
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
			view.forward(request, response);
		}
		
		return result;
	}
}
