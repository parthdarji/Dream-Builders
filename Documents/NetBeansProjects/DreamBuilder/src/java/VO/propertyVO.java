package VO;

import java.io.Serializable;


public class propertyVO implements Serializable {
	
	private int propertyId;
	private String propertyName;
	
	private categoryVO categoryId;
	private subcategoryVO subcategoryId;
	
	private countryVO countryId;
	private stateVO stateId;
	private cityVO cityId;
	private String area;
	private String type;
	public String getPropertyDesc() {
		return propertyDesc;
	}

	public void setPropertyDesc(String propertyDesc) {
		this.propertyDesc = propertyDesc;
	}

	private double longitude;
	private double price;
	private String status;
	private double lattitude;
	private String bid;
	private String propertyDesc;

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public double getLattitude() {
		return lattitude;
	}

	public void setLattitude(double lattitude) {
		this.lattitude = lattitude;
	}

	
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	
	
	
	public int getPropertyId() {
		return propertyId;
	}

	public void setPropertyId(int propertyId) {
		this.propertyId = propertyId;
	}

	public String getPropertyName() {
		return propertyName;
	}

	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}

	public categoryVO getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(categoryVO categoryId) {
		this.categoryId = categoryId;
	}

	public subcategoryVO getSubcategoryId() {
		return subcategoryId;
	}

	public void setSubcategoryId(subcategoryVO subcategoryId) {
		this.subcategoryId = subcategoryId;
	}

	public countryVO getCountryId() {
		return countryId;
	}

	public void setCountryId(countryVO countryId) {
		this.countryId = countryId;
	}

	public stateVO getStateId() {
		return stateId;
	}

	public void setStateId(stateVO stateId) {
		this.stateId = stateId;
	}

	public cityVO getCityId() {
		return cityId;
	}

	public void setCityId(cityVO cityId) {
		this.cityId = cityId;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	
	

	

	

	
	}
