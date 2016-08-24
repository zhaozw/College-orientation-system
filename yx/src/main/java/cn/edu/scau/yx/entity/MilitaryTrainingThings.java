package cn.edu.scau.yx.entity;


public class MilitaryTrainingThings {
	private int studentId;
	private int reserve;//预定
	private int get;//领取
	private int clothes;
	private int shoes;
	private int clothesSize;
	private int shoesSize;

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public int getReserve() {
		return reserve;
	}

	public void setReserve(int reserve) {
		this.reserve = reserve;
	}

	public int getGet() {
		return get;
	}

	public void setGet(int get) {
		this.get = get;
	}

	public int getClothes() {
		return clothes;
	}

	public void setClothes(int clothes) {
		this.clothes = clothes;
	}

	public int getShoes() {
		return shoes;
	}

	public void setShoes(int shoes) {
		this.shoes = shoes;
	}

	public int getClothesSize() {
		return clothesSize;
	}

	public void setClothesSize(int clothesSize) {
		this.clothesSize = clothesSize;
	}

	public int getShoesSize() {
		return shoesSize;
	}

	public void setShoesSize(int shoesSize) {
		this.shoesSize = shoesSize;
	}

}
