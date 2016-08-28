package cn.edu.scau.yx.entity;

/**
 * 
 *@author 黄建东 
 *@email @qq.com
 *@description 宿舍基本信息实体类
 *@date 2016年8月25日下午1:31:25
 *@version v1.0
 */
public class Dormitory {

	private int dormId;//宿舍id
	private String dormName;//宿舍名
	private int beddingCount;//（每间宿舍）床位数量
	private DormStudent dormStudent;//复合属性，宿舍学生
	

	
	public DormStudent getDormStudent() {
		return dormStudent;
	}
	public void setDormStudent(DormStudent dormStudent) {
		this.dormStudent = dormStudent;
	}
	public int getDormId() {
		return dormId;
	}
	public void setDormId(int dormId) {
		this.dormId = dormId;
	}
	public String getDormName() {
		return dormName;
	}
	public void setDormName(String dormName) {
		this.dormName = dormName;
	}
	public int getBeddingCount() {
		return beddingCount;
	}
	public void setBeddingCount(int beddingCount) {
		this.beddingCount = beddingCount;
	}
	@Override
	public String toString() {
		return "Dormitory [dormId=" + dormId + ", dormName=" + dormName + ", beddingCount=" + beddingCount
				+ ", dormStudent=" + dormStudent + "]";
	}

	
}
