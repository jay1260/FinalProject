package com.food.sbproject1.interceptor;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.food.sbproject1.member.MemberVO;
import com.food.sbproject1.notice.NoticeMapper;
import com.food.sbproject1.notice.NoticeVO;

@Component
public class NoticeReviseInterceptor implements HandlerInterceptor{

	@Autowired
	private NoticeMapper noticeMapper;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		MemberVO memberVO = (MemberVO)request.getSession().getAttribute("member");
		boolean result = false;
		
		String message = "접근 권한이 없는 경로입니다.";
		
		if(memberVO != null) {
			int num = Integer.parseInt(request.getParameter("num"));
			NoticeVO noticeVO = new NoticeVO();
			noticeVO.setNum(num);
			noticeVO = noticeMapper.getNoticeOne(noticeVO);
			
			if(memberVO.getId().equals(noticeVO.getWriter())) {
				result = true;
			}else {
				message = "접근 권한이 없습니다.";
			}
		}
		
		if(!result) {
			request.setAttribute("msg", message);
			request.setAttribute("path", "../talk/talkList");
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
			view.forward(request, response);
		}
		
		return result;
	}
}
