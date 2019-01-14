/**
 * 
 */
package com.zhiye.bhmall.modules.vote.service.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zhiye.bhmall.modules.vote.domain.UserTopic;
import com.zhiye.bhmall.modules.vote.mapper.UserTopicMapper;
import com.zhiye.bhmall.modules.vote.service.IUserTopicService;

/**
 * @author admin
 *
 */
@Transactional(rollbackFor=Exception.class)
@Service
public class UserTopicServiceImpl implements IUserTopicService {
	private static Logger logger = LoggerFactory.getLogger(UserTopicServiceImpl.class);

	private static final String BASE_MESSAGE = "用户模块类UserTopicServiceImpl增删改查";
	
	@Autowired
	private UserTopicMapper userTopicMapper;

	
	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#delete(com.zhiye.bhmall.modules.vote.domain.UserTopic)
	 */
	@Override
	public int delete(UserTopic record) {
		logger.info("");
		int result = userTopicMapper.delete(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#deleteBatch(java.util.List)
	 */
	@Override
	public int deleteBatch(List<String> key) {
		// TODO Auto-generated method stub
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#deleteByExample(java.lang.Object)
	 */
	@Override
	public int deleteByExample(Object example) {
		int result = userTopicMapper.deleteByExample(example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#deleteByPrimaryKey(java.lang.Object)
	 */
	@Override
	public int deleteByPrimaryKey(Object key) {
		int result = userTopicMapper.deleteByPrimaryKey(key);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#insert(com.zhiye.bhmall.modules.vote.domain.UserTopic)
	 */
	@Override
	public int insert(UserTopic record) {
		int result = userTopicMapper.insert(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#insertSelective(com.zhiye.bhmall.modules.vote.domain.UserTopic)
	 */
	@Override
	public int insertSelective(UserTopic record) {
		int result = userTopicMapper.insertSelective(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#select(com.zhiye.bhmall.modules.vote.domain.UserTopic)
	 */
	@Override
	public List<UserTopic> select(UserTopic record) {
		List<UserTopic> list = this.userTopicMapper.select(record);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#selectAll()
	 */
	@Override
	public List<UserTopic> selectAll() {
		List<UserTopic> list = this.userTopicMapper.selectAll();
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#selectByExample(java.lang.Object)
	 */
	@Override
	public List<UserTopic> selectByExample(Object example) {
		List<UserTopic> list = this.userTopicMapper.selectByExample(example);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#selectByExampleAndRowBounds(java.lang.Object, org.apache.ibatis.session.RowBounds)
	 */
	@Override
	public List<UserTopic> selectByExampleAndRowBounds(Object example, RowBounds rowBounds) {
		List<UserTopic> list = this.userTopicMapper.selectByExampleAndRowBounds( example, rowBounds);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#selectByPrimaryKey(java.lang.Object)
	 */
	@Override
	public UserTopic selectByPrimaryKey(Object key) {
		UserTopic user= this.userTopicMapper.selectByPrimaryKey(key);
		return user;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#selectCount(com.zhiye.bhmall.modules.vote.domain.UserTopic)
	 */
	@Override
	public int selectCount(UserTopic record) {
		int result = this.userTopicMapper.selectCount(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#selectCountByExample(java.lang.Object)
	 */
	@Override
	public int selectCountByExample(Object example) {
		int result = this.userTopicMapper.selectCountByExample(example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#selectOne(com.zhiye.bhmall.modules.vote.domain.UserTopic)
	 */
	@Override
	public UserTopic selectOne(UserTopic record) {
		UserTopic user= this.userTopicMapper.selectOne(record);
		return user;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#selectOneByExample(java.lang.Object)
	 */
	@Override
	public UserTopic selectOneByExample(Object example) {
		UserTopic user= this.userTopicMapper.selectOneByExample( example);
		return user;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#updateByExample(com.zhiye.bhmall.modules.vote.domain.UserTopic, java.lang.Object)
	 */
	@Override
	public int updateByExample(UserTopic record, Object example) {
		int result = this.userTopicMapper.updateByExample(record,example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#updateByExampleSelective(com.zhiye.bhmall.modules.vote.domain.UserTopic, java.lang.Object)
	 */
	@Override
	public int updateByExampleSelective(UserTopic record, Object example) {
		int result = this.userTopicMapper.updateByExampleSelective(record,example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#updateByPrimaryKey(com.zhiye.bhmall.modules.vote.domain.UserTopic)
	 */
	@Override
	public int updateByPrimaryKey(UserTopic record) {
		int result = this.userTopicMapper.updateByPrimaryKey(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserTopicService#updateByPrimaryKeySelective(com.zhiye.bhmall.modules.vote.domain.UserTopic)
	 */
	@Override
	public int updateByPrimaryKeySelective(UserTopic record) {
		int result = this.userTopicMapper.updateByPrimaryKeySelective(record);
		return result;
	}


}
