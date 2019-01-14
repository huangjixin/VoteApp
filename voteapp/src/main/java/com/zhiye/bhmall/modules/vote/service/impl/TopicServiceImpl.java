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

import com.zhiye.bhmall.modules.vote.domain.Topic;
import com.zhiye.bhmall.modules.vote.mapper.TopicMapper;
import com.zhiye.bhmall.modules.vote.service.ITopicService;
import com.zhiye.bhmall.modules.vote.vo.TopicVo;

/**
 * @author admin
 *
 */
@Transactional(rollbackFor=Exception.class)
@Service
public class TopicServiceImpl implements ITopicService {
	private static Logger logger = LoggerFactory.getLogger(TopicServiceImpl.class);

	private static final String BASE_MESSAGE = "用户模块类TopicServiceImpl增删改查";
	
	@Autowired
	private TopicMapper topicMapper;
	
	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#delete(com.zhiye.bhmall.modules.vote.domain.Topic)
	 */
	@Override
	public int delete(Topic record) {
		logger.info("");
		int result = topicMapper.delete(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#deleteBatch(java.util.List)
	 */
	@Override
	public int deleteBatch(List<String> key) {
		// TODO Auto-generated method stub
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#deleteByExample(java.lang.Object)
	 */
	@Override
	public int deleteByExample(Object example) {
		int result = topicMapper.deleteByExample(example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#deleteByPrimaryKey(java.lang.Object)
	 */
	@Override
	public int deleteByPrimaryKey(Object key) {
		int result = topicMapper.deleteByPrimaryKey(key);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#insert(com.zhiye.bhmall.modules.vote.domain.Topic)
	 */
	@Override
	public int insert(Topic record) {
		int result = topicMapper.insert(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#insertSelective(com.zhiye.bhmall.modules.vote.domain.Topic)
	 */
	@Override
	public int insertSelective(Topic record) {
		int result = topicMapper.insertSelective(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#select(com.zhiye.bhmall.modules.vote.domain.Topic)
	 */
	@Override
	public List<Topic> select(Topic record) {
		List<Topic> list = this.topicMapper.select(record);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#selectAll()
	 */
	@Override
	public List<Topic> selectAll() {
		List<Topic> list = this.topicMapper.selectAll();
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#selectByExample(java.lang.Object)
	 */
	@Override
	public List<Topic> selectByExample(Object example) {
		List<Topic> list = this.topicMapper.selectByExample(example);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#selectByExampleAndRowBounds(java.lang.Object, org.apache.ibatis.session.RowBounds)
	 */
	@Override
	public List<Topic> selectByExampleAndRowBounds(Object example, RowBounds rowBounds) {
		List<Topic> list = this.topicMapper.selectByExampleAndRowBounds( example, rowBounds);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#selectByPrimaryKey(java.lang.Object)
	 */
	@Override
	public Topic selectByPrimaryKey(Object key) {
		Topic Topic= this.topicMapper.selectByPrimaryKey(key);
		return Topic;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#selectCount(com.zhiye.bhmall.modules.vote.domain.Topic)
	 */
	@Override
	public int selectCount(Topic record) {
		int result = this.topicMapper.selectCount(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#selectCountByExample(java.lang.Object)
	 */
	@Override
	public int selectCountByExample(Object example) {
		int result = this.topicMapper.selectCountByExample(example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#selectOne(com.zhiye.bhmall.modules.vote.domain.Topic)
	 */
	@Override
	public Topic selectOne(Topic record) {
		Topic Topic= this.topicMapper.selectOne(record);
		return Topic;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#selectOneByExample(java.lang.Object)
	 */
	@Override
	public Topic selectOneByExample(Object example) {
		Topic Topic= this.topicMapper.selectOneByExample( example);
		return Topic;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#updateByExample(com.zhiye.bhmall.modules.vote.domain.Topic, java.lang.Object)
	 */
	@Override
	public int updateByExample(Topic record, Object example) {
		int result = this.topicMapper.updateByExample(record,example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#updateByExampleSelective(com.zhiye.bhmall.modules.vote.domain.Topic, java.lang.Object)
	 */
	@Override
	public int updateByExampleSelective(Topic record, Object example) {
		int result = this.topicMapper.updateByExampleSelective(record,example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#updateByPrimaryKey(com.zhiye.bhmall.modules.vote.domain.Topic)
	 */
	@Override
	public int updateByPrimaryKey(Topic record) {
		int result = this.topicMapper.updateByPrimaryKey(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.ITopicService#updateByPrimaryKeySelective(com.zhiye.bhmall.modules.vote.domain.Topic)
	 */
	@Override
	public int updateByPrimaryKeySelective(Topic record) {
		int result = this.topicMapper.updateByPrimaryKeySelective(record);
		return result;
	}

	@Override
	public List<TopicVo> selectTopics() {
		List<TopicVo> list = this.topicMapper.selectTopics();
		return list;
	}

}
