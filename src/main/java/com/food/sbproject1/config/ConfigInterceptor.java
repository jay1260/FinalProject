package com.food.sbproject1.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.food.sbproject1.interceptor.LevelInterceptor;
import com.food.sbproject1.interceptor.MemberInterceptor;
import com.food.sbproject1.interceptor.NoticeReviseInterceptor;
import com.food.sbproject1.interceptor.PlaceInterceptor;
import com.food.sbproject1.interceptor.PlaceLevelInterceptor;
import com.food.sbproject1.interceptor.PlaceReviseInterceptor;
import com.food.sbproject1.interceptor.TalkLevelInterceptor;
import com.food.sbproject1.interceptor.TalkReplyReviseInterceptor;
import com.food.sbproject1.interceptor.TalkReviseInterceptor;

@Configuration
public class ConfigInterceptor implements WebMvcConfigurer {

	@Autowired
	private MemberInterceptor memberInterceptor;
	
	@Autowired
	private LevelInterceptor levelInterceptor;
	
	@Autowired
	private PlaceInterceptor placeInterceptor;
	
	@Autowired
	private PlaceLevelInterceptor placeLevelInterceptor;
	
	@Autowired
	private PlaceReviseInterceptor placeReviseInterceptor;
	
	@Autowired
	private TalkReviseInterceptor talkReviseInterceptor;
	
	@Autowired
	private NoticeReviseInterceptor noticeReviseInterceptor;
	
	@Autowired
	private TalkLevelInterceptor talkLevelInterceptor;
	
	@Autowired
	private TalkReplyReviseInterceptor talkReplyReviseInterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
	
		registry.addInterceptor(memberInterceptor).addPathPatterns("member/**")
		.excludePathPatterns("/member/memberLogin")
		.excludePathPatterns("/member/memberAgree")
		.addPathPatterns("/member/memberPage")
		.addPathPatterns("/member/Update")
		.addPathPatterns("/member/adminPage");
		
		registry.addInterceptor(levelInterceptor).addPathPatterns("level/**")
		.excludePathPatterns("/level/levelList")
		.excludePathPatterns("/level/levelSelect")
		.addPathPatterns("/level/levelUpdate")
		.addPathPatterns("level/levelWrite")
		.addPathPatterns("/level/levelReply");
		
		// 로그인 후 이용가능
		registry.addInterceptor(placeInterceptor)
		.addPathPatterns("/place/placeWrite")
		.addPathPatterns("/place/placeLike")
		.addPathPatterns("/review/reviewWrite")
		.addPathPatterns("/talk/talkWrite")
		.addPathPatterns("/talk/talkReply");
		
		// 1등급부터 맛집 추천 가능
		registry.addInterceptor(placeLevelInterceptor).addPathPatterns("/place/placeWrite");
		
		// 작성자만 글 수정 가능
		registry.addInterceptor(placeReviseInterceptor)
		.addPathPatterns("/place/placeUpdate")
		.addPathPatterns("/place/placeDelete");
		
		registry.addInterceptor(talkReviseInterceptor).addPathPatterns("/talk/talkDelete");
		
		registry.addInterceptor(noticeReviseInterceptor).addPathPatterns("/notice/noticeDelete");
		
		registry.addInterceptor(talkLevelInterceptor).addPathPatterns("/talk/talkWrite");
		
		registry.addInterceptor(talkReplyReviseInterceptor).addPathPatterns("/talk/talkReplyDelete");
		
		WebMvcConfigurer.super.addInterceptors(registry);
	}
	
	
}
