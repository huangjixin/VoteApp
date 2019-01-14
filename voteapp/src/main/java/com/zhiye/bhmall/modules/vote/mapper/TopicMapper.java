package com.zhiye.bhmall.modules.vote.mapper;

import java.util.List;

import com.zhiye.bhmall.modules.vote.domain.Topic;
import com.zhiye.bhmall.modules.vote.vo.TopicVo;

import tk.mybatis.mapper.common.Mapper;

public interface TopicMapper extends Mapper<Topic> {
    
	List<TopicVo> selectTopics();
}