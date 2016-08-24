package cn.edu.scau.yx.entity;

import java.io.Serializable;

/**
 * 
 *@author Bruce 
 *@email 2594570106@qq.com
 *@description TODO
 *@date 2016年8月17日上午9:03:14
 *@version v1.0
 */

public class UserRoleInfo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int userRoleId;
	private int userID;
	private int roleId;
	
	
	public int getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(int userRoleId) {
		this.userRoleId = userRoleId;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + roleId;
		result = prime * result + userID;
		result = prime * result + userRoleId;
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
		UserRoleInfo other = (UserRoleInfo) obj;
		if (roleId != other.roleId)
			return false;
		if (userID != other.userID)
			return false;
		if (userRoleId != other.userRoleId)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "UserRoleInfo [userRoleId=" + userRoleId + ", userID=" + userID
				+ ", roleId=" + roleId + "]";
	}
	
	
	
}
