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

import com.zhiye.bhmall.modules.vote.domain.User;
import com.zhiye.bhmall.modules.vote.domain.UserTopic;
import com.zhiye.bhmall.modules.vote.domain.Vote;
import com.zhiye.bhmall.modules.vote.mapper.UserTopicMapper;
import com.zhiye.bhmall.modules.vote.mapper.VoteMapper;
import com.zhiye.bhmall.modules.vote.service.IVoteService;
import com.zhiye.bhmall.modules.vote.vo.PersonVoteResultVo;
import com.zhiye.bhmall.modules.vote.vo.VoteResultVo;

/**
 * @author admin
 *
 */
@Transactional(rollbackFor=Exception.class)
@Service
public class VoteServiceImpl implements IVoteService {
	private static Logger logger = LoggerFactory.getLogger(VoteServiceImpl.class);

	private static final String BASE_MESSAGE = "用户模块类VoteServiceImpl增删改查";
	
	@Autowired
	private VoteMapper voteMapper;
	
	@Autowired
	private UserTopicMapper userTopicMapper;
	
	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#delete(com.zhiye.bhmall.modules.vote.domain.Vote)
	 */
	@Override
	public int delete(Vote record) {
		logger.info("");
		int result = voteMapper.delete(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#deleteBatch(java.util.List)
	 */
	@Override
	public int deleteBatch(List<String> key) {
		// TODO Auto-generated method stub
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#deleteByExample(java.lang.Object)
	 */
	@Override
	public int deleteByExample(Object example) {
		int result = voteMapper.deleteByExample(example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#deleteByPrimaryKey(java.lang.Object)
	 */
	@Override
	public int deleteByPrimaryKey(Object key) {
		int result = voteMapper.deleteByPrimaryKey(key);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#insert(com.zhiye.bhmall.modules.vote.domain.Vote)
	 */
	@Override
	public int insert(Vote record) {
		int result = voteMapper.insert(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#insertSelective(com.zhiye.bhmall.modules.vote.domain.Vote)
	 */
	@Override
	public int insertSelective(Vote record) {
		int result = voteMapper.insertSelective(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#select(com.zhiye.bhmall.modules.vote.domain.Vote)
	 */
	@Override
	public List<Vote> select(Vote record) {
		List<Vote> list = this.voteMapper.select(record);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#selectAll()
	 */
	@Override
	public List<Vote> selectAll() {
		List<Vote> list = this.voteMapper.selectAll();
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#selectByExample(java.lang.Object)
	 */
	@Override
	public List<Vote> selectByExample(Object example) {
		List<Vote> list = this.voteMapper.selectByExample(example);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#selectByExampleAndRowBounds(java.lang.Object, org.apache.ibatis.session.RowBounds)
	 */
	@Override
	public List<Vote> selectByExampleAndRowBounds(Object example, RowBounds rowBounds) {
		List<Vote> list = this.voteMapper.selectByExampleAndRowBounds( example, rowBounds);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#selectByPrimaryKey(java.lang.Object)
	 */
	@Override
	public Vote selectByPrimaryKey(Object key) {
		Vote vote= this.voteMapper.selectByPrimaryKey(key);
		return vote;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#selectCount(com.zhiye.bhmall.modules.vote.domain.Vote)
	 */
	@Override
	public int selectCount(Vote record) {
		int result = this.voteMapper.selectCount(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#selectCountByExample(java.lang.Object)
	 */
	@Override
	public int selectCountByExample(Object example) {
		int result = this.voteMapper.selectCountByExample(example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#selectOne(com.zhiye.bhmall.modules.vote.domain.Vote)
	 */
	@Override
	public Vote selectOne(Vote record) {
		Vote vote= this.voteMapper.selectOne(record);
		return vote;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#selectOneByExample(java.lang.Object)
	 */
	@Override
	public Vote selectOneByExample(Object example) {
		Vote vote= this.voteMapper.selectOneByExample( example);
		return vote;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#updateByExample(com.zhiye.bhmall.modules.vote.domain.Vote, java.lang.Object)
	 */
	@Override
	public int updateByExample(Vote record, Object example) {
		int result = this.voteMapper.updateByExample(record,example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#updateByExampleSelective(com.zhiye.bhmall.modules.vote.domain.Vote, java.lang.Object)
	 */
	@Override
	public int updateByExampleSelective(Vote record, Object example) {
		int result = this.voteMapper.updateByExampleSelective(record,example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#updateByPrimaryKey(com.zhiye.bhmall.modules.vote.domain.Vote)
	 */
	@Override
	public int updateByPrimaryKey(Vote record) {
		int result = this.voteMapper.updateByPrimaryKey(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IVoteService#updateByPrimaryKeySelective(com.zhiye.bhmall.modules.vote.domain.Vote)
	 */
	@Override
	public int updateByPrimaryKeySelective(Vote record) {
		int result = this.voteMapper.updateByPrimaryKeySelective(record);
		return result;
	}

	@Override
	public int insert(List<Vote> records) {
		int result = this.voteMapper.insertBatch(records);
		return result;
	}
	
	@Override
	public int insertBatch(List<Vote> list) {
		int result = this.voteMapper.insertBatch(list);
		return result;
	}

	@Override
	public List<VoteResultVo> selectVoteResult(Integer topicId) {
		List<VoteResultVo> list = this.voteMapper.selectVoteResult(topicId);
		return list;
	}

	@Override
	public List<PersonVoteResultVo> selectVotesByUserId(Integer userId,Integer topicId) {
		List<PersonVoteResultVo> list = this.voteMapper.selectVotesByUserId(userId,topicId);
		return list;
	}

	@Override
	public boolean clearVote() {
		try {
			this.voteMapper.deleteByExample(null);
			this.userTopicMapper.deleteByExample(null);
			
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public List<User> selectUsersByVotedUserId(Integer votedUserId,Integer questionId) {
		List<User> list = this.voteMapper.selectUsersByVotedUserId( votedUserId,questionId);
		return list;
	}


}
