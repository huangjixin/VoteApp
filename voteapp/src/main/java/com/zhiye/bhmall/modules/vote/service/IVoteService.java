package com.zhiye.bhmall.modules.vote.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.zhiye.bhmall.modules.vote.domain.User;
import com.zhiye.bhmall.modules.vote.domain.Vote;
import com.zhiye.bhmall.modules.vote.vo.PersonVoteResultVo;
import com.zhiye.bhmall.modules.vote.vo.VoteResultVo;

public interface IVoteService {
	/**
	 * 
	 * @param record
	 * @return
	 */
	public int delete(Vote record);

	/**
	 * 
	 * @param record
	 * @return
	 */
	public int deleteBatch(List<String> key);

	/**
	 * 根据封装好的条件进行删除
	 * 
	 * @param example
	 * @return
	 */
	public int deleteByExample(Object example);

	/**
	 * 根据主键删除对象
	 * 
	 * @param key
	 * @return
	 */
	public int deleteByPrimaryKey(Object key);

	/**
	 * 插进去对象
	 * 
	 * @param record
	 * @return
	 */
	public int insert(Vote record);

	/**
	 * 插进去对象
	 * 
	 * @param record
	 * @return
	 */
	public int insert(List<Vote> records);

	/**
	 * 插进去可选的对象，仅不为null的时候对象列会被插入
	 * 
	 * @param record
	 * @return
	 */
	public int insertSelective(Vote record);

	/**
	 * 查询对象
	 * 
	 * @param record
	 * @return
	 */
	public List<Vote> select(Vote record);

	/**
	 * 查询全部
	 * 
	 * @return
	 */
	public List<Vote> selectAll();

	/**
	 * 封装对象查询
	 * 
	 * @param example
	 * @return
	 */
	public List<Vote> selectByExample(Object example);

	/**
	 * @param example
	 * @param rowBounds
	 * @return
	 */
	public List<Vote> selectByExampleAndRowBounds(Object example, RowBounds rowBounds);

	/**
	 * 根据主键进行查询
	 * 
	 * @param key
	 * @return
	 */
	public Vote selectByPrimaryKey(Object key);

	/**
	 * @param record
	 * @return
	 */
	public int selectCount(Vote record);

	/**
	 * @param record
	 * @return
	 */
	public int selectCountByExample(Object example);

	/**
	 * 查询一条
	 * 
	 * @param record
	 * @return
	 */
	public Vote selectOne(Vote record);

	/**
	 * @param example
	 * @return
	 */
	public Vote selectOneByExample(Object example);

	public int updateByExample(Vote record, Object example);

	public int updateByExampleSelective(Vote record, Object example);

	public int updateByPrimaryKey(Vote record);

	public int updateByPrimaryKeySelective(Vote record);

	public int insertBatch(List<Vote> list);
	
	/**
	 * 获取投票结果
	 * @return
	 */
	List<VoteResultVo> selectVoteResult(Integer topicId);
	
	/**
	 * @param userId
	 * @return
	 */
	List<PersonVoteResultVo> selectVotesByUserId(Integer userId,Integer topicId);
	
	/**
	 * 清空投票数据和中间表。
	 * @return
	 */
	boolean clearVote();
	
	/**
	 * 查询竞选人所有的投票人
	 * @param votedUserId
	 * @return
	 */
	List<User> selectUsersByVotedUserId( Integer votedUserId,Integer questionId);
}
