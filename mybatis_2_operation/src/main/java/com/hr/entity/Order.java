package com.hr.entity;

import java.util.Date;
import java.util.List;

public class Order {
	private Integer eo_id;
	private String eo_user_id;
	private String eo_user_name;
	private String eo_user_address;
	private Date eo_create_time;
	private Double eo_cost;
	private Integer eo_status;
	private Integer eo_type;
	
	private List<OrderDetail> odetails;
	

	@Override
	public String toString() {
		return "Order [eo_id=" + eo_id + ", eo_user_id=" + eo_user_id + ", eo_user_name=" + eo_user_name
				+ ", eo_user_address=" + eo_user_address + ", eo_create_time=" + eo_create_time + ", eo_cost=" + eo_cost
				+ ", eo_status=" + eo_status + ", eo_type=" + eo_type + "]\n";
	}

	public Integer getEo_id() {
		return eo_id;
	}

	public void setEo_id(Integer eo_id) {
		this.eo_id = eo_id;
	}

	public String getEo_user_id() {
		return eo_user_id;
	}

	public void setEo_user_id(String eo_user_id) {
		this.eo_user_id = eo_user_id;
	}

	public String getEo_user_name() {
		return eo_user_name;
	}

	public void setEo_user_name(String eo_user_name) {
		this.eo_user_name = eo_user_name;
	}

	public String getEo_user_address() {
		return eo_user_address;
	}

	public void setEo_user_address(String eo_user_address) {
		this.eo_user_address = eo_user_address;
	}

	public Date getEo_create_time() {
		return eo_create_time;
	}

	public void setEo_create_time(Date eo_create_time) {
		this.eo_create_time = eo_create_time;
	}

	public Double getEo_cost() {
		return eo_cost;
	}

	public void setEo_cost(Double eo_cost) {
		this.eo_cost = eo_cost;
	}

	public Integer getEo_status() {
		return eo_status;
	}

	public void setEo_status(Integer eo_status) {
		this.eo_status = eo_status;
	}

	public Integer getEo_type() {
		return eo_type;
	}

	public void setEo_type(Integer eo_type) {
		this.eo_type = eo_type;
	}

	public List<OrderDetail> getOdetails() {
		return odetails;
	}

	public void setOdetails(List<OrderDetail> odetails) {
		this.odetails = odetails;
	}
	
}
