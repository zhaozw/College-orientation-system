package cn.edu.scau.yx.entity;

public class StudentStatus {
	private int studentId;
	private int printReport;
	private int oneCard;
	private int medicalInsurance;
	private int register;
	private int getKey;
	private int fileSubmit;

	public int getFileSubmit() {
		return fileSubmit;
	}

	public void setFileSubmit(int fileSubmit) {
		this.fileSubmit = fileSubmit;
	}

	public int getStudentId() {
		return studentId;
	}

	public int getRegister() {
		return register;
	}

	public void setRegister(int register) {
		this.register = register;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public int getPrintReport() {
		return printReport;
	}

	public void setPrintReport(int printReport) {
		this.printReport = printReport;
	}

	public int getOneCard() {
		return oneCard;
	}

	public void setOneCard(int oneCard) {
		this.oneCard = oneCard;
	}

	public int getMedicalInsurance() {
		return medicalInsurance;
	}

	public void setMedicalInsurance(int medicalInsurance) {
		this.medicalInsurance = medicalInsurance;
	}


	public int getGetKey() {
		return getKey;
	}

	public void setGetKey(int getKey) {
		this.getKey = getKey;
	}
}
