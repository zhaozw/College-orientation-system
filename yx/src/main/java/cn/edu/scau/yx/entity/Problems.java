package cn.edu.scau.yx.entity;

import java.util.Date;

/**
 * 问题咨询实体（对应着problems表）
 * @author Wongsir 2016年8月17日21:02:33
 *
 */
public class Problems {

	private int problemsId; //咨询问题id
//	private int userId; //咨询用户id
	private Date time;//咨询时间
	private String content;//咨询内容
//	private int problemsThemeId;//问题类型id
	private String audit;//问题状态审查，默认“未审查”
	private String authority;//权限状态，默认“不限”
	private int isDel;//是否删除，默认“0：未删除”，1为删除状态
	private String answer;//回复内容
	private Date ansTime;//回复时间
//	private int ansPersonId;//回复人id
	
	private ProblemsTheme problemsTheme;//复合属性
	private UserInfo userInfoAsk;//复合属性--咨询者
	private UserInfo userInfoAns;//复合属性--回复人

//	public int getProblemsThemeId() {
//		return problemsThemeId;
//	}
//
//	public void setProblemsThemeId(int problemsThemeId) {
//		this.problemsThemeId = problemsThemeId;
//	}


	public int getProblemsId() {
		return problemsId;
	}

	public UserInfo getUserInfoAsk() {
		return userInfoAsk;
	}

	public void setUserInfoAsk(UserInfo userInfoAsk) {
		this.userInfoAsk = userInfoAsk;
	}

	public UserInfo getUserInfoAns() {
		return userInfoAns;
	}

	public void setUserInfoAns(UserInfo userInfoAns) {
		this.userInfoAns = userInfoAns;
	}

	public void setProblemsId(int problemsId) {
		this.problemsId = problemsId;
	}

	

//	public int getUserId() {
//		return userId;
//	}
//
//	public void setUserId(int userId) {
//		this.userId = userId;
//	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAudit() {
		return audit;
	}

	public void setAudit(String audit) {
		this.audit = audit;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public int getIsDel() {
		return isDel;
	}

	public void setIsDel(int isDel) {
		this.isDel = isDel;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getAnsTime() {
		return ansTime;
	}

	public void setAnsTime(Date ansTime) {
		this.ansTime = ansTime;
	}

//	public int getAnsPersonId() {
//		return ansPersonId;
//	}
//
//	public void setAnsPersonId(int ansPersonId) {
//		this.ansPersonId = ansPersonId;
//	}

	public ProblemsTheme getProblemsTheme() {
		return problemsTheme;
	}

	public void setProblemsTheme(ProblemsTheme problemsTheme) {
		this.problemsTheme = problemsTheme;
	}

	@Override
	public String toString() {
		return "Problems [problemsId=" + problemsId + ", time=" + time + ", content=" + content + ", audit=" + audit
				+ ", authority=" + authority + ", isDel=" + isDel + ", answer=" + answer + ", ansTime=" + ansTime
				+ ", problemsTheme=" + problemsTheme + ", userInfoAsk=" + userInfoAsk + ", userInfoAns=" + userInfoAns
				+ "]";
	}


	
}