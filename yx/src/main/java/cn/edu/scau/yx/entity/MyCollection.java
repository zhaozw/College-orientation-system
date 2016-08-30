package cn.edu.scau.yx.entity;
import java.io.Serializable;
public class MyCollection implements Serializable{
	private static final long serialVersionUID=3847641607346387218L;
	private int coId;
	private int piId;
	private int nuId;
	public int getCoId() {
		return coId;
	}
	public void setCoId(int coId) {
		this.coId = coId;
	}
	public int getPiId() {
		return piId;
	}
	public void setPiId(int piId) {
		this.piId = piId;
	}
	public int getNuId() {
		return nuId;
	}
	public void setNuId(int nuId) {
		this.nuId = nuId;
	}
	@Override
	public String toString() {
		return "Collection [coId=" + coId + ", piID=" + piId + ", nuId=" + nuId 
				+"]";
	}
}
