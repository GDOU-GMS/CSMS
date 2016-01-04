package org.blueshit.csms.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tb_storage")
public class Storage implements Serializable{

	private Long id;
	private String number;
	private String name;
	private Long storage_num;
	private String contacts;
	private String contacts_phone;
	
	private Set<Order> orders;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getStorage_num() {
		return storage_num;
	}

	public void setStorage_num(Long storage_num) {
		this.storage_num = storage_num;
	}

	public String getContacts() {
		return contacts;
	}

	public void setContacts(String contacts) {
		this.contacts = contacts;
	}

	public String getContacts_phone() {
		return contacts_phone;
	}

	public void setContacts_phone(String contacts_phone) {
		this.contacts_phone = contacts_phone;
	}

	@OneToMany(cascade={CascadeType.MERGE, CascadeType.PERSIST},fetch=FetchType.LAZY,mappedBy="storage")
	public Set<Order> getOrders() {
		return orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	@Override
	public String toString() {
		return "Storage [id=" + id + ", number=" + number + ", name=" + name
				+ ", storage_num=" + storage_num + ", contacts=" + contacts
				+ ", contacts_phone=" + contacts_phone + "]";
	}

	
	
	
	
	
}
