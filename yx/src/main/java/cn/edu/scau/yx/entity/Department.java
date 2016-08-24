package cn.edu.scau.yx.entity;

import java.io.Serializable;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@decription TODO
 *@date 2016年8月17日下午2:21:20
 *@version v1.0
 */
public class Department implements Serializable {

	private static final long serialVersionUID = -6549706807612728018L;
    
	private int id;                       //id
	private String name;                  //学院名称
	private String president;             //院长名字
	private String vicePresident;         //副院长名字
	private String address;               //学院地址
	private String phone;                 //联系电话
	private String zipCode;               //邮政编码
	private String networkAddress;        //学院网址
	private String description;           //学院简介
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPresident() {
		return president;
	}
	public void setPresident(String president) {
		this.president = president;
	}
	public String getVicePresident() {
		return vicePresident;
	}
	public void setVicePresident(String vicePresident) {
		this.vicePresident = vicePresident;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getNetworkAddress() {
		return networkAddress;
	}
	public void setNetworkAddress(String networkAddress) {
		this.networkAddress = networkAddress;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result
				+ ((description == null) ? 0 : description.hashCode());
		result = prime * result + id;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result
				+ ((networkAddress == null) ? 0 : networkAddress.hashCode());
		result = prime * result + ((phone == null) ? 0 : phone.hashCode());
		result = prime * result
				+ ((president == null) ? 0 : president.hashCode());
		result = prime * result
				+ ((vicePresident == null) ? 0 : vicePresident.hashCode());
		result = prime * result + ((zipCode == null) ? 0 : zipCode.hashCode());
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
		Department other = (Department) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (id != other.id)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (networkAddress == null) {
			if (other.networkAddress != null)
				return false;
		} else if (!networkAddress.equals(other.networkAddress))
			return false;
		if (phone == null) {
			if (other.phone != null)
				return false;
		} else if (!phone.equals(other.phone))
			return false;
		if (president == null) {
			if (other.president != null)
				return false;
		} else if (!president.equals(other.president))
			return false;
		if (vicePresident == null) {
			if (other.vicePresident != null)
				return false;
		} else if (!vicePresident.equals(other.vicePresident))
			return false;
		if (zipCode == null) {
			if (other.zipCode != null)
				return false;
		} else if (!zipCode.equals(other.zipCode))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Department [id=" + id + ", name=" + name + ", president="
				+ president + ", vicePresident=" + vicePresident + ", address="
				+ address + ", phone=" + phone + ", zipCode=" + zipCode
				+ ", networkAddress=" + networkAddress + ", description="
				+ description + "]";
	}
	
	
}
