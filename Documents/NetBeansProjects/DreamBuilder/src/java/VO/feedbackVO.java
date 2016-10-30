package VO;

public class feedbackVO {

	private int feedbackid;
	private String title;
	private String description;
	private loginVO loginid;
	public int getFeedbackid() {
		return feedbackid;
	}
	public void setFeedbackid(int feedbackid) {
		this.feedbackid = feedbackid;
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
	public loginVO getLoginid() {
		return loginid;
	}
	public void setLoginid(loginVO loginid) {
		this.loginid = loginid;
	}
	
	
	
}
