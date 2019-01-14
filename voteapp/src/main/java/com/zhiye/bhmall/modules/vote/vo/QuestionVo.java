package com.zhiye.bhmall.modules.vote.vo;

import java.util.List;

import com.zhiye.bhmall.modules.vote.domain.Question;

import lombok.Data;

@Data
public class QuestionVo extends Question {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List<OptionVo> options;

	public List<OptionVo> getOptions() {
		return options;
	}

	public void setOptions(List<OptionVo> options) {
		this.options = options;
	}
}
