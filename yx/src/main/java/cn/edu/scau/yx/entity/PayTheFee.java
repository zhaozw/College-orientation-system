package cn.edu.scau.yx.entity;

public class PayTheFee {
    private int studentId;
    private int hadPaidTheFee;
    private int schooling;
    private int textBooks;
    private int administrativeFee;
    private int medicalInsuranceFee;
    private int militaryTrainingClothesFee;
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public int getHadPaidTheFee() {
		return hadPaidTheFee;
	}
	public void setHadPaidTheFee(int hadPaidTheFee) {
		this.hadPaidTheFee = hadPaidTheFee;
	}
	public int getSchooling() {
		return schooling;
	}
	public void setSchooling(int schooling) {
		this.schooling = schooling;
	}
	public int getTextBooks() {
		return textBooks;
	}
	public void setTextBooks(int textBooks) {
		this.textBooks = textBooks;
	}
	public int getAdministrativeFee() {
		return administrativeFee;
	}
	public void setAdministrativeFee(int administrativeFee) {
		this.administrativeFee = administrativeFee;
	}
	public int getMedicalInsuranceFee() {
		return medicalInsuranceFee;
	}
	public void setMedicalInsuranceFee(int medicalInsuranceFee) {
		this.medicalInsuranceFee = medicalInsuranceFee;
	}
	public int getMilitaryTrainingClothesFee() {
		return militaryTrainingClothesFee;
	}
	public void setMilitaryTrainingClothesFee(int militaryTrainingClothesFee) {
		this.militaryTrainingClothesFee = militaryTrainingClothesFee;
	}
	@Override
	public String toString() {
		return "PayTheFee [studentId=" + studentId + ", hadPaidTheFee=" + hadPaidTheFee + ", schooling=" + schooling
				+ ", textBooks=" + textBooks + ", administrativeFee=" + administrativeFee + ", medicalInsuranceFee="
				+ medicalInsuranceFee + ", militaryTrainingClothesFee=" + militaryTrainingClothesFee + "]";
	}
	
	
    
    
}
