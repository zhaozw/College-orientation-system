package cn.edu.scau.yx.entity;

/**
 * 
 *@author 黄建东 
 *@email 2594570106@qq.com
 *@description 楼层信息实体类
 *@date 2016年8月25日下午1:40:55
 *@version v1.0
 */
public class Floor {

	private int floorId;//楼层id
	private int floorNum;//楼层号
	private int dormCount;//（每一层）宿舍数量
	private Building building;//复合属性，楼栋
	private DormArea dormArea;//复合属性，宿舍区
	
	public DormArea getDormArea() {
		return dormArea;
	}
	public void setDormArea(DormArea dormArea) {
		this.dormArea = dormArea;
	}
	public int getFloorId() {
		return floorId;
	}
	public void setFloorId(int floorId) {
		this.floorId = floorId;
	}
	public int getFloorNum() {
		return floorNum;
	}
	public void setFloorNum(int floorNum) {
		this.floorNum = floorNum;
	}
	public int getDormCount() {
		return dormCount;
	}
	public void setDormCount(int dormCount) {
		this.dormCount = dormCount;
	}
	public Building getBuilding() {
		return building;
	}
	public void setBuilding(Building building) {
		this.building = building;
	}
	@Override
	public String toString() {
		return "Floor [floorId=" + floorId + ", floorNum=" + floorNum + ", dormCount=" + dormCount + ", building="
				+ building + "]";
	}
	
	
}
