package cn.edu.scau.yx.entity;

import java.io.Serializable;
import java.util.ArrayList;

/**
 * 
 *@author Bruce 
 *@email 2594570106@qq.com
 *@description TODO
 *@date 2016年8月16日下午3:45:10
 *@version v1.0
 */

public class RoleInfo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int roleId;
	private String roleName;
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	private String description;
	private ArrayList<PowerInfo> powerList;
	
	
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((description == null) ? 0 : description.hashCode());
		result = prime * result + roleId;
		result = prime * result
				+ ((roleName == null) ? 0 : roleName.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		RoleInfo other = (RoleInfo) obj;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (roleId != other.roleId)
			return false;
		if (roleName == null) {
			if (other.roleName != null)
				return false;
		} else if (!roleName.equals(other.roleName))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "RoleInfo [roleId=" + roleId + ", userName=" + roleName
				+ ", rolePid=" +  ", description=" + description + "]";
	}
	public ArrayList<PowerInfo> getPowerList() {
		return powerList;
	}
	public void setPowerList(ArrayList<PowerInfo> powerList) {
		this.powerList = powerList;
	}
	
	
}
