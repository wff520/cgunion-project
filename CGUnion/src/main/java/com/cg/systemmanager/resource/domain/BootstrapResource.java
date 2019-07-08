package com.cg.systemmanager.resource.domain;

import java.io.Serializable;
import java.util.List;

public class BootstrapResource implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1124595589060481934L;
	private int total;
	private List<Resource> rows;
	public BootstrapResource(){
		
	}
	public BootstrapResource(int total, List<Resource> rows) {
		super();
		this.total = total;
		this.rows = rows;
	}
	/**
	 * @return the total
	 */
	public int getTotal() {
		return total;
	}
	/**
	 * @param total the total to set
	 */
	public void setTotal(int total) {
		this.total = total;
	}
	/**
	 * @return the rows
	 */
	public List<Resource> getRows() {
		return rows;
	}
	/**
	 * @param rows the rows to set
	 */
	public void setRows(List<Resource> rows) {
		this.rows = rows;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((rows == null) ? 0 : rows.hashCode());
		result = prime * result + total;
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
		BootstrapResource other = (BootstrapResource) obj;
		if (rows == null) {
			if (other.rows != null)
				return false;
		} else if (!rows.equals(other.rows))
			return false;
		if (total != other.total)
			return false;
		return true;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "BootstrapResource [total=" + total + ", rows=" + rows + "]";
	}
	
	
	
}
