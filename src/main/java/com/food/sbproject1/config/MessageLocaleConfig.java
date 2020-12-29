package com.food.sbproject1.config;

import java.util.Locale;

import org.hibernate.validator.spi.messageinterpolation.LocaleResolver;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

@Configuration
public class MessageLocaleConfig {

	@Bean
	public CookieLocaleResolver localeResolver() {
		
		SessionLocaleResolver sessionLocaleResolver = new SessionLocaleResolver();
		
		sessionLocaleResolver.setDefaultLocale(Locale.KOREAN);
		
		CookieLocaleResolver cookieLocaleResolver = new CookieLocaleResolver();
		cookieLocaleResolver.setDefaultLocale(Locale.KOREAN);
		cookieLocaleResolver.setCookieName("lang");
		
		return cookieLocaleResolver;
		
	}
	
}
