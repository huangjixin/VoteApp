package com.zhiye.bhmall.modules.vote.domain;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

import lombok.Data;

@Data
@Table(name = "user")
public class User implements Serializable {
    @Id
    @Column(name = "ID")
    private Integer id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "CODE")
    private String code;

    @Column(name = "STATUS")
    private Integer status;

    @Column(name = "TYPE")
    private Integer type;

    @Column(name = "IS_VOTEED")
    private Integer isVoteed;

    @Column(name = "IS_VALID")
    private Integer isValid;

    @Column(name = "CREATE_TIME")
    private Date createTime;

    @Column(name = "UPDATE_TIME")
    private Date updateTime;

    @Column(name = "DESCRIPTION")
    private String description;

    /**
     * 权重
     */
    @Column(name = "WEIGHT")
    private Integer weight;

    /**
     * 部门名称
     */
    @Column(name = "DEPARTMNET_NAME")
    private String departmnetName;

    @Column(name = "COMPANY_MOBIL")
    private String companyMobil;

    @Column(name = "PERSONAL_MOBIL")
    private String personalMobil;
    
    @Column(name = "IS_LEADER")
    private Integer isLeader;

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
     * @return NAME
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
     * @return CODE
     */
    public String getCode() {
        return code;
    }

    /**
     * @param code
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    /**
     * @return STATUS
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * @param status
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * @return TYPE
     */
    public Integer getType() {
        return type;
    }

    /**
     * @param type
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * @return IS_VOTEED
     */
    public Integer getIsVoteed() {
        return isVoteed;
    }

    /**
     * @param isVoteed
     */
    public void setIsVoteed(Integer isVoteed) {
        this.isVoteed = isVoteed;
    }

    /**
     * @return IS_VALID
     */
    public Integer getIsValid() {
        return isValid;
    }

    /**
     * @param isValid
     */
    public void setIsValid(Integer isValid) {
        this.isValid = isValid;
    }

    /**
     * @return CREATE_TIME
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * @param createTime
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * @return UPDATE_TIME
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * @param updateTime
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * @return DESCRIPTION
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * 获取权重
     *
     * @return WEIGHT - 权重
     */
    public Integer getWeight() {
        return weight;
    }

    /**
     * 设置权重
     *
     * @param weight 权重
     */
    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    /**
     * 获取部门名称
     *
     * @return DEPARTMNET_NAME - 部门名称
     */
    public String getDepartmnetName() {
        return departmnetName;
    }

    /**
     * 设置部门名称
     *
     * @param departmnetName 部门名称
     */
    public void setDepartmnetName(String departmnetName) {
        this.departmnetName = departmnetName == null ? null : departmnetName.trim();
    }

    /**
     * @return COMPANY_MOBIL
     */
    public String getCompanyMobil() {
        return companyMobil;
    }

    /**
     * @param companyMobil
     */
    public void setCompanyMobil(String companyMobil) {
        this.companyMobil = companyMobil == null ? null : companyMobil.trim();
    }

    /**
     * @return PERSONAL_MOBIL
     */
    public String getPersonalMobil() {
        return personalMobil;
    }

    /**
     * @param personalMobil
     */
    public void setPersonalMobil(String personalMobil) {
        this.personalMobil = personalMobil == null ? null : personalMobil.trim();
    }

	public Integer getIsLeader() {
		return isLeader;
	}

	public void setIsLeader(Integer isLeader) {
		this.isLeader = isLeader;
	}
}