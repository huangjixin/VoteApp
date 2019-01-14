package com.zhiye.bhmall.modules.vote.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.zhiye.bhmall.modules.vote.domain.User;
import com.zhiye.bhmall.modules.vote.domain.Vote;
import com.zhiye.bhmall.modules.vote.vo.PersonVoteResultVo;
import com.zhiye.bhmall.modules.vote.vo.VoteResultVo;

import tk.mybatis.mapper.common.Mapper;

public interface VoteMapper extends Mapper<Vote> {
	/**
	 * 批量插入数据
	 * @param list
	 * @return
	 */
	public int insertBatch(List<Vote> list);
	
	/**
	 * 获取投票结果
	 * @return
	 */
	List<VoteResultVo> selectVoteResult(@Param(value="topicId")Integer topicId);
	
	/**
	 * @param userId
	 * @return
	 */
	List<PersonVoteResultVo> selectVotesByUserId(@Param(value="userId")Integer userId,@Param(value="topicId")Integer topicId);
	
	List<User> selectUsersByVotedUserId(@Param(value = "votedUserId") Integer votedUserId,@Param(value = "questionId") Integer questionId);
}