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

import com.zhiye.bhmall.modules.vote.domain.Question;
import com.zhiye.bhmall.modules.vote.mapper.QuestionMapper;
import com.zhiye.bhmall.modules.vote.service.IQuestionService;

/**
 * @author admin
 *
 */
@Transactional(rollbackFor=Exception.class)
@Service
public class QuestionServiceImpl implements IQuestionService {
	private static Logger logger = LoggerFactory.getLogger(QuestionServiceImpl.class);

	private static final String BASE_MESSAGE = "用户模块类QuestionServiceImpl增删改查";
	
	@Autowired
	private QuestionMapper questionMapper;
	
	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#delete(com.zhiye.bhmall.modules.vote.domain.Question)
	 */
	@Override
	public int delete(Question record) {
		logger.info("");
		int result = questionMapper.delete(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#deleteBatch(java.util.List)
	 */
	@Override
	public int deleteBatch(List<String> key) {
		// TODO Auto-generated method stub
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#deleteByExample(java.lang.Object)
	 */
	@Override
	public int deleteByExample(Object example) {
		int result = questionMapper.deleteByExample(example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#deleteByPrimaryKey(java.lang.Object)
	 */
	@Override
	public int deleteByPrimaryKey(Object key) {
		int result = questionMapper.deleteByPrimaryKey(key);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#insert(com.zhiye.bhmall.modules.vote.domain.Question)
	 */
	@Override
	public int insert(Question record) {
		int result = questionMapper.insert(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#insertSelective(com.zhiye.bhmall.modules.vote.domain.Question)
	 */
	@Override
	public int insertSelective(Question record) {
		int result = questionMapper.insertSelective(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#select(com.zhiye.bhmall.modules.vote.domain.Question)
	 */
	@Override
	public List<Question> select(Question record) {
		List<Question> list = this.questionMapper.select(record);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#selectAll()
	 */
	@Override
	public List<Question> selectAll() {
		List<Question> list = this.questionMapper.selectAll();
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#selectByExample(java.lang.Object)
	 */
	@Override
	public List<Question> selectByExample(Object example) {
		List<Question> list = this.questionMapper.selectByExample(example);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#selectByExampleAndRowBounds(java.lang.Object, org.apache.ibatis.session.RowBounds)
	 */
	@Override
	public List<Question> selectByExampleAndRowBounds(Object example, RowBounds rowBounds) {
		List<Question> list = this.questionMapper.selectByExampleAndRowBounds( example, rowBounds);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#selectByPrimaryKey(java.lang.Object)
	 */
	@Override
	public Question selectByPrimaryKey(Object key) {
		Question question= this.questionMapper.selectByPrimaryKey(key);
		return question;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#selectCount(com.zhiye.bhmall.modules.vote.domain.Question)
	 */
	@Override
	public int selectCount(Question record) {
		int result = this.questionMapper.selectCount(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#selectCountByExample(java.lang.Object)
	 */
	@Override
	public int selectCountByExample(Object example) {
		int result = this.questionMapper.selectCountByExample(example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#selectOne(com.zhiye.bhmall.modules.vote.domain.Question)
	 */
	@Override
	public Question selectOne(Question record) {
		Question question= this.questionMapper.selectOne(record);
		return question;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#selectOneByExample(java.lang.Object)
	 */
	@Override
	public Question selectOneByExample(Object example) {
		Question question= this.questionMapper.selectOneByExample( example);
		return question;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#updateByExample(com.zhiye.bhmall.modules.vote.domain.Question, java.lang.Object)
	 */
	@Override
	public int updateByExample(Question record, Object example) {
		int result = this.questionMapper.updateByExample(record,example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#updateByExampleSelective(com.zhiye.bhmall.modules.vote.domain.Question, java.lang.Object)
	 */
	@Override
	public int updateByExampleSelective(Question record, Object example) {
		int result = this.questionMapper.updateByExampleSelective(record,example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#updateByPrimaryKey(com.zhiye.bhmall.modules.vote.domain.Question)
	 */
	@Override
	public int updateByPrimaryKey(Question record) {
		int result = this.questionMapper.updateByPrimaryKey(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IQuestionService#updateByPrimaryKeySelective(com.zhiye.bhmall.modules.vote.domain.Question)
	 */
	@Override
	public int updateByPrimaryKeySelective(Question record) {
		int result = this.questionMapper.updateByPrimaryKeySelective(record);
		return result;
	}

}
