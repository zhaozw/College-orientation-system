package cn.edu.scau.yx.entity;

public class BeddingInfo {

	private int beddingId;
	private String beddingName;
	private String beddingParameter;
	private double beddingPrice;
	private String beddingManufaturer;
	private String corporateName;

	public int getBeddingId() {
		return beddingId;
	}

	public void setBeddingId(int beddingId) {
		this.beddingId = beddingId;
	}

	public String getBeddingName() {
		return beddingName;
	}

	public void setBeddingName(String beddingName) {
		this.beddingName = beddingName;
	}

	public String getBeddingParameter() {
		return beddingParameter;
	}

	public void setBeddingParameter(String beddingParameter) {
		this.beddingParameter = beddingParameter;
	}

	public double getBeddingPrice() {
		return beddingPrice;
	}

	public void setBeddingPrice(double beddingPrice) {
		this.beddingPrice = beddingPrice;
	}

	public String getBeddingManufaturer() {
		return beddingManufaturer;
	}

	public void setBeddingManufaturer(String beddingManufaturer) {
		this.beddingManufaturer = beddingManufaturer;
	}

	public String getCorporateName() {
		return corporateName;
	}

	public void setCorporateName(String corporateName) {
		this.corporateName = corporateName;
	}

	@Override
	public String toString() {
		return "BeddingInfo [beddingId=" + beddingId + ", beddingName=" + beddingName + ", beddingParameter="
				+ beddingParameter + ", beddingPrice=" + beddingPrice + ", beddingManufaturer=" + beddingManufaturer
				+ ", corporateName=" + corporateName + "]";
	}

}
