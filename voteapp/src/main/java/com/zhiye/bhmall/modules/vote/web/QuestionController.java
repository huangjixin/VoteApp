package com.zhiye.bhmall.modules.vote.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhiye.bhmall.modules.vote.domain.Question;
import com.zhiye.bhmall.modules.vote.service.IQuestionService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(tags = "问题后台控制器Api", description = "问题级别后台控制器api")
@Controller
@RequestMapping("vote/question")
public class QuestionController {
	@Autowired
	private IQuestionService questionService;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		dateFormat.setLenient(false);
		// 此方法中的参数格式化 针对@RequestBody修饰的对象时无效
		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	@ApiOperation(value = "刪除对象", notes = "")
	@DeleteMapping(value = "delete/{id}")
	@ResponseBody
	public int delete(@PathVariable(name = "id") String id) {
		int result = questionService.deleteByPrimaryKey(id);
		return result;
	}
	
	@ApiOperation(value = "查看对象", notes = "")
	@GetMapping(value = "view/{id}")
	@ResponseBody
	public Question getById(@PathVariable(name = "id") String id) {
		Question record = questionService.selectByPrimaryKey(id);
		return record;
	}
	
	@ApiOperation(value = "查看全部对象", notes = "")
	@GetMapping(value = "selectAll")
	@ResponseBody
	public List<Question> selectAll() {
		List<Question> list = questionService.selectAll();
		return list;
	}
	
}
