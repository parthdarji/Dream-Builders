package VO;

import java.io.Serializable;

public class bidVO implements Serializable{
	
	private int bidId;
	private double bidprice;
	private String baseprice;
	private propertyVO propertyId;
	private loginVO loginId;
	
	public int getBidId() {
		return bidId;
	}
	public void setBidId(int bidId) {
		this.bidId = bidId;
	}
	
	public double getBidprice() {
		return bidprice;
	}
	public void setBidprice(double bidprice) {
		this.bidprice = bidprice;
	}
	public String getBaseprice() {
		return baseprice;
	}
	public void setBaseprice(String baseprice) {
		this.baseprice = baseprice;
	}
	public propertyVO getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(propertyVO propertyId) {
		this.propertyId = propertyId;
	}
	public loginVO getLoginId() {
		return loginId;
	}
	public void setLoginId(loginVO loginId) {
		this.loginId = loginId;
	}

}
