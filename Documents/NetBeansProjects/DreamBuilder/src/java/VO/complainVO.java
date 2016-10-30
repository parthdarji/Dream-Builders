package VO;

public class complainVO {
	
	private int complainid;
	private String title;
	private String description;
	private loginVO loginId;
	
	
	public int getComplainid() {
		return complainid;
	}
	public void setComplainid(int complainid) {
		this.complainid = complainid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public loginVO getLoginId() {
		return loginId;
	}
	public void setLoginId(loginVO loginId) {
		this.loginId = loginId;
	}
	
	
	
}
