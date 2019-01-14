package com.zhiye.bhmall.modules.vote.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.zhiye.bhmall.modules.vote.domain.UserTopic;

public interface IUserTopicService {
	/**
	 * 
	 * @param record
	 * @return
	 */
	public int delete(UserTopic record);

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
	public int insert(UserTopic record);

	/**
	 * 插进去可选的对象，仅不为null的时候对象列会被插入
	 * 
	 * @param record
	 * @return
	 */
	public int insertSelective(UserTopic record);

	/**
	 * 查询对象
	 * 
	 * @param record
	 * @return
	 */
	public List<UserTopic> select(UserTopic record);

	/**
	 * 查询全部
	 * 
	 * @return
	 */
	public List<UserTopic> selectAll();

	/**
	 * 封装对象查询
	 * 
	 * @param example
	 * @return
	 */
	public List<UserTopic> selectByExample(Object example);

	/**
	 * @param example
	 * @param rowBounds
	 * @return
	 */
	public List<UserTopic> selectByExampleAndRowBounds(Object example, RowBounds rowBounds);

	/**
	 * 根据主键进行查询
	 * 
	 * @param key
	 * @return
	 */
	public UserTopic selectByPrimaryKey(Object key);

	/**
	 * @param record
	 * @return
	 */
	public int selectCount(UserTopic record);

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
	public UserTopic selectOne(UserTopic record);

	/**
	 * @param example
	 * @return
	 */
	public UserTopic selectOneByExample(Object example);

	public int updateByExample(UserTopic record, Object example);

	public int updateByExampleSelective(UserTopic record, Object example);

	public int updateByPrimaryKey(UserTopic record);

	public int updateByPrimaryKeySelective(UserTopic record);
}
