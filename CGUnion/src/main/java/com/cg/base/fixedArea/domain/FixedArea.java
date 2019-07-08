package com.cg.base.fixedArea.domain;
/**
 * ��������ʵ����
 * @author DELL
 *
 */
public class FixedArea {
	/**
	 * ����id
	 */
	private String fixed_area_id ;
	/**
	 * ������
	 */
	private String  fixed_area_name;  
	/**
	 * ������id ְԱ��
	 */
	private String  master_id;
	/**
	 * ������
	 */
	private String  master_name; 
	/**
	 * �Ƿ����
	 */
	private Integer  userable ;
	/**
	 * ����
	 */
	private String  description;
	public FixedArea(String fixed_area_id, String fixed_area_name, String master_id, String master_name,
			Integer userable, String description) {
		super();
		this.fixed_area_id = fixed_area_id;
		this.fixed_area_name = fixed_area_name;
		this.master_id = master_id;
		this.master_name = master_name;
		this.userable = userable;
		this.description = description;
	}
	public FixedArea() {
		super();
	}
	public String getFixed_area_id() {
		return fixed_area_id;
	}
	public void setFixed_area_id(String fixed_area_id) {
		this.fixed_area_id = fixed_area_id;
	}
	public String getFixed_area_name() {
		return fixed_area_name;
	}
	public void setFixed_area_name(String fixed_area_name) {
		this.fixed_area_name = fixed_area_name;
	}
	public String getMaster_id() {
		return master_id;
	}
	public void setMaster_id(String master_id) {
		this.master_id = master_id;
	}
	public String getMaster_name() {
		return master_name;
	}
	public void setMaster_name(String master_name) {
		this.master_name = master_name;
	}
	public Integer getUserable() {
		return userable;
	}
	public void setUserable(Integer userable) {
		this.userable = userable;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((fixed_area_id == null) ? 0 : fixed_area_id.hashCode());
		result = prime * result + ((fixed_area_name == null) ? 0 : fixed_area_name.hashCode());
		result = prime * result + ((master_id == null) ? 0 : master_id.hashCode());
		result = prime * result + ((master_name == null) ? 0 : master_name.hashCode());
		result = prime * result + ((userable == null) ? 0 : userable.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		FixedArea other = (FixedArea) obj;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (fixed_area_id == null) {
			if (other.fixed_area_id != null)
				return false;
		} else if (!fixed_area_id.equals(other.fixed_area_id))
			return false;
		if (fixed_area_name == null) {
			if (other.fixed_area_name != null)
				return false;
		} else if (!fixed_area_name.equals(other.fixed_area_name))
			return false;
		if (master_id == null) {
			if (other.master_id != null)
				return false;
		} else if (!master_id.equals(other.master_id))
			return false;
		if (master_name == null) {
			if (other.master_name != null)
				return false;
		} else if (!master_name.equals(other.master_name))
			return false;
		if (userable == null) {
			if (other.userable != null)
				return false;
		} else if (!userable.equals(other.userable))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "FixedArea [fixed_area_id=" + fixed_area_id + ", fixed_area_name=" + fixed_area_name + ", master_id="
				+ master_id + ", master_name=" + master_name + ", userable=" + userable + ", description=" + description
				+ "]";
	} 
	
}
