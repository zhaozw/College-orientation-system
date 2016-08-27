package cn.edu.scau.yx.entity;

/**
 * 
 *@author 黄建东 
 *@email 2594570106@qq.com
 *@description 宿舍学生信息实体类
 *@date 2016年8月25日下午1:42:37
 *@version v1.0
 */
public class DormStudent {

	private int dormStudentId;//宿舍学生Id
	private Dormitory dormitory;//复合属性，宿舍基本信息
	private Floor floor;
	private Building building;
	private DormArea dormArea;
	private Student student;//复合属性，学生信息
	private int haveProduct;//是否拥有迎新物品
	
	
	public Floor getFloor() {
		return floor;
	}
	public void setFloor(Floor floor) {
		this.floor = floor;
	}
	public Building getBuilding() {
		return building;
	}
	public void setBuilding(Building building) {
		this.building = building;
	}
	public DormArea getDormArea() {
		return dormArea;
	}
	public void setDormArea(DormArea dormArea) {
		this.dormArea = dormArea;
	}
	public int getDormStudentId() {
		return dormStudentId;
	}
	public void setDormStudentId(int dormStudentId) {
		this.dormStudentId = dormStudentId;
	}
	public Dormitory getDormitory() {
		return dormitory;
	}
	public void setDormitory(Dormitory dormitory) {
		this.dormitory = dormitory;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public int getHaveProduct() {
		return haveProduct;
	}
	public void setHaveProduct(int haveProduct) {
		this.haveProduct = haveProduct;
	}
	@Override
	public String toString() {
		return "DormStudent [dormStudentId=" + dormStudentId + ", dormitory=" + dormitory + ", student=" + student
				+ ", haveProduct=" + haveProduct + "]";
	}
	
	
	
}
