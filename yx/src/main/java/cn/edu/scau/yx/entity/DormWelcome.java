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
	private int dormId;
	private int floorId;
	private int buildingId;
	private int areaId;
//	private Dormitory dormitory;//复合属性，宿舍信息
//	private DormArea dormArea;//复合属性，宿舍区
//	private Building building;//复合属性，楼栋
//	private Floor floor;//复合属性，楼层
	
//	public DormArea getDormArea() {
//		return dormArea;
//	}
	public int getDormId() {
		return dormId;
	}
	public void setDormId(int dormId) {
		this.dormId = dormId;
	}
	public int getFloorId() {
		return floorId;
	}
	public void setFloorId(int floorId) {
		this.floorId = floorId;
	}
	public int getBuildingId() {
		return buildingId;
	}
	public void setBuildingId(int buildingId) {
		this.buildingId = buildingId;
	}
	public int getAreaId() {
		return areaId;
	}
	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}
//	public void setDormArea(DormArea dormArea) {
//		this.dormArea = dormArea;
//	}
//	public Building getBuilding() {
//		return building;
//	}
//	public void setBuilding(Building building) {
//		this.building = building;
//	}
//	public Floor getFloor() {
//		return floor;
//	}
//	public void setFloor(Floor floor) {
//		this.floor = floor;
//	}
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
//	public Dormitory getDormitory() {
//		return dormitory;
//	}
//	public void setDormitory(Dormitory dormitory) {
//		this.dormitory = dormitory;
//	}
	@Override
	public String toString() {
		return "DormWelcome [dormResId=" + dormResId + ", resNumber=" + resNumber + ", resName=" + resName + ", dormId="
				+ dormId + ", floorId=" + floorId + ", buildingId=" + buildingId + ", areaId=" + areaId + "]";
	}
	
	
	
}
