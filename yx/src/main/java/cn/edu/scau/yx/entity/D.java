package cn.edu.scau.yx.entity;

/**
 * 
 *@author 黄建东
 *@email 2594570106@qq.com
 *@description 宿舍相关信息实体：包括宿舍区、楼栋号、楼层号、宿舍号
 *@date 2016年8月28日上午8:29:45
 *@version v1.0
 */
public class D {

	private int areaId;
	private String areaName;
	private int buildingId;
	private int floorId;
	private int dormId;
	public int getAreaId() {
		return areaId;
	}
	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public int getBuildingId() {
		return buildingId;
	}
	public void setBuildingId(int buildingId) {
		this.buildingId = buildingId;
	}
	public int getFloorId() {
		return floorId;
	}
	public void setFloorId(int floorId) {
		this.floorId = floorId;
	}
	
	public int getDormId() {
		return dormId;
	}
	public void setDormId(int dormId) {
		this.dormId = dormId;
	}
	@Override
	public String toString() {
		return "D [areaId=" + areaId + ", areaName=" + areaName + ", buildingId=" + buildingId + ", floorId=" + floorId
				+ ", dorm_id=" + dormId + "]";
	}
	
	
}
