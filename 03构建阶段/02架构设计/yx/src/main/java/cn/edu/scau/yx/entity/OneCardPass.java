/**
 * 
 * Copyright 2016 hwadee.com Co.,Ltd. All Rights Reserved.
 * 
 */
package cn.edu.scau.yx.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Administrator
 * @email zs@163.com
 * @description TODO
 * @date 2016骞�8鏈�1鏃� 涓婂崍10:28:34
 * @version v1.0
 */
public class OneCardPass implements Serializable {

	private int oneCardPassId;
	private int studentId;
	private int creditCard;
	

	public int getOneCardPassId() {
		return oneCardPassId;
	}


	public void setOneCardPassId(int oneCardPassId) {
		this.oneCardPassId = oneCardPassId;
	}


	public int getStudentId() {
		return studentId;
	}


	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}


	public int getCreditCard() {
		return creditCard;
	}


	public void setCreditCard(int creditCard) {
		this.creditCard = creditCard;
	}


	@Override
	public String toString() {
		return "OneCardPass [oneCardPassId=" + oneCardPassId + ", studentId=" + studentId + ", creditCard=" + creditCard
				+ "]";
	}
	
	
}
