package org.blueshit.csms.base;

import java.lang.reflect.ParameterizedType;











import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;


import org.blueshit.csms.entity.User;
import org.blueshit.csms.service.AssistService;
import org.blueshit.csms.service.ColorService;
import org.blueshit.csms.service.ItemService;
import org.blueshit.csms.service.OrderInService;
import org.blueshit.csms.service.OrderListService;
import org.blueshit.csms.service.PrivilegeService;
import org.blueshit.csms.service.RoleService;
import org.blueshit.csms.service.SizeService;
import org.blueshit.csms.service.StorageService;
import org.blueshit.csms.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("unchecked")
public class BaseAction<T> extends ActionSupport implements ModelDriven<T>{
	
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 4891416074548081771L;
	//==============声明service====================
	@Autowired
	protected RoleService roleService;
	@Autowired
	protected PrivilegeService privilegeService;
	@Autowired
	protected UserService userService;
	@Autowired
	protected ColorService colorService;
	@Autowired
	protected SizeService sizeService;
	@Autowired
	protected StorageService storageService;
	@Autowired
	protected ItemService itemService;
	@Autowired
	protected OrderInService orderInService;
	@Autowired
	protected OrderInService orderOutService;
	@Autowired
	protected OrderListService orderListService;
	protected AssistService assistService;
	//声明model
	protected T model;
	
	
	
	/** 
	 * 通过构造函数获取T.
	 */
	public BaseAction(){
		try{
			//通过反射获取T的真实类型.
			ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
			@SuppressWarnings("rawtypes")
			Class clazz = (Class<T>) pt.getActualTypeArguments()[0];
			model = (T) clazz.newInstance();
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}

	public T getModel() {
		return model;
	}
	
	//***********************常用方法****************************
	/**
	 * 获取当前用户
	 * @return
	 */
	public User getCurrentUser(){
		return (User)ActionContext.getContext().getSession().get("user");
	}
	
	/**
	 * 获取请求地址.
	 * @return
	 */
	public String getRequestIP(){
		return ServletActionContext.getRequest().getRemoteAddr();
	}
	
	
	
	
}
