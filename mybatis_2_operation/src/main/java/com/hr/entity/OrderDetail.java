package com.hr.entity;

public class OrderDetail {
	private Integer eod_id;
	private Integer eo_id;
	private Integer ep_id;
	private Integer eod_quantity;
	private Double eod_cost;
	
	private Order order;
	private Product product;
	
	@Override
	public String toString() {
		return "OrderDetail [eod_id=" + eod_id + ", eo_id=" + eo_id + ", ep_id=" + ep_id + ", eod_quantity="
				+ eod_quantity + ", eod_cost=" + eod_cost + "]";
	}
	public Integer getEod_id() {
		return eod_id;
	}
	public void setEod_id(Integer eod_id) {
		this.eod_id = eod_id;
	}
	public Integer getEo_id() {
		return eo_id;
	}
	public void setEo_id(Integer eo_id) {
		this.eo_id = eo_id;
	}
	public Integer getEp_id() {
		return ep_id;
	}
	public void setEp_id(Integer ep_id) {
		this.ep_id = ep_id;
	}
	public Integer getEod_quantity() {
		return eod_quantity;
	}
	public void setEod_quantity(Integer eod_quantity) {
		this.eod_quantity = eod_quantity;
	}
	public Double getEod_cost() {
		return eod_cost;
	}
	public void setEod_cost(Double eod_cost) {
		this.eod_cost = eod_cost;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
}
