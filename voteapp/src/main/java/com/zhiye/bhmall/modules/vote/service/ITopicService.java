package com.zhiye.bhmall.modules.vote.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.zhiye.bhmall.modules.vote.domain.Topic;
import com.zhiye.bhmall.modules.vote.vo.TopicVo;

public interface ITopicService {
	/**
	 * 
	 * @param record
	 * @return
	 */
	public int delete(Topic record);

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
	public int insert(Topic record);

	/**
	 * 插进去可选的对象，仅不为null的时候对象列会被插入
	 * 
	 * @param record
	 * @return
	 */
	public int insertSelective(Topic record);

	/**
	 * 查询对象
	 * 
	 * @param record
	 * @return
	 */
	public List<Topic> select(Topic record);

	/**
	 * 查询全部
	 * 
	 * @return
	 */
	public List<Topic> selectAll();

	/**
	 * 封装对象查询
	 * 
	 * @param example
	 * @return
	 */
	public List<Topic> selectByExample(Object example);

	/**
	 * @param example
	 * @param rowBounds
	 * @return
	 */
	public List<Topic> selectByExampleAndRowBounds(Object example, RowBounds rowBounds);

	/**
	 * 根据主键进行查询
	 * 
	 * @param key
	 * @return
	 */
	public Topic selectByPrimaryKey(Object key);

	/**
	 * @param record
	 * @return
	 */
	public int selectCount(Topic record);

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
	public Topic selectOne(Topic record);

	/**
	 * @param example
	 * @return
	 */
	public Topic selectOneByExample(Object example);

	public int updateByExample(Topic record, Object example);

	public int updateByExampleSelective(Topic record, Object example);

	public int updateByPrimaryKey(Topic record);

	public int updateByPrimaryKeySelective(Topic record);
	
	
	/**
	 * 查询所有在有效日期内的投票话题 。
	 * @return
	 */
	List<TopicVo> selectTopics();
}
