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

import com.zhiye.bhmall.modules.vote.domain.Option;
import com.zhiye.bhmall.modules.vote.mapper.OptionMapper;
import com.zhiye.bhmall.modules.vote.service.IOptionService;

/**
 * @author admin
 *
 */
@Transactional(rollbackFor=Exception.class)
@Service
public class OptionServiceImpl implements IOptionService {
	private static Logger logger = LoggerFactory.getLogger(OptionServiceImpl.class);

	private static final String BASE_MESSAGE = "用户模块类OptionServiceImpl增删改查";
	
	@Autowired
	private OptionMapper optionMapper;
	
	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#delete(com.zhiye.bhmall.modules.vote.domain.Option)
	 */
	@Override
	public int delete(Option record) {
		logger.info("");
		int result = optionMapper.delete(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#deleteBatch(java.util.List)
	 */
	@Override
	public int deleteBatch(List<String> key) {
		// TODO Auto-generated method stub
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#deleteByExample(java.lang.Object)
	 */
	@Override
	public int deleteByExample(Object example) {
		int result = optionMapper.deleteByExample(example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#deleteByPrimaryKey(java.lang.Object)
	 */
	@Override
	public int deleteByPrimaryKey(Object key) {
		int result = optionMapper.deleteByPrimaryKey(key);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#insert(com.zhiye.bhmall.modules.vote.domain.Option)
	 */
	@Override
	public int insert(Option record) {
		int result = optionMapper.insert(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#insertSelective(com.zhiye.bhmall.modules.vote.domain.Option)
	 */
	@Override
	public int insertSelective(Option record) {
		int result = optionMapper.insertSelective(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#select(com.zhiye.bhmall.modules.vote.domain.Option)
	 */
	@Override
	public List<Option> select(Option record) {
		List<Option> list = this.optionMapper.select(record);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#selectAll()
	 */
	@Override
	public List<Option> selectAll() {
		List<Option> list = this.optionMapper.selectAll();
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#selectByExample(java.lang.Object)
	 */
	@Override
	public List<Option> selectByExample(Object example) {
		List<Option> list = this.optionMapper.selectByExample(example);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#selectByExampleAndRowBounds(java.lang.Object, org.apache.ibatis.session.RowBounds)
	 */
	@Override
	public List<Option> selectByExampleAndRowBounds(Object example, RowBounds rowBounds) {
		List<Option> list = this.optionMapper.selectByExampleAndRowBounds( example, rowBounds);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#selectByPrimaryKey(java.lang.Object)
	 */
	@Override
	public Option selectByPrimaryKey(Object key) {
		Option option= this.optionMapper.selectByPrimaryKey(key);
		return option;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#selectCount(com.zhiye.bhmall.modules.vote.domain.Option)
	 */
	@Override
	public int selectCount(Option record) {
		int result = this.optionMapper.selectCount(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#selectCountByExample(java.lang.Object)
	 */
	@Override
	public int selectCountByExample(Object example) {
		int result = this.optionMapper.selectCountByExample(example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#selectOne(com.zhiye.bhmall.modules.vote.domain.Option)
	 */
	@Override
	public Option selectOne(Option record) {
		Option option= this.optionMapper.selectOne(record);
		return option;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#selectOneByExample(java.lang.Object)
	 */
	@Override
	public Option selectOneByExample(Object example) {
		Option option= this.optionMapper.selectOneByExample( example);
		return option;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#updateByExample(com.zhiye.bhmall.modules.vote.domain.Option, java.lang.Object)
	 */
	@Override
	public int updateByExample(Option record, Object example) {
		int result = this.optionMapper.updateByExample(record,example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#updateByExampleSelective(com.zhiye.bhmall.modules.vote.domain.Option, java.lang.Object)
	 */
	@Override
	public int updateByExampleSelective(Option record, Object example) {
		int result = this.optionMapper.updateByExampleSelective(record,example);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#updateByPrimaryKey(com.zhiye.bhmall.modules.vote.domain.Option)
	 */
	@Override
	public int updateByPrimaryKey(Option record) {
		int result = this.optionMapper.updateByPrimaryKey(record);
		return result;
	}

	/* (non-Javadoc)
	 * @see com.zhiye.bhmall.modules.vote.service.IOptionService#updateByPrimaryKeySelective(com.zhiye.bhmall.modules.vote.domain.Option)
	 */
	@Override
	public int updateByPrimaryKeySelective(Option record) {
		int result = this.optionMapper.updateByPrimaryKeySelective(record);
		return result;
	}

}
