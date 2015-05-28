package org.blueshit.csms.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tb_item")
public class Item implements Serializable{

	private Long id;
	private String item_number;
	private String color_number;
	private int size;
	private String brand;
	private Long factory_price;
	private Long retail_price;
	private  String shell;
	private String lining;
	
	private Set<OrderList> orderLists;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getItem_number() {
		return item_number;
	}

	public void setItem_number(String item_number) {
		this.item_number = item_number;
	}

	public String getColor_number() {
		return color_number;
	}

	public void setColor_number(String color_number) {
		this.color_number = color_number;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public Long getFactory_price() {
		return factory_price;
	}

	public void setFactory_price(Long factory_price) {
		this.factory_price = factory_price;
	}

	public Long getRetail_price() {
		return retail_price;
	}

	public void setRetail_price(Long retail_price) {
		this.retail_price = retail_price;
	}

	public String getShell() {
		return shell;
	}

	public void setShell(String shell) {
		this.shell = shell;
	}

	public String getLining() {
		return lining;
	}

	public void setLining(String lining) {
		this.lining = lining;
	}

	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="item_id")
	public Set<OrderList> getOrderLists() {
		return orderLists;
	}

	public void setOrderLists(Set<OrderList> orderLists) {
		this.orderLists = orderLists;
	}
	
	
	
	
}
