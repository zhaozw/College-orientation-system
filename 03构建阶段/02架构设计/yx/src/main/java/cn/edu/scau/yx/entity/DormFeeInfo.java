package cn.edu.scau.yx.entity;

public class DormFeeInfo {
	private int dormFeeId;
	private String dormFeeType;
	private double dormFee;
	private int dormArea;
	private String dormBuilding;
	private String colleage;
	private String major;

	public int getDormFeeId() {
		return dormFeeId;
	}

	public void setDormFeeId(int dormFeeId) {
		this.dormFeeId = dormFeeId;
	}

	public String getDormFeeType() {
		return dormFeeType;
	}

	public void setDormFeeType(String dormFeeType) {
		this.dormFeeType = dormFeeType;
	}

	public double getDormFee() {
		return dormFee;
	}

	public void setDormFee(double dormFee) {
		this.dormFee = dormFee;
	}

	public int getDormArea() {
		return dormArea;
	}

	public void setDormArea(int dormArea) {
		this.dormArea = dormArea;
	}

	public String getDormBuilding() {
		return dormBuilding;
	}

	public void setDormBuilding(String dormBuilding) {
		this.dormBuilding = dormBuilding;
	}

	public String getColleage() {
		return colleage;
	}

	public void setColleage(String colleage) {
		this.colleage = colleage;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	@Override
	public String toString() {
		return "DormFeeInfo [dormFeeId=" + dormFeeId + ", dormFeeType=" + dormFeeType + ", dormFee=" + dormFee
				+ ", dormArea=" + dormArea + ", dormBuilding=" + dormBuilding + ", colleage=" + colleage + ", major="
				+ major + "]";
	}

}
