package cn.edu.scau.yx.entity;

public class MedicalFeeInfo {
	private int projectId;
	private String projectName;
	private double projectFee;
	private String medicalSection;
	private String refundSection;

	public int getProjectId() {
		return projectId;
	}

	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public double getProjectFee() {
		return projectFee;
	}

	public void setProjectFee(double projectFee) {
		this.projectFee = projectFee;
	}

	public String getMedicalSection() {
		return medicalSection;
	}

	public void setMedicalSection(String medicalSection) {
		this.medicalSection = medicalSection;
	}

	public String getRefundSection() {
		return refundSection;
	}

	public void setRefundSection(String refundSection) {
		this.refundSection = refundSection;
	}

	@Override
	public String toString() {
		return "MedicalFeeInfo [projectId=" + projectId + ", projectName=" + projectName + ", projectFee=" + projectFee
				+ ", medicalSection=" + medicalSection + ", refundSection=" + refundSection + "]";
	}

}
