package cn.edu.scau.yx.entity;

public class Supplier {
	private int supplierId;
	private String suppilerName;
	private String companyAddr;
	private String compPhone;
	private String ownerName;
	private String supplierType;

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public String getSuppilerName() {
		return suppilerName;
	}

	public void setSuppilerName(String suppilerName) {
		this.suppilerName = suppilerName;
	}

	public String getCompanyAddr() {
		return companyAddr;
	}

	public void setCompanyAddr(String companyAddr) {
		this.companyAddr = companyAddr;
	}

	public String getCompPhone() {
		return compPhone;
	}

	public void setCompPhone(String compPhone) {
		this.compPhone = compPhone;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public String getSupplierType() {
		return supplierType;
	}

	public void setSupplierType(String supplierType) {
		this.supplierType = supplierType;
	}

	@Override
	public String toString() {
		return "Supplier [supplierId=" + supplierId + ", suppilerName=" + suppilerName + ", companyAddr=" + companyAddr
				+ ", compPhone=" + compPhone + ", ownerName=" + ownerName + ", supplierType=" + supplierType + "]";
	}

}
