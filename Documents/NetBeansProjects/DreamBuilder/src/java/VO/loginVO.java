package VO;

public class loginVO {
	private int loginId;
	private String emailId;
	private String password;
	private String logintype;
	private registrationVO register_id;
	private String date;
	public registrationVO getRegister_id() {
		return register_id;
	}
	public void setRegister_id(registrationVO register_id) {
		this.register_id = register_id;
	}
	public int getLoginId() {
		return loginId;
	}
	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLogintype() {
		return logintype;
	}
	public void setLogintype(String logintype) {
		this.logintype = logintype;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
		
}
