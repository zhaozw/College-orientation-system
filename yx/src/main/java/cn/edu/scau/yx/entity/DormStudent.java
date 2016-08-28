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
	private Student student;//复合属性，学生信息
	private int haveProduct;//是否拥有迎新物品
	private DormWelcome dormWelcome;//复合属性，迎新物品
	
	
	public DormWelcome getDormWelcome() {
		return dormWelcome;
	}
	public void setDormWelcome(DormWelcome dormWelcome) {
		this.dormWelcome = dormWelcome;
	}
	public int getDormStudentId() {
		return dormStudentId;
	}
	public void setDormStudentId(int dormStudentId) {
		this.dormStudentId = dormStudentId;
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
		return "DormStudent [dormStudentId=" + dormStudentId + ", student=" + student + ", haveProduct=" + haveProduct
				+ ", dormWelcome=" + dormWelcome + "]";
	}
	

	
	
	
}
