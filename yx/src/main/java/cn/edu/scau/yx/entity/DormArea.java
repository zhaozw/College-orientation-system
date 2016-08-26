package cn.edu.scau.yx.entity;

/**
 * 
 *@author 黄建东 
 *@email 2594570106@qq.com
 *@description 宿舍区信息实体类
 *@date 2016年8月25日下午1:34:54
 *@version v1.0
 */
public class DormArea {
	private int areaId;//宿舍区Id
	private String areaName;//宿舍区名字
	private int buildingCount;//楼栋数量
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
	public int getBuildingCount() {
		return buildingCount;
	}
	public void setBuildingCount(int buildingCount) {
		this.buildingCount = buildingCount;
	}
	@Override
	public String toString() {
		return "DormArea [areaId=" + areaId + ", areaName=" + areaName + ", buildingCount=" + buildingCount + "]";
	}
	
	
}
