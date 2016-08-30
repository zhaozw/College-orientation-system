package cn.edu.scau.yx.entity;


import java.io.Serializable;
import java.util.Date;
public class Message implements Serializable{
	private static final long serialVersionUID = 1130065435919218563L;
	private int piId;
	private int ciId;
	private String piTitle;
//	private int aiId;
	private Date piDate;
	private String piContent;
	public int getPiId() {
		return piId;
	}
	public void setPiId(int piId) {
		this.piId = piId;
	}
	public int getCiId() {
		return ciId;
	}
	public void setCiId(int ciId) {
		this.ciId = ciId;
	}
	public String getPiTitle() {
		return piTitle;
	}
	public void setPiTitle(String piTitle) {
		this.piTitle = piTitle;
	}
//	public int getAiId() {
//		return aiId;
//	}
//	public void setAiId(int aiId) {
//		this.aiId = aiId;
//	}
	public Date getPiDate() {
		return piDate;
	}
	public void setPiDate(Date piDate) {
		this.piDate = piDate;
	}
	public String getPiContent() {
		return piContent;
	}
	public void setPiContent(String piContent) {
		this.piContent = piContent;
	}
	
}
