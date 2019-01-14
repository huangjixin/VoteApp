package com.zhiye.bhmall.modules.vote.web;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.code.kaptcha.Producer;
import com.zhiye.bhmall.modules.vote.domain.User;
import com.zhiye.bhmall.modules.vote.domain.UserCriteria;
import com.zhiye.bhmall.modules.vote.service.IUserService;
import com.zhiye.bhmall.modules.vote.vo.Response;
import com.zhiye.bhmall.modules.vote.vo.SmsSend;
import com.zhiye.bhmall.utils.SmsSendUtil;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;


@Api(tags = "用户后台控制器Api", description = "用户级别后台控制器api")
@Controller
@RequestMapping("vote/user")
public class UserController {
	private static final String IMG_REDIS_KEY = "img:";

	@Autowired
	private IUserService userService;
	@Autowired
	private Producer producer;

	@Autowired
    CacheManager cacheManager;
	
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
		int result = userService.deleteByPrimaryKey(id);
		return result;
	}

	@ApiOperation(value = "查看对象", notes = "")
	@GetMapping(value = "view/{id}")
	@ResponseBody
	public User getById(@PathVariable(name = "id") Integer id) {
		User record = userService.selectByPrimaryKey(id);
		return record;
	}

	@ApiOperation(value = "查看全部对象", notes = "")
	@GetMapping(value = "selectAll")
	@ResponseBody
	public List<User> selectAll() {
		List<User> list = userService.selectAll();
		return list;
	}

	@ApiOperation(value = "登陆接口，如果登陆不成功则返回null，反则返回数据库第一个人的信息", notes = "登陆接口，如果登陆不成功则返回null，反则返回数据库第一个人的信息")
	@PostMapping(value = "login")
	@ResponseBody
	public User login(@RequestParam(value = "mobil") String mobil) {
		User user = userService.login(mobil);
		if (user == null) {
			user = new User();
		}
		return user;
	}
	
	@ApiOperation(value = "登陆接口，如果登陆不成功则返回null，反则返回数据库第一个人的信息", notes = "登陆接口，如果登陆不成功则返回null，反则返回数据库第一个人的信息")
	@PostMapping(value = "loginWithVerifyCode")
	@ResponseBody
	public Response loginWithVerifyCode(@RequestParam(value = "mobil") String mobil,
			@RequestParam(value = "verifyCode") String verifyCode, HttpSession httpSession) {
		Response resp = new Response();
		User user = null;
		Cache cache = cacheManager.getCache("verifyCodeCache");
		
		String text = (String) httpSession.getAttribute(IMG_REDIS_KEY+mobil);
		text = cache.get(IMG_REDIS_KEY+mobil,String.class);
		
		if(text ==null || verifyCode==null || !verifyCode.equals(text)) {
			resp.setCode("400");
			resp.setMessage("验证码错误");
			return resp;
		}
		
		user = userService.login(mobil);
		if (user == null) {
			resp.setCode("400");
			resp.setMessage("电话号码错误");
			return resp;
		}
//		cache.evict(IMG_REDIS_KEY+mobil);
		httpSession.setAttribute(IMG_REDIS_KEY+mobil, null);
		httpSession.setAttribute("userId", user.getId());
		resp.setData(user);
		boolean isVoted = userService.checkVote(2, user.getId());
		if(isVoted) {
			resp.setCode("2000");
		}
		return resp;
	}

	@ApiOperation(value = "createImg", notes = "")
	@RequestMapping(value = "createImg", method = RequestMethod.GET)
	public void captcha(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Cache-Control", "no-store, no-cache");
		response.setContentType("image/jpeg");
		// 生成文字验证码
		String text = producer.createText();
		// 将验证码保存至redis key为sessionId
//		if (redisUtil != null) {
//			String key = IMG_REDIS_KEY + request.getSession().getId();
//			redisUtil.set(key, text, 120);
//		}
		// 生成图片验证码
		BufferedImage image = producer.createImage(text);
		ServletOutputStream out = response.getOutputStream();
		ImageIO.write(image, "jpg", out);
		IOUtils.closeQuietly(out);
	}

	@ApiOperation(value = "getVerifyCode", notes = "获取验证码")
	@RequestMapping(value = "getVerifyCode", method = RequestMethod.GET)
	@ResponseBody
	public Response getVerifyCode(@RequestParam(value = "mobil") String mobil, HttpServletRequest request,
			HttpServletResponse response, HttpSession httpSession) {
		
		
		Response resp = new Response();
		User user = this.userService.login(mobil);
		if(user==null) {
			resp.setCode("400");
			resp.setMessage("无权限");
			return resp;
		}
		
		// 生成文字验证码
		String text = producer.createText();
//		SmsSend  smsSend=new SmsSend();
//    	smsSend.setPhoneNo("13926205227");
//    	smsSend.setVerifyCode("1408");
//    	String result = SmsSendUtil.captchaSms(smsSend);
		long vcode = Math.round(Math.random()*10000);
		if(vcode<1000) {
			vcode = Math.round(Math.random()*10000);
		}
		text = vcode+"";
		SmsSend smsSend = new SmsSend();
		smsSend.setPhoneNo(mobil);
		smsSend.setVerifyCode(text);
		String result = SmsSendUtil.captchaSms(smsSend);
		if("200".equals(result)) {
			Cache cache = cacheManager.getCache("verifyCodeCache");
			cache.put(IMG_REDIS_KEY+mobil, text);
			httpSession.setAttribute(IMG_REDIS_KEY+mobil, text);
		}else {
			resp.setCode(result);
			resp.setMessage("发送短信失败");
		}
		resp.setCode("200");
		resp.setMessage("发送成功");
		return resp;
	}
	
	@ApiOperation(value = "selectUsersWithDepartmentIsNotNull", notes = "查询所有部门不为null的列表")
	@RequestMapping(value = "selectUsersWithDepartmentIsNotNull", method = RequestMethod.GET)
	@ResponseBody
	public Response selectUsersWithDepartmentIsNotNull() {
		Response resp = new Response();
		UserCriteria userCriteria = new UserCriteria();
		userCriteria.createCriteria().andDepartmnetNameIsNotNull();
		List<User> list = this.userService.selectByExample(userCriteria);
		resp.setData(list);
		
		resp.setCode("200");
		resp.setMessage("发送成功");
		return resp;
	}

}
