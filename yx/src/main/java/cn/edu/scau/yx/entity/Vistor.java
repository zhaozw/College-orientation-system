package cn.edu.scau.yx.entity;
import java.io.Serializable;
import java.util.Date;
public class Vistor implements Serializable{
	private static final long serialVersionUID = -5670700680653715049L;
	private int nuId;
	private String nuName;
	private int nuPhone;
	private String nuEmail;
	private Date nuCreateDate;
	public int getNuId() {
		return nuId;
	}
	public void setNuId(int nuId) {
		this.nuId = nuId;
	}
	public String getNuName() {
		return nuName;
	}
	public void setNuName(String nuName) {
		this.nuName = nuName;
	}
	public int getNuPhone() {
		return nuPhone;
	}
	public void setNuPhone(int nuPhone) {
		this.nuPhone = nuPhone;
	}
	public String getNuEmail() {
		return nuEmail;
	}
	public void setNuEmail(String nuEmail) {
		this.nuEmail = nuEmail;
	}
	public Date getNuCreateDate() {
		return nuCreateDate;
	}
	public void setNuCreateDate(Date nuCreateDate) {
		this.nuCreateDate = nuCreateDate;
	}
	@Override
	public String toString() {
		return "Student [nuId=" + nuId + ", nuName=" + nuName + ", nuPhone=" + nuPhone +", nuEmail="+nuEmail+
				",nuCreateDate="+nuCreateDate+"]";
	}
}
