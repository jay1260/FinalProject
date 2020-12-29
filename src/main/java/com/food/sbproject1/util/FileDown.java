package com.food.sbproject1.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

import com.food.sbproject1.member.MemberFileVO;

@Component("fileDown")
public class FileDown extends AbstractView {

	@Autowired
	private ResourceLoader resourceLoader;
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		//1.
		String filePath = "classpath:/static/"+(String)model.get("filePath");
		//2.
		MemberFileVO memberFileVO =(MemberFileVO)model.get("memberFileVO");
		
		filePath= filePath+"/"+memberFileVO.getFileName();
		//3.
		File file = resourceLoader.getResource(filePath).getFile();
		
		response.setCharacterEncoding("UTF-8");
		
		response.setContentLengthLong(file.length());
		
		String fileName = URLEncoder.encode(memberFileVO.getOriName(), "UTF-8");
		
		response.setHeader("Content-Disposition", "attachment;fileName=\""+fileName+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		FileInputStream fi = new FileInputStream(file);
		
		OutputStream os = response.getOutputStream();
		
		FileCopyUtils.copy(fi, os);
		
		os.close();
		fi.close();
	}
}
