package com.model;

public class Cars {

	private int carId;
	private String carName;
	private int maxSpeed;

	public Cars() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cars(int carId, String carName, int maxSpeed) {
		super();
		this.carId = carId;
		this.carName = carName;
		this.maxSpeed = maxSpeed;
	}

	public int getCarId() {
		return carId;
	}

	public void setCarId(int carId) {
		this.carId = carId;
	}

	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	public int getMaxSpeed() {
		return maxSpeed;
	}

	public void setMaxSpeed(int maxSpeed) {
		this.maxSpeed = maxSpeed;
	}

	@Override
	public String toString() {
		return "Cars [carId=" + carId + ", carName=" + carName + ", maxSpeed=" + maxSpeed + "]";
	}

}
