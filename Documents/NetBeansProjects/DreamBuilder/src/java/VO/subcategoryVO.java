package VO;

import java.io.Serializable;

public class subcategoryVO implements Serializable{

	private int subcategoryId;
	private String subcategoryName;
	private String subcategoryDescription;
	private categoryVO categoryId;
	
	
	public int getSubcategoryId() {
		return subcategoryId;
	}
	public void setSubcategoryId(int subcategoryId) {
		this.subcategoryId = subcategoryId;
	}
	public String getSubcategoryName() {
		return subcategoryName;
	}
	public void setSubcategoryName(String subcategoryName) {
		this.subcategoryName = subcategoryName;
	}
	public String getSubcategoryDescription() {
		return subcategoryDescription;
	}
	public void setSubcategoryDescription(String subcategoryDescription) {
		this.subcategoryDescription = subcategoryDescription;
	}
	public categoryVO getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(categoryVO categoryId) {
		this.categoryId = categoryId;
	}
	
	
}
