package com.zhiye.bhmall.modules.vote.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.zhiye.bhmall.modules.vote.domain.Question;

public interface IQuestionService {
	/**
	 * 
	 * @param record
	 * @return
	 */
	public int delete(Question record);

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
	public int insert(Question record);

	/**
	 * 插进去可选的对象，仅不为null的时候对象列会被插入
	 * 
	 * @param record
	 * @return
	 */
	public int insertSelective(Question record);

	/**
	 * 查询对象
	 * 
	 * @param record
	 * @return
	 */
	public List<Question> select(Question record);

	/**
	 * 查询全部
	 * 
	 * @return
	 */
	public List<Question> selectAll();

	/**
	 * 封装对象查询
	 * 
	 * @param example
	 * @return
	 */
	public List<Question> selectByExample(Object example);

	/**
	 * @param example
	 * @param rowBounds
	 * @return
	 */
	public List<Question> selectByExampleAndRowBounds(Object example, RowBounds rowBounds);

	/**
	 * 根据主键进行查询
	 * 
	 * @param key
	 * @return
	 */
	public Question selectByPrimaryKey(Object key);

	/**
	 * @param record
	 * @return
	 */
	public int selectCount(Question record);

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
	public Question selectOne(Question record);

	/**
	 * @param example
	 * @return
	 */
	public Question selectOneByExample(Object example);

	public int updateByExample(Question record, Object example);

	public int updateByExampleSelective(Question record, Object example);

	public int updateByPrimaryKey(Question record);

	public int updateByPrimaryKeySelective(Question record);
}
