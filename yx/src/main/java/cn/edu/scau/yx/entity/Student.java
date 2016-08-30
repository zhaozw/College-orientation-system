
package cn.edu.scau.yx.entity;

import java.sql.Date;

public class Student {
	private int stuId;
	private String studentName;
	private Class class1 ;
	private String id;
	private int age;
	private String people;
	private Date birthdate;
	private String enrollState;
	private String home;
	private String phoneNumber;
	private String fatherName;
	private String fatherWork;
	private String fatherPhone;
	private String motherName;
	private String motherWork;
	private String motherPhone;
	private int clothesSize;
    private OneCardPass oneCardPass;
	private StudentStatus  studentStatus;
	private PayTheFee payTheFee;
	private String resultMessage;
	
	public OneCardPass getOneCardPass() {
		return oneCardPass;
	}

	public void setOneCardPass(OneCardPass oneCardPass) {
		this.oneCardPass = oneCardPass;
	}

	public StudentStatus getStudentStatus() {
		return studentStatus;
	}

	public void setStudentStatus(StudentStatus studentStatus) {
		this.studentStatus = studentStatus;
	}

	public int getStuId() {
		return stuId;
	}

	public void setStuId(int stuId) {
		this.stuId = stuId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}


	public Class getClass1() {
		return class1;
	}

	public void setClass1(Class class1) {
		this.class1 = class1;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPeople() {
		return people;
	}

	public void setPeople(String people) {
		this.people = people;
	}

	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public String getEnrollState() {
		return enrollState;
	}

	public void setEnrollState(String enrollState) {
		this.enrollState = enrollState;
	}

	public String getHome() {
		return home;
	}

	public void setHome(String home) {
		this.home = home;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getFatherWork() {
		return fatherWork;
	}

	public void setFatherWork(String fatherWork) {
		this.fatherWork = fatherWork;
	}

	public String getFatherPhone() {
		return fatherPhone;
	}

	public void setFatherPhone(String fatherPhone) {
		this.fatherPhone = fatherPhone;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getMotherWork() {
		return motherWork;
	}

	public void setMotherWork(String motherWork) {
		this.motherWork = motherWork;
	}

	public String getMotherPhone() {
		return motherPhone;
	}

	public void setMotherPhone(String motherPhone) {
		this.motherPhone = motherPhone;
	}

	
	public PayTheFee getPayTheFee() {
		return payTheFee;
	}

	public void setPayTheFee(PayTheFee payTheFee) {
		this.payTheFee = payTheFee;
	}

	@Override
	public String toString() {
		return "Student [stuId=" + stuId + ", studentName=" + studentName + ", class1=" + class1 + ", id=" + id
				+ ", age=" + age + ", people=" + people + ", birthdate=" + birthdate + ", enrollState=" + enrollState
				+ ", home=" + home + ", phoneNumber=" + phoneNumber + ", fatherName=" + fatherName + ", fatherWork="
				+ fatherWork + ", fatherPhone=" + fatherPhone + ", motherName=" + motherName + ", motherWork="
				+ motherWork + ", motherPhone=" + motherPhone + ", oneCardPass=" + oneCardPass + ", studentStatus="
				+ studentStatus + ", payTheFee=" + payTheFee + "]";
	}

	public String getResultMessage() {
		return resultMessage;
	}

	public void setResultMessage(String resultMessage) {
		this.resultMessage = resultMessage;
	}

	public int getClothesSize() {
		return clothesSize;
	}

	public void setClothesSize(int clothesSize) {
		this.clothesSize = clothesSize;
	}

	
	

}
