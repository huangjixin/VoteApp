package com.zhiye.bhmall.modules.vote.vo;

import java.io.Serializable;

public class SmsSend implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String phoneNo; //电话号码
	private String templateCode;//模板id
	private String templateParam;//模板参数
	
	
	
	private String verifyCode;//验证码
	
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getTemplateCode() {
		return templateCode;
	}
	public void setTemplateCode(String templateCode) {
		this.templateCode = templateCode;
	}
	public String getTemplateParam() {
		return templateParam;
	}
	public void setTemplateParam(String templateParam) {
		this.templateParam = templateParam;
	}
	public String getVerifyCode() {
		return verifyCode;
	}
	public void setVerifyCode(String verifyCode) {
		this.verifyCode = verifyCode;
	}
	

	
	
	
	
	
}