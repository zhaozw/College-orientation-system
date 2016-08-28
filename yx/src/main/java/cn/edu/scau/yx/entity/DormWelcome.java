package cn.edu.scau.yx.entity;

/**
 * 
 *@author 黄建东 
 *@email 2594570106@qq.com
 *@description 宿舍迎新物品信息实体类
 *@date 2016年8月25日下午1:43:52
 *@version v1.0
 */
public class DormWelcome {

	private int dormResId;//宿舍迎新物品id
	private int resNumber;//迎新物品数量
	private String resName;//迎新物品名

	public int getDormResId() {
		return dormResId;
	}
	public void setDormResId(int dormResId) {
		this.dormResId = dormResId;
	}
	public int getResNumber() {
		return resNumber;
	}
	public void setResNumber(int resNumber) {
		this.resNumber = resNumber;
	}
	public String getResName() {
		return resName;
	}
	public void setResName(String resName) {
		this.resName = resName;
	}
	@Override
	public String toString() {
		return "DormWelcome [dormResId=" + dormResId + ", resNumber=" + resNumber + ", resName=" + resName + "]";
	}

	
	
}
