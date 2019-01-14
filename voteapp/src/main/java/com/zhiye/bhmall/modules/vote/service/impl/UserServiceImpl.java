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
import com.zhiye.bhmall.modules.vote.domain.UserCriteria;
import com.zhiye.bhmall.modules.vote.domain.UserCriteria.Criteria;
import com.zhiye.bhmall.modules.vote.domain.UserTopic;
import com.zhiye.bhmall.modules.vote.domain.UserTopicCriteria;
import com.zhiye.bhmall.modules.vote.mapper.UserMapper;
import com.zhiye.bhmall.modules.vote.mapper.UserTopicMapper;
import com.zhiye.bhmall.modules.vote.service.IUserService;

/**
 * @author admin
 *
 */
@Transactional(rollbackFor=Exception.class)
@Service
public class UserServiceImpl implements IUserService {
	private static Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

	private static final String BASE_MESSAGE = "用户模块类UserServiceImpl增删改查";
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private UserTopicMapper userTopicMapper;
	
	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#delete(com.zhiye.bhmall.modules.vote.domain.User)
	 */
	@Override
	public int delete(User record) {
		logger.info("");
		int result = userMapper.delete(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#deleteBatch(java.util.List)
	 */
	@Override
	public int deleteBatch(List<String> key) {
		// TODO Auto-generated method stub
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#deleteByExample(java.lang.Object)
	 */
	@Override
	public int deleteByExample(Object example) {
		int result = userMapper.deleteByExample(example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#deleteByPrimaryKey(java.lang.Object)
	 */
	@Override
	public int deleteByPrimaryKey(Object key) {
		int result = userMapper.deleteByPrimaryKey(key);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#insert(com.zhiye.bhmall.modules.vote.domain.User)
	 */
	@Override
	public int insert(User record) {
		int result = userMapper.insert(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#insertSelective(com.zhiye.bhmall.modules.vote.domain.User)
	 */
	@Override
	public int insertSelective(User record) {
		int result = userMapper.insertSelective(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#select(com.zhiye.bhmall.modules.vote.domain.User)
	 */
	@Override
	public List<User> select(User record) {
		List<User> list = this.userMapper.select(record);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#selectAll()
	 */
	@Override
	public List<User> selectAll() {
		List<User> list = this.userMapper.selectAll();
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#selectByExample(java.lang.Object)
	 */
	@Override
	public List<User> selectByExample(Object example) {
		List<User> list = this.userMapper.selectByExample(example);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#selectByExampleAndRowBounds(java.lang.Object, org.apache.ibatis.session.RowBounds)
	 */
	@Override
	public List<User> selectByExampleAndRowBounds(Object example, RowBounds rowBounds) {
		List<User> list = this.userMapper.selectByExampleAndRowBounds( example, rowBounds);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#selectByPrimaryKey(java.lang.Object)
	 */
	@Override
	public User selectByPrimaryKey(Object key) {
		User user= this.userMapper.selectByPrimaryKey(key);
		return user;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#selectCount(com.zhiye.bhmall.modules.vote.domain.User)
	 */
	@Override
	public int selectCount(User record) {
		int result = this.userMapper.selectCount(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#selectCountByExample(java.lang.Object)
	 */
	@Override
	public int selectCountByExample(Object example) {
		int result = this.userMapper.selectCountByExample(example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#selectOne(com.zhiye.bhmall.modules.vote.domain.User)
	 */
	@Override
	public User selectOne(User record) {
		User user= this.userMapper.selectOne(record);
		return user;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#selectOneByExample(java.lang.Object)
	 */
	@Override
	public User selectOneByExample(Object example) {
		User user= this.userMapper.selectOneByExample( example);
		return user;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#updateByExample(com.zhiye.bhmall.modules.vote.domain.User, java.lang.Object)
	 */
	@Override
	public int updateByExample(User record, Object example) {
		int result = this.userMapper.updateByExample(record,example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#updateByExampleSelective(com.zhiye.bhmall.modules.vote.domain.User, java.lang.Object)
	 */
	@Override
	public int updateByExampleSelective(User record, Object example) {
		int result = this.userMapper.updateByExampleSelective(record,example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#updateByPrimaryKey(com.zhiye.bhmall.modules.vote.domain.User)
	 */
	@Override
	public int updateByPrimaryKey(User record) {
		int result = this.userMapper.updateByPrimaryKey(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IUserService#updateByPrimaryKeySelective(com.zhiye.bhmall.modules.vote.domain.User)
	 */
	@Override
	public int updateByPrimaryKeySelective(User record) {
		int result = this.userMapper.updateByPrimaryKeySelective(record);
		return result;
	}

	@Override
	public User login(String mobil) {
		logger.info("用户登录开始,传入的电话号码是："+mobil);
		UserCriteria userCriteria = new UserCriteria();
		Criteria criteria =  userCriteria.createCriteria();
		criteria.andCompanyMobilEqualTo(mobil);
		userCriteria.or(userCriteria.createCriteria().andPersonalMobilEqualTo(mobil));
		List<User> list = this.userMapper.selectByExample(userCriteria);
		String res = (list!=null && !list.isEmpty())?list.get(0).toString():"查询不到用户";
		logger.info("用户登录结束，结果是："+res);
		return (list!=null && !list.isEmpty())?list.get(0):null;
	}

	@Override
	public boolean checkVote(int topicId, int userId) {
		logger.info("检查用户是否已经投票开始,传入的topicId是："+topicId+",userId"+userId);
		UserTopicCriteria userTopicCriteria = new UserTopicCriteria();
		userTopicCriteria.createCriteria().andTopicIdEqualTo(topicId).andUserIdEqualTo(userId);
		List<UserTopic>list = this.userTopicMapper.selectByExample(userTopicCriteria);
		logger.info("检查用户是否已经投票结束,结果是："+list.toString());
		return (list!=null && !list.isEmpty());
	}

	@Override
	public List<User> selectByDepartmentNameNotNull() {
		logger.info("查询全部有departmentName的用户开始");
		UserCriteria userCriteria = new UserCriteria();
		userCriteria.setOrderByClause("departmnet_name desc,id asc");
		userCriteria.createCriteria().andDepartmnetNameIsNotNull().andDepartmnetNameNotEqualTo("");
		List<User>list = this.userMapper.selectByExample(userCriteria);
		logger.info("查询全部有departmentName的用户结束,结果是："+list.toString());
		return list;
	}

}
