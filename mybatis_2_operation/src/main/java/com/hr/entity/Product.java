package com.hr.entity;

import java.util.List;

public class Product {
	private Integer ep_id;
	private String ep_name;
	private String ep_description;
	private Double ep_price;
	private Integer ep_stock;
	private Integer epc_id;
	private Integer epc_child_id;
	private String ep_file_name;
	
	private List<OrderDetail> pdedails;

	@Override
	public String toString() {
		return "Product [ep_id=" + ep_id + ", ep_name=" + ep_name + ", ep_description=" + ep_description + ", ep_price="
				+ ep_price + ", ep_stock=" + ep_stock + ", epc_id=" + epc_id + ", epc_child_id=" + epc_child_id
				+ ", ep_file_name=" + ep_file_name + "]";
	}

	public Integer getEp_id() {
		return ep_id;
	}

	public void setEp_id(Integer ep_id) {
		this.ep_id = ep_id;
	}

	public String getEp_name() {
		return ep_name;
	}

	public void setEp_name(String ep_name) {
		this.ep_name = ep_name;
	}

	public String getEp_description() {
		return ep_description;
	}

	public void setEp_description(String ep_description) {
		this.ep_description = ep_description;
	}

	public Double getEp_price() {
		return ep_price;
	}

	public void setEp_price(Double ep_price) {
		this.ep_price = ep_price;
	}

	public Integer getEp_stock() {
		return ep_stock;
	}

	public void setEp_stock(Integer ep_stock) {
		this.ep_stock = ep_stock;
	}

	public Integer getEpc_id() {
		return epc_id;
	}

	public void setEpc_id(Integer epc_id) {
		this.epc_id = epc_id;
	}

	public Integer getEpc_child_id() {
		return epc_child_id;
	}

	public void setEpc_child_id(Integer epc_child_id) {
		this.epc_child_id = epc_child_id;
	}

	public String getEp_file_name() {
		return ep_file_name;
	}

	public void setEp_file_name(String ep_file_name) {
		this.ep_file_name = ep_file_name;
	}

	public List<OrderDetail> getPdedails() {
		return pdedails;
	}

	public void setPdedails(List<OrderDetail> pdedails) {
		this.pdedails = pdedails;
	}
}
