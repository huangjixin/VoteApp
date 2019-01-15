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

import com.zhiye.bhmall.modules.vote.domain.Option;
import com.zhiye.bhmall.modules.vote.domain.User;
import com.zhiye.bhmall.modules.vote.service.IOptionService;
import com.zhiye.bhmall.modules.vote.service.IUserService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(tags = "选项后台控制器Api", description = "选项后台控制器api")
@Controller
@RequestMapping("vote/option")
public class OptionController {
	@Autowired
	private IOptionService optionService;
	@Autowired
	private IUserService userService;
	
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
		int result = optionService.deleteByPrimaryKey(id);
		return result;
	}
	
	@ApiOperation(value = "查看对象", notes = "")
	@GetMapping(value = "view/{id}")
	@ResponseBody
	public Option getById(@PathVariable(name = "id") String id) {
		Option record = optionService.selectByPrimaryKey(id);
		return record;
	}
	
	@ApiOperation(value = "查看全部对象", notes = "")
	@GetMapping(value = "selectAll")
	@ResponseBody
	public List<Option> selectAll() {
		List<Option> list = optionService.selectAll();
		return list;
	}
	
	@ApiOperation(value = "查询全部有departmentName的用户 ", notes = "")
	@GetMapping(value = "selectByDepartmentNameNotNull")
	@ResponseBody
	public List<User> selectByDepartmentNameNotNull() {
		List<User> list = this.userService.selectByDepartmentNameNotNull();
		return list;
	}
	
}
