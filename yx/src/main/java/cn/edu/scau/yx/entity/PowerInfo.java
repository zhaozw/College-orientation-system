
package cn.edu.scau.yx.entity;

import java.io.Serializable;

/**
 * 
 *@author Bruce 
 *@email 2594570106@qq.com
 *@description TODO
 *@date 2016年8月17日上午9:02:44
 *@version v1.0
 */

public class PowerInfo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int powerId;
	private String powerName;
	private int powerLevel;
	private String powerDescription;
	
	
	
	
	
	public int getPowerId() {
		return powerId;
	}
	public void setPowerId(int powerId) {
		this.powerId = powerId;
	}
	public String getPowerName() {
		return powerName;
	}
	public void setPowerName(String powerName) {
		this.powerName = powerName;
	}
	public int getPowerLevel() {
		return powerLevel;
	}
	public void setPowerLevel(int powerLevel) {
		this.powerLevel = powerLevel;
	}
	public String getPowerDescription() {
		return powerDescription;
	}
	public void setPowerDescription(String powerDescription) {
		this.powerDescription = powerDescription;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime
				* result
				+ ((powerDescription == null) ? 0 : powerDescription.hashCode());
		result = prime * result + powerId;
		result = prime * result + powerLevel;
		result = prime * result
				+ ((powerName == null) ? 0 : powerName.hashCode());
		result = prime * result ;
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
		PowerInfo other = (PowerInfo) obj;
		if (powerDescription == null) {
			if (other.powerDescription != null)
				return false;
		} else if (!powerDescription.equals(other.powerDescription))
			return false;
		if (powerId != other.powerId)
			return false;
		if (powerLevel != other.powerLevel)
			return false;
		if (powerName == null) {
			if (other.powerName != null)
				return false;
		} else if (!powerName.equals(other.powerName))
			return false;
	
		return true;
	}
	@Override
	public String toString() {
		return "PowerInfo [powerId=" + powerId + ", roleId=" 
				+ ", powerName=" + powerName + ", powerLevel=" + powerLevel
				+ ", powerDescription=" + powerDescription + "]";
	}
	
}
