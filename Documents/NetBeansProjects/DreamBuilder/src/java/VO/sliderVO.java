package VO;

public class sliderVO {
	
	private int sliderId;
	private String sliderImgName;
	
	private String sliderDescription;
	private propertyVO propertyId;
	private String price;
	private String path;
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	public String getSliderImgName() {
		return sliderImgName;
	}
	public void setSliderImgName(String sliderImgName) {
		this.sliderImgName = sliderImgName;
	}
	public int getSliderId() {
		return sliderId;
	}
	public void setSliderId(int sliderId) {
		this.sliderId = sliderId;
	}
	public String getSliderDescription() {
		return sliderDescription;
	}
	public void setSliderDescription(String sliderDescription) {
		this.sliderDescription = sliderDescription;
	}
	public propertyVO getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(propertyVO propertyId) {
		this.propertyId = propertyId;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
}
