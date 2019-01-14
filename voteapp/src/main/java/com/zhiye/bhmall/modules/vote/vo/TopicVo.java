package com.zhiye.bhmall.modules.vote.vo;

import java.util.List;

import com.zhiye.bhmall.modules.vote.domain.Topic;

import lombok.Data;

@Data
public class TopicVo extends Topic {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<QuestionVo> questions;

	public List<QuestionVo> getQuestions() {
		return questions;
	}

	public void setQuestions(List<QuestionVo> questions) {
		this.questions = questions;
	}
}
