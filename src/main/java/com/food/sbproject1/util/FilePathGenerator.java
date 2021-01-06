package com.food.sbproject1.util;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;

@Component
public class FilePathGenerator {

	@Autowired
	private ResourceLoader resourceLoader;
	
	public File getResourceLoader(String filePath) throws Exception{
		
		String path = "classpath:/static/";
		
		File file = new File(resourceLoader.getResource(path).getFile(), filePath);
		System.out.println(file.getAbsolutePath());
		
		if(!file.exists()) {
			file.mkdir();			
		}
		return file;
	}
}
