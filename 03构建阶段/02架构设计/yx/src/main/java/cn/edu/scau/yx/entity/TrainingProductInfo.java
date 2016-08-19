package cn.edu.scau.yx.entity;

public class TrainingProductInfo {

	private int productId;
	private String productName;
	private String productParameter;
	private double productPrice;
	private String productManufaturer;
	private String corporateName;
	

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductParameter() {
		return productParameter;
	}

	public void setProductParameter(String productParameter) {
		this.productParameter = productParameter;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductManufaturer() {
		return productManufaturer;
	}

	public void setProductManufaturer(String productManufaturer) {
		this.productManufaturer = productManufaturer;
	}

	public String getCorporateName() {
		return corporateName;
	}

	public void setCorporateName(String corporateName) {
		this.corporateName = corporateName;
	}

	
	@Override
	public String toString() {
		return "TrainingProductInfo [productId=" + productId + ", productName=" + productName + ", productParameter="
				+ productParameter + ", productPrice=" + productPrice + ", productManufaturer=" + productManufaturer
				+ ", corporateName=" + corporateName + "]";
	}


}
