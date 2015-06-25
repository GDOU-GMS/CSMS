package org.blueshit.csms.entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Set;

import javax.annotation.Generated;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;


import org.hibernate.annotations.Type;

import com.opensymphony.xwork2.ActionContext;

@Entity
@Table(name="tb_user")
public class User implements Serializable{

	
	private Long id;
	private String password;
	private String userName;
	private String loginName;
	private String intro;
	
	private Set<Order> orders;
	
	private Set<Role> roles;
	
	/**
	 * 根据名称判断是否有权限.
	 * @param privilegeName
	 * @return
	 */
	public boolean hasPrivilegeByName(String privilegeName){
		//如果是超级管理员
		if(testAdmin()){
			return true;
		}
		//如果不是
		for(Role role:this.roles){
			for(Privilege p : role.getPrivileges()){
				if(p.getName().equals(privilegeName)){
					return true;
				}
			}
		}
		return false;
	}
	
	/**
	 * 根据url判断是否有权限.
	 * @param privilegeUrl
	 * @return
	 */
	public boolean hasPrivilegeByUrl(String privilegeUrl){
		//如果是超级管理员
		if(testAdmin()){
			return true;
		}
		int pos = privilegeUrl.indexOf("?");
		
		if(pos > -1){
			privilegeUrl = privilegeUrl.substring(0,pos);
		}
		if(privilegeUrl.endsWith("UI")){
			privilegeUrl = privilegeUrl.substring(0,privilegeUrl.length()-2);
		}
		
		Collection<String> allPrivilegeUrls = (Collection<String>) ActionContext.getContext().getApplication().get("allPrivilegeUrls");
		if(!allPrivilegeUrls.contains(privilegeUrl)){
			return true;
		}else{
			for(Role role: roles ){
				for(Privilege p : role.getPrivileges()){
					if(privilegeUrl.equals(p.getUrl())){
						return true;
					}
				}
			}
		}
		return false;
	}
	
	/**
	 * 判断是不是超级超级管理员
	 * @return
	 */
	private boolean testAdmin() {
		if("admin".equals(loginName)){
			return true;
		}else{
			return false;
		}
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	@OneToMany(cascade={CascadeType.MERGE, CascadeType.PERSIST},fetch=FetchType.LAZY,mappedBy="user")
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	@ManyToMany(cascade={CascadeType.MERGE, CascadeType.PERSIST},fetch=FetchType.EAGER)
	@JoinTable(name="tb_user_role",
				joinColumns=@JoinColumn(name="user_id"),
				inverseJoinColumns = @JoinColumn(name="role_id"))
	public Set<Role> getRoles() {
		return roles;
	}
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	
	
}
