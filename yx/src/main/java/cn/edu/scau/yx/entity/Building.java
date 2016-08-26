package cn.edu.scau.yx.entity;

/**
 * 
 *@author 黄建东 
 *@email 2594570106@qq.com
 *@description 楼栋信息实体类
 *@date 2016年8月25日下午1:40:07
 *@version v1.0
 */
public class Building {

	private int buildingId;//楼栋id
	private String buildingName;//楼栋名称
	private DormArea dormArea;//复合属性,宿舍区
	private int floorCount;//楼层数量
	public int getBuildingId() {
		return buildingId;
	}
	public void setBuildingId(int buildingId) {
		this.buildingId = buildingId;
	}
	public String getBuildingName() {
		return buildingName;
	}
	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}
	public DormArea getDormArea() {
		return dormArea;
	}
	public void setDormArea(DormArea dormArea) {
		this.dormArea = dormArea;
	}
	public int getFloorCount() {
		return floorCount;
	}
	public void setFloorCount(int floorCount) {
		this.floorCount = floorCount;
	}
	@Override
	public String toString() {
		return "Building [buildingId=" + buildingId + ", buildingName=" + buildingName + ", dormArea=" + dormArea
				+ ", floorCount=" + floorCount + "]";
	}
	
	
	
	
}
