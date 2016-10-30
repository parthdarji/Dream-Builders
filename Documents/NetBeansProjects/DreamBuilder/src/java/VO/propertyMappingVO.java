package VO;

import java.io.Serializable;

public class propertyMappingVO implements Serializable {
	private int attachmentMappingID;
	private String attachmentName;
	private String path;
	private propertyVO propertyId;
	private int status;
	
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getAttachmentMappingID() {
		return attachmentMappingID;
	}
	public void setAttachmentMappingID(int attachmentMappingID) {
		this.attachmentMappingID = attachmentMappingID;
	}
	public String getAttachmentName() {
		return attachmentName;
	}
	public void setAttachmentName(String attachmentName) {
		this.attachmentName = attachmentName;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public propertyVO getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(propertyVO propertyId) {
		this.propertyId = propertyId;
	}
	
	
	
	
	
	
}
