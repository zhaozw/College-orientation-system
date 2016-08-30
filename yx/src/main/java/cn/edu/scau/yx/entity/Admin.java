package cn.edu.scau.yx.entity;
import java.io.Serializable;
import java.util.Date;
public class Admin implements Serializable{
	private static final long serialVersionUID=3847641607346387218L;
	private int aiId;
	private int aiName;
	private Date aiCreateDate;
	private int phone;
	public int getAiId() {
		return aiId;
	}
	public void setAiId(int aiId) {
		this.aiId = aiId;
	}
	public int getAiName() {
		return aiName;
	}
	public void setAiName(int aiName) {
		this.aiName = aiName;
	}
	public Date getAiCreateDate() {
		return aiCreateDate;
	}
	public void setAiCreateDate(Date aiCreateDate) {
		this.aiCreateDate = aiCreateDate;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Student [aiId=" + aiId + ", aiName=" + aiName + ", aiCreateDate=" + aiCreateDate + ", phone=" + phone
				+"]";
	}
}
