package VO;

public class cityVO {

	private int cityId;
	private String cityName;
	private String cityDescription;
	private countryVO countryId;
	private stateVO stateId;

	
	public int getCityId() {
		return cityId;
	}
	public void setCityId(int cityId) {
		this.cityId = cityId;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getCityDescription() {
		return cityDescription;
	}
	public void setCityDescription(String cityDescription) {
		this.cityDescription = cityDescription;
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
		
}