package com.zhiye.bhmall.modules.vote.web;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhiye.bhmall.modules.vote.domain.User;
import com.zhiye.bhmall.modules.vote.domain.UserCriteria;
import com.zhiye.bhmall.modules.vote.domain.UserTopic;
import com.zhiye.bhmall.modules.vote.domain.Vote;
import com.zhiye.bhmall.modules.vote.service.IUserService;
import com.zhiye.bhmall.modules.vote.service.IUserTopicService;
import com.zhiye.bhmall.modules.vote.service.IVoteService;
import com.zhiye.bhmall.modules.vote.vo.PersonVoteResultVo;
import com.zhiye.bhmall.modules.vote.vo.Response;
import com.zhiye.bhmall.modules.vote.vo.VoteResultVo;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(tags = "投票后台控制器Api", description = "投票级别后台控制器api")
@Controller
@RequestMapping("vote/vote")
public class VoteController {
	@Autowired
	private IUserService userService;
	@Autowired
	private IUserTopicService userTopicService;
	@Autowired
	private IVoteService voteService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		dateFormat.setLenient(false);
		// 此方法中的参数格式化 针对@RequestBody修饰的对象时无效
		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	@ApiOperation(value = "投票", notes = "")
	@PostMapping(value = "insert")
	@ResponseBody
	public Response insert(@RequestBody List<Vote> votes, @RequestParam(value = "userId") Integer userId,
			@RequestParam(value = "topicId") Integer topicId) {
		Response resp = new Response();
		boolean isVoted = userService.checkVote(topicId, userId);

		if (isVoted) {
			resp.setCode("400");
			resp.setMessage("本次投票只允许投一次");
			return resp;
		}

		int res = this.voteService.insert(votes);
		if (res > 0) {
			UserTopic userTopic = new UserTopic();
			userTopic.setTopicId(topicId);
			userTopic.setUserId(userId);
			userTopicService.insert(userTopic);
			
			User user = this.userService.selectByPrimaryKey(userId);
			user.setIsVoteed(1);
			this.userService.updateByPrimaryKey(user);
		}
		return resp;
	}

	@ApiOperation(value = "刪除对象", notes = "")
	@DeleteMapping(value = "delete/{id}")
	@ResponseBody
	public int delete(@PathVariable(name = "id") String id) {
		int result = voteService.deleteByPrimaryKey(id);
		return result;
	}

	@ApiOperation(value = "查看对象", notes = "")
	@GetMapping(value = "view/{id}")
	@ResponseBody
	public Vote getById(@PathVariable(name = "id") String id) {
		Vote record = voteService.selectByPrimaryKey(id);
		return record;
	}

	@ApiOperation(value = "查看全部对象", notes = "")
	@GetMapping(value = "selectAll")
	@ResponseBody
	public List<Vote> selectAll() {
		List<Vote> list = voteService.selectAll();
		return list;
	}

	@ApiOperation(value = "查看投票結果", notes = "")
	@GetMapping(value = "selectVoteResult")
	@ResponseBody
	public List<VoteResultVo> selectVoteResult(@RequestParam(value = "topicId") Integer topicId) {
		List<VoteResultVo> list = this.voteService.selectVoteResult(topicId);
		return list;
	}
	
	@ApiOperation(value = "查看个人投票結果", notes = "")
	@GetMapping(value = "selectVoteByUserId")
	@ResponseBody
	public List<PersonVoteResultVo> selectVoteByUserId(@RequestParam(value = "userId") Integer userId,
			@RequestParam(value = "topicId") Integer topicId,HttpSession httpSession) {
//		
//		Object userId = httpSession.getAttribute("userId");
		if(userId == null) {
			return new ArrayList<PersonVoteResultVo>();
		}
		List<PersonVoteResultVo> list = this.voteService.selectVotesByUserId(Integer.valueOf(userId.toString()),topicId);
		return list;
	}
	
	@ApiOperation(value = "清除投票数据", notes = "清除投票数据")
	@GetMapping(value = "clearVote")
	@ResponseBody
	public Response clearVote(@RequestParam(value = "userId") Integer userId,HttpSession httpSession) {
		Response response = new Response();

//		Object userId = httpSession.getAttribute("userId");
		
		if(userId == null) {
			response.setCode("400");
			response.setMessage("尚未登录");
			return response;
		}
		User user = this.userService.selectByPrimaryKey(userId);
		if(user == null) {
			response.setCode("400");
			response.setMessage("查找不到用户");
			return response;
		}
		boolean result = this.voteService.clearVote();
		if(result) {
			response.setCode("200");
			response.setMessage("清除成功");
			return response;
		}
		return response;
	}
	
	@ApiOperation(value = "查询投票人", notes = "查询投票人")
	@GetMapping(value = "selectUsersByVotedUserId")
	@ResponseBody
	public Response selectUsersByVotedUserId(@RequestParam(value = "votedUserId") Integer votedUserId,@RequestParam(value = "questionId") Integer questionId,HttpSession httpSession) {
		Response response = new Response();
		
		List<User> list = this.voteService.selectUsersByVotedUserId(votedUserId,questionId);
		response.setData(list);
		return response;
	}

}
