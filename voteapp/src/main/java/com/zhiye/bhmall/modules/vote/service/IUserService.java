package com.zhiye.bhmall.modules.vote.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.zhiye.bhmall.modules.vote.domain.User;

public interface IUserService {
	/**
	 * 
	 * @param record
	 * @return
	 */
	public int delete(User record);

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
	public int insert(User record);

	/**
	 * 插进去可选的对象，仅不为null的时候对象列会被插入
	 * 
	 * @param record
	 * @return
	 */
	public int insertSelective(User record);

	/**
	 * 查询对象
	 * 
	 * @param record
	 * @return
	 */
	public List<User> select(User record);

	/**
	 * 查询全部
	 * 
	 * @return
	 */
	public List<User> selectAll();

	/**
	 * 封装对象查询
	 * 
	 * @param example
	 * @return
	 */
	public List<User> selectByExample(Object example);

	/**
	 * @param example
	 * @param rowBounds
	 * @return
	 */
	public List<User> selectByExampleAndRowBounds(Object example, RowBounds rowBounds);

	/**
	 * 根据主键进行查询
	 * 
	 * @param key
	 * @return
	 */
	public User selectByPrimaryKey(Object key);

	/**
	 * @param record
	 * @return
	 */
	public int selectCount(User record);

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
	public User selectOne(User record);

	/**
	 * @param example
	 * @return
	 */
	public User selectOneByExample(Object example);

	public int updateByExample(User record, Object example);

	public int updateByExampleSelective(User record, Object example);

	public int updateByPrimaryKey(User record);

	public int updateByPrimaryKeySelective(User record);
	
	/**
	 * 根据电话（包括公司电话和私人电话）查询用户。
	 * @param mobil
	 * @return
	 */
	User login(String mobil);
	
	/**
	 * 检查某人是否已经在某个话题投了票。
	 * @param topicId
	 * @param userId
	 * @return
	 */
	boolean checkVote(int topicId,int userId);
	
	List<User> selectByDepartmentNameNotNull();
}
