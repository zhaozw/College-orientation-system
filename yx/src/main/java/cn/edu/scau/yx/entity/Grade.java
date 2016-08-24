package cn.edu.scau.yx.entity;

import java.io.Serializable;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月18日下午8:26:52
 *@version v1.0
 */
public class Grade implements Serializable {

	private static final long serialVersionUID = 1539757672522333322L;
	
	private int id;         //年级id
	private String name;    //年级名称
	private int stuNum;     //年级学生人数
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
	public int getStuNum() {
		return stuNum;
	}
	public void setStuNum(int stuNum) {
		this.stuNum = stuNum;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + stuNum;
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
		Grade other = (Grade) obj;
		if (id != other.id)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (stuNum != other.stuNum)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Grade [id=" + id + ", name=" + name + ", stuNum=" + stuNum
				+ "]";
	}

	
	
	

}
