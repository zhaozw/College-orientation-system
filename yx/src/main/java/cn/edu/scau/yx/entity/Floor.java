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
	private Dormitory dormitory; //
	
	
	public Dormitory getDormitory() {
		return dormitory;
	}
	public void setDormitory(Dormitory dormitory) {
		this.dormitory = dormitory;
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
	@Override
	public String toString() {
		return "Floor [floorId=" + floorId + ", floorNum=" + floorNum + ", dormCount=" + dormCount + ", dormitory="
				+ dormitory + "]";
	}
	
	
}
