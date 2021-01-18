package com.food.sbproject1.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.food.sbproject1.interceptor.CustomInterceptor;
import com.food.sbproject1.interceptor.LevelInterceptor;
import com.food.sbproject1.interceptor.MemberInterceptor;

@Configuration
public class ConfigInterceptor implements WebMvcConfigurer {

	@Autowired
	private MemberInterceptor memberInterceptor;
	
	@Autowired
	private LevelInterceptor levelInterceptor;
	
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
				
		WebMvcConfigurer.super.addInterceptors(registry);
	}
	
	
}
