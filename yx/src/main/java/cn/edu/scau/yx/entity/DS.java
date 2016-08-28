package cn.edu.scau.yx.entity;

/**
 * 
 *@author 黄建东 
 *@email 2594570106@qq.com
 *@description 宿舍学生信息：包括学生信息、宿舍信息
 *@date 2016年8月28日上午8:34:00
 *@version v1.0
 */
public class DS {

	private int sId;
	private D d;
	private Student student;
	
	
	
	public int getsId() {
		return sId;
	}
	public void setsId(int sId) {
		this.sId = sId;
	}
	public D getD() {
		return d;
	}
	public void setD(D d) {
		this.d = d;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	@Override
	public String toString() {
		return "DS [d=" + d + ", student=" + student + "]";
	}
	
	
}
