package com.food.sbproject1.util;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;

@Component
public class FilePathAppoint {

	@Autowired
	private ResourceLoader resourceLoader;
	
	public File getUseResoureLoader(String filePath)throws Exception{
		// /statice/은 제외한 하위 경로
		
		// 실제 경로
		String path = "classpath:/static/";
		File file = new File(resourceLoader.getResource(path).getFile(), filePath);
		System.out.println(file.getAbsolutePath());
		
		if(!file.exists()) {
			file.mkdirs();
		}
		
		return file;
	}
}
