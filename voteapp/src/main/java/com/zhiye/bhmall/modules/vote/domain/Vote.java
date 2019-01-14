package com.zhiye.bhmall.modules.vote.domain;

import java.io.Serializable;
import javax.persistence.*;

@Table(name = "vote")
public class Vote implements Serializable {
    @Id
    @Column(name = "ID")
    private Integer id;

    @Column(name = "USER_ID")
    private Integer userId;

    @Column(name = "QUESTION_ID")
    private Integer questionId;

    @Column(name = "OPTION_ID")
    private Integer optionId;

    @Column(name = "WEIGHT")
    private Integer weight;
    
    @Column(name = "VOTED_USER_ID")
    private Integer votedUserId;

    private static final long serialVersionUID = 1L;

    /**
     * @return ID
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return USER_ID
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * @param userId
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * @return QUESTION_ID
     */
    public Integer getQuestionId() {
        return questionId;
    }

    /**
     * @param questionId
     */
    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    /**
     * @return OPTION_ID
     */
    public Integer getOptionId() {
        return optionId;
    }

    /**
     * @param optionId
     */
    public void setOptionId(Integer optionId) {
        this.optionId = optionId;
    }

    /**
     * @return WEIGHT
     */
    public Integer getWeight() {
        return weight;
    }

    /**
     * @param weight
     */
    public void setWeight(Integer weight) {
        this.weight = weight;
    }

	public Integer getVotedUserId() {
		return votedUserId;
	}

	public void setVotedUserId(Integer votedUserId) {
		this.votedUserId = votedUserId;
	}
}