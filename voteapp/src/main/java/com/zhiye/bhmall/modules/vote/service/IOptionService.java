package com.zhiye.bhmall.modules.vote.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.zhiye.bhmall.modules.vote.domain.Option;

public interface IOptionService {
	/**
	 * 
	 * @param record
	 * @return
	 */
	public int delete(Option record);

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
	public int insert(Option record);

	/**
	 * 插进去可选的对象，仅不为null的时候对象列会被插入
	 * 
	 * @param record
	 * @return
	 */
	public int insertSelective(Option record);

	/**
	 * 查询对象
	 * 
	 * @param record
	 * @return
	 */
	public List<Option> select(Option record);

	/**
	 * 查询全部
	 * 
	 * @return
	 */
	public List<Option> selectAll();

	/**
	 * 封装对象查询
	 * 
	 * @param example
	 * @return
	 */
	public List<Option> selectByExample(Object example);

	/**
	 * @param example
	 * @param rowBounds
	 * @return
	 */
	public List<Option> selectByExampleAndRowBounds(Object example, RowBounds rowBounds);

	/**
	 * 根据主键进行查询
	 * 
	 * @param key
	 * @return
	 */
	public Option selectByPrimaryKey(Object key);

	/**
	 * @param record
	 * @return
	 */
	public int selectCount(Option record);

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
	public Option selectOne(Option record);

	/**
	 * @param example
	 * @return
	 */
	public Option selectOneByExample(Object example);

	public int updateByExample(Option record, Object example);

	public int updateByExampleSelective(Option record, Object example);

	public int updateByPrimaryKey(Option record);

	public int updateByPrimaryKeySelective(Option record);
}
