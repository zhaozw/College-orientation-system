package cn.edu.scau.yx.entity;

public class MajorTuition {

	private int tuitionId;
	private String collegeName;
	private String MajorName;
	private double tuitionFee;

	public int getTuitionId() {
		return tuitionId;
	}

	public void setTuitionId(int tuitionId) {
		this.tuitionId = tuitionId;
	}

	public String getCollegeName() {
		return collegeName;
	}

	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

	public String getMajorName() {
		return MajorName;
	}

	public void setMajorName(String majorName) {
		MajorName = majorName;
	}

	public double getTuitionFee() {
		return tuitionFee;
	}

	public void setTuitionFee(double tuitionFee) {
		this.tuitionFee = tuitionFee;
	}

	@Override
	public String toString() {
		return "MajorTuition [tuitionId=" + tuitionId + ", collegeName=" + collegeName + ", MajorName=" + MajorName
				+ ", tuitionFee=" + tuitionFee + "]";
	}
}
