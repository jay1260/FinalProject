package com.food.sbproject1.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.food.sbproject1.interceptor.CustomInterceptor;

@Configuration
public class ConfigInterceptor implements WebMvcConfigurer {

	@Autowired
	private CustomInterceptor customInterceptor;
	
	
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
	
		registry.addInterceptor(customInterceptor).addPathPatterns("member/**")
		.excludePathPatterns("/member/memberLogin")
		.excludePathPatterns("/member/memberAgree")
		.excludePathPatterns("/member/memberPage");
		
		
	}
	
}
