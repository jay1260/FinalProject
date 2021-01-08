package com.food.sbproject1.interceptor;

import javax.management.loading.PrivateClassLoader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.food.sbproject1.level.LevelMapper;

@Component
public class MemberRoleInterceptor {

	
	@Autowired
	private LevelMapper levelMapper;
	
	
	
}
