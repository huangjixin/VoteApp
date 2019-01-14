package com.zhiye.bhmall.modules.vote.vo;

import java.io.Serializable;

public class VoteResultVo implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String questionName;
	private String optionName;
	private Integer voteNum;
	private Integer votedUserId;
	private Integer questionId;

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

	public Integer getVoteNum() {
		return voteNum;
	}

	public void setVoteNum(Integer voteNum) {
		this.voteNum = voteNum;
	}

	public Integer getVotedUserId() {
		return votedUserId;
	}

	public void setVotedUserId(Integer votedUserId) {
		this.votedUserId = votedUserId;
	}

	public Integer getQuestionId() {
		return questionId;
	}

	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
	}
}
