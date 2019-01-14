package com.zhiye.bhmall.modules.vote.vo;

import java.io.Serializable;
import java.util.Date;

import com.zhiye.bhmall.modules.vote.domain.Vote;

public class PersonVoteResultVo extends Vote implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String questionName;
	private String optionName;
	private Date createTime;

	public String getQuestionName() {
		return questionName;
	}

	public void setQuestionName(String questionName) {
		this.questionName = questionName;
	}

	public String getOptionName() {
		return optionName;
	}

	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

}
