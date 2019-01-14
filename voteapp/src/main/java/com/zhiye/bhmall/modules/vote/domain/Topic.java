package com.zhiye.bhmall.modules.vote.domain;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "topic")
public class Topic implements Serializable {
    @Id
    private Integer id;

    private String name;

    @Column(name = "is_valid")
    private Byte isValid;

    @Column(name = "start_time")
    private Date startTime;

    @Column(name = "end_time")
    private Date endTime;

    private static final long serialVersionUID = 1L;

    /**
     * @return id
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
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * @return is_valid
     */
    public Byte getIsValid() {
        return isValid;
    }

    /**
     * @param isValid
     */
    public void setIsValid(Byte isValid) {
        this.isValid = isValid;
    }

    /**
     * @return start_time
     */
    public Date getStartTime() {
        return startTime;
    }

    /**
     * @param startTime
     */
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    /**
     * @return end_time
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * @param endTime
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
}