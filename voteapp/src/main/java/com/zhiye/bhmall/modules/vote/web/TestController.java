package com.zhiye.bhmall.modules.vote.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.zhiye.bhmall.modules.vote.domain.User;
import com.zhiye.bhmall.modules.vote.vo.Response;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(tags = "Test后台控制器Api", description = "test后台控制器api")
@Controller
@RequestMapping("test")
public class TestController {
	
	@ApiOperation(value = "测试对象", notes = "")
	@PostMapping(value = "testPost")
	@ResponseBody
	public Response testPost(@RequestParam(name = "username") String username) {
		Response response = new Response();
		response.setData(username);
		return response;
	}
	
	@ApiOperation(value = "测试对象", notes = "")
	@PostMapping(value = "testObject")
	@ResponseBody
	public Response testObject(User user) {
		Response response = new Response();
		response.setData(user);
		return response;
	}
	
	@ApiOperation(value = "测试对象数組", notes = "")
	@PostMapping(value = "testArrays")
	@ResponseBody
	public Response testArrays(@RequestParam("users") List<User> users) {
		Response response = new Response();
		response.setData(users);
		return response;
	}
	
	@ApiOperation(value = "测试对象数组", notes = "")
	@PostMapping(value = "testObjectArray")
	@ResponseBody
	public Response testObjectArray(@RequestBody List<User> users) {
		Response response = new Response();
		response.setData(users);
		return response;
	}
	
	@ApiOperation(value = "测试单文件上传", notes = "")
	@PostMapping(value = "testFile")
	@ResponseBody
	public Response testFile(@RequestParam("file") MultipartFile file,HttpServletRequest request) {
		Response response = new Response();
		String contentType = file.getContentType();
        String fileName = file.getOriginalFilename();
        String filePath = request.getSession().getServletContext().getRealPath("imgupload");
        File targetFile = new File(filePath);  
       
        if(!targetFile.exists()){    
            targetFile.mkdirs();    
        }       
        targetFile = new File(filePath+File.separator+fileName);
        try {
			file.transferTo(targetFile);
		} catch (IllegalStateException e) {
			response.setMessage("文件上传失败");
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       
		return response;
	}
	
	@ApiOperation(value = "测试多文件上传", notes = "")
	@PostMapping(value = "testMultiFiles")
	@ResponseBody
	public Response testMultiFiles(@RequestParam("files") MultipartFile[] files,HttpServletRequest request) {
		Response response = new Response();
		for (MultipartFile file : files) {
			String contentType = file.getContentType();
			String fileName = file.getOriginalFilename();
			String filePath = request.getSession().getServletContext().getRealPath("imgupload");
			File targetFile = new File(filePath);  
			
			if(!targetFile.exists()){    
				targetFile.mkdirs();    
			}       
			targetFile = new File(filePath+File.separator+fileName);
			try {
				file.transferTo(targetFile);
			} catch (IllegalStateException e) {
				response.setMessage("文件上传失败");
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return response;
	}
}
