package cn.edu.scau.yx.entity;
import java.io.Serializable;
import java.util.Date;
public class NoticeComment implements Serializable{
	private static final long serialVersionUID = -5670700680653715049L;
	private int ncId;
	private int nuId;
	private int piId;
	private String ncContent;
	private Date ncCreateDate;
	private int repNuId;
	private int warnAiId;
	public int getRepNuId() {
		return repNuId;
	}
	public void setRepNuId(int repNuId) {
		this.repNuId = repNuId;
	}
	public int getWarnAiId() {
		return warnAiId;
	}
	public void setWarnAiId(int warnAiId) {
		this.warnAiId = warnAiId;
	}
	public int getNcId() {
		return ncId;
	}
	public void setNcId(int ncId) {
		this.ncId = ncId;
	}
	public int getNuId() {
		return nuId;
	}
	public void setNuId(int nuId) {
		this.nuId = nuId;
	}
	public int getPiId() {
		return piId;
	}
	public void setPiId(int piId) {
		this.piId = piId;
	}
	public String getNcContent() {
		return ncContent;
	}
	public void setNcContent(String ncContent) {
		this.ncContent = ncContent;
	}
	public Date getNcCreateDate() {
		return ncCreateDate;
	}
	public void setNcCreateDate(Date ncCreateDate) {
		this.ncCreateDate = ncCreateDate;
	}
	@Override
	public String toString() {
		return "Student [ncId=" + ncId + ", nuId=" + nuId + ", piId=" + piId +", ncContent="+ncContent+
				",ncCreateDate="+ncCreateDate+"]";
	}
}
