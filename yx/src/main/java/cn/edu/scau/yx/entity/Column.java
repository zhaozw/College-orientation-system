package cn.edu.scau.yx.entity;
import java.io.Serializable;

public class Column implements Serializable{
	private static final long serialVersionUID = -5670700680653715049L;
	private int ciId;
	private String ciName;
	private String ciAliasName;
//	private String ciIco;
	private String ciKey;
	public String getCiKey() {
		return ciKey;
	}
	public void setCiKey(String ciKey) {
		this.ciKey = ciKey;
	}
	public int getCiId() {
		return ciId;
	}
	public void setCiId(int ciId) {
		this.ciId = ciId;
	}
	public String getCiName() {
		return ciName;
	}
	public void setCiName(String ciName) {
		this.ciName = ciName;
	}
	public String getCiAliasName() {
		return ciAliasName;
	}
	public void setCiAliasName(String ciAliasName) {
		this.ciAliasName = ciAliasName;
	}
//	public String getCiIco() {
//		return ciIco;
//	}
//	public void setCiIco(String ciIco) {
//		this.ciIco = ciIco;
//	}
	
	
	@Override
	public String toString() {
		return "Student [ciId=" + ciId + ", ciName=" + ciName + ", ciAliasName=" + ciAliasName + ", ciKey=" + ciKey +"]";
	}

}
