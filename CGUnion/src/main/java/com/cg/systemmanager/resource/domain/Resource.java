package com.cg.systemmanager.resource.domain;

import java.io.Serializable;

public class Resource implements Serializable{

	/**
	 * 序列号
	 */
	private static final long serialVersionUID = 1069339536732760566L;
	/**
	 * 资源id
	 */
	private String resourceId;
	/**
	 * 资源名
	 */
	private String resourceName;
	/**
	 * 资源缩写
	 */
	private String resourceAbbr;
	/**
	 * 父资源id
	 */
	private String parentResourceId;
	/**
	 * 父资源名
	 */
	private String parentResourceName;
	/**
	 * 资源url
	 */
	private String resourceUrl;
	/**
	 * 资源类型
	 */
	private String resourceType;
	/**
	 * 资源等级
	 */
	private short resourceLevel;
	/**
	 * 资源序号
	 */
	private String resourceNo;
	/**
	 * 是否可用
	 */
	private byte useable;
	/**
	 * 描述
	 */
	private String description;
	
	public Resource(){
		
	}

	public Resource(String resourceId, String resourceName, String resourceAbbr, String parentResourceId,
			String parentResourceName, String resourceUrl, String resourceType, short resourceLevel, String resourceNo,
			byte useable, String description) {
		super();
		this.resourceId = resourceId;
		this.resourceName = resourceName;
		this.resourceAbbr = resourceAbbr;
		this.parentResourceId = parentResourceId;
		this.parentResourceName = parentResourceName;
		this.resourceUrl = resourceUrl;
		this.resourceType = resourceType;
		this.resourceLevel = resourceLevel;
		this.resourceNo = resourceNo;
		this.useable = useable;
		this.description = description;
	}

	/**
	 * @return the resourceId
	 */
	public String getResourceId() {
		return resourceId;
	}

	/**
	 * @param resourceId the resourceId to set
	 */
	public void setResourceId(String resourceId) {
		this.resourceId = resourceId;
	}

	/**
	 * @return the resourceName
	 */
	public String getResourceName() {
		return resourceName;
	}

	/**
	 * @param resourceName the resourceName to set
	 */
	public void setResourceName(String resourceName) {
		this.resourceName = resourceName;
	}

	/**
	 * @return the resourceAbbr
	 */
	public String getResourceAbbr() {
		return resourceAbbr;
	}

	/**
	 * @param resourceAbbr the resourceAbbr to set
	 */
	public void setResourceAbbr(String resourceAbbr) {
		this.resourceAbbr = resourceAbbr;
	}

	/**
	 * @return the parentResourceId
	 */
	public String getParentResourceId() {
		return parentResourceId;
	}

	/**
	 * @param parentResourceId the parentResourceId to set
	 */
	public void setParentResourceId(String parentResourceId) {
		this.parentResourceId = parentResourceId;
	}

	/**
	 * @return the parentResourceName
	 */
	public String getParentResourceName() {
		return parentResourceName;
	}

	/**
	 * @param parentResourceName the parentResourceName to set
	 */
	public void setParentResourceName(String parentResourceName) {
		this.parentResourceName = parentResourceName;
	}

	/**
	 * @return the resourceUrl
	 */
	public String getResourceUrl() {
		return resourceUrl;
	}

	/**
	 * @param resourceUrl the resourceUrl to set
	 */
	public void setResourceUrl(String resourceUrl) {
		this.resourceUrl = resourceUrl;
	}

	/**
	 * @return the resourceType
	 */
	public String getResourceType() {
		return resourceType;
	}

	/**
	 * @param resourceType the resourceType to set
	 */
	public void setResourceType(String resourceType) {
		this.resourceType = resourceType;
	}

	/**
	 * @return the resourceLevel
	 */
	public short getResourceLevel() {
		return resourceLevel;
	}

	/**
	 * @param resourceLevel the resourceLevel to set
	 */
	public void setResourceLevel(short resourceLevel) {
		this.resourceLevel = resourceLevel;
	}

	/**
	 * @return the resourceNo
	 */
	public String getResourceNo() {
		return resourceNo;
	}

	/**
	 * @param resourceNo the resourceNo to set
	 */
	public void setResourceNo(String resourceNo) {
		this.resourceNo = resourceNo;
	}

	/**
	 * @return the useable
	 */
	public byte getUseable() {
		return useable;
	}

	/**
	 * @param useable the useable to set
	 */
	public void setUseable(byte useable) {
		this.useable = useable;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((parentResourceId == null) ? 0 : parentResourceId.hashCode());
		result = prime * result + ((parentResourceName == null) ? 0 : parentResourceName.hashCode());
		result = prime * result + ((resourceAbbr == null) ? 0 : resourceAbbr.hashCode());
		result = prime * result + ((resourceId == null) ? 0 : resourceId.hashCode());
		result = prime * result + resourceLevel;
		result = prime * result + ((resourceName == null) ? 0 : resourceName.hashCode());
		result = prime * result + ((resourceNo == null) ? 0 : resourceNo.hashCode());
		result = prime * result + ((resourceType == null) ? 0 : resourceType.hashCode());
		result = prime * result + ((resourceUrl == null) ? 0 : resourceUrl.hashCode());
		result = prime * result + useable;
		return result;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Resource other = (Resource) obj;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (parentResourceId == null) {
			if (other.parentResourceId != null)
				return false;
		} else if (!parentResourceId.equals(other.parentResourceId))
			return false;
		if (parentResourceName == null) {
			if (other.parentResourceName != null)
				return false;
		} else if (!parentResourceName.equals(other.parentResourceName))
			return false;
		if (resourceAbbr == null) {
			if (other.resourceAbbr != null)
				return false;
		} else if (!resourceAbbr.equals(other.resourceAbbr))
			return false;
		if (resourceId == null) {
			if (other.resourceId != null)
				return false;
		} else if (!resourceId.equals(other.resourceId))
			return false;
		if (resourceLevel != other.resourceLevel)
			return false;
		if (resourceName == null) {
			if (other.resourceName != null)
				return false;
		} else if (!resourceName.equals(other.resourceName))
			return false;
		if (resourceNo == null) {
			if (other.resourceNo != null)
				return false;
		} else if (!resourceNo.equals(other.resourceNo))
			return false;
		if (resourceType == null) {
			if (other.resourceType != null)
				return false;
		} else if (!resourceType.equals(other.resourceType))
			return false;
		if (resourceUrl == null) {
			if (other.resourceUrl != null)
				return false;
		} else if (!resourceUrl.equals(other.resourceUrl))
			return false;
		if (useable != other.useable)
			return false;
		return true;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Resource [resourceId=" + resourceId + ", resourceName=" + resourceName + ", resourceAbbr="
				+ resourceAbbr + ", parentResourceId=" + parentResourceId + ", parentResourceName=" + parentResourceName
				+ ", resourceUrl=" + resourceUrl + ", resourceType=" + resourceType + ", resourceLevel=" + resourceLevel
				+ ", resourceNo=" + resourceNo + ", useable=" + useable + ", description=" + description + "]";
	}

	
	
}
