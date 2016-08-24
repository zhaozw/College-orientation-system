/**
 * 
 * Copyright 2016 hwadee.com Co.,Ltd. All Rights Reserved.
 * 
 */
package cn.edu.scau.yx.dto;

import java.io.Serializable;
import java.util.List;

/**
 * @author Administrator
 * @email zs@163.com
 * @description TODO
 * @date 2016年8月1日 上午11:29:06
 * @version v1.0
 */
public class Page implements Serializable {

	private static final long serialVersionUID = 5356314552375586360L;
	
	//总计多少条
	private int count;
	//每页多少条
	private int size = 10;
	//总计多少页
	private int total;
	//当前第几页
	private int current = 1;
	//start
	private int start;
	
	private List<?> list;
	
	public Page() {}

	public Page(int current) {
		this.current = current;
		
		this.start = (current - 1) * this.size;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
		
		this.total = (count / this.size) + ((count % this.size) > 0 ? 1 : 0);
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCurrent() {
		return current;
	}

	public void setCurrent(int current) {
		this.current = current;
	}
	
	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public List<?> getList() {
		return list;
	}

	public void setList(List<?> list) {
		this.list = list;
	}

	
	@Override
	public String toString() {
		return "Page [count=" + count + ", size=" + size + ", total=" + total + ", current=" + current + ", list="
				+ list + "]";
	}
	
	

}
