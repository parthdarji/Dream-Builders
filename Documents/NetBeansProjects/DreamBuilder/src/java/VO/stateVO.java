package VO;

import java.io.Serializable;

public class stateVO implements Serializable {

	private int stateId;
	private String stateName;
	private String stateDescription;
	private countryVO countryId;
	
	
	public int getStateId() {
		return stateId;
	}
	public void setStateId(int stateId) {
		this.stateId = stateId;
	}
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	public String getStateDescription() {
		return stateDescription;
	}
	public void setStateDescription(String stateDescription) {
		this.stateDescription = stateDescription;
	}
	
	
	public countryVO getCountryId() {
		return countryId;
	}
	public void setCountryId(countryVO countryId) {
		this.countryId = countryId;
	}
	
	
	
	
	
}
