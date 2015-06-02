package org.blueshit.csms.web.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class LoginoutAction extends ActionSupport {

	
	/**
	 * 跳转到登录界面.
	 * @return
	 */
	public String loginUI(){
		return "loginUI";
	}
	
	/**
	 * 登录.
	 * @return
	 */
	public String login(){
		return "toIndex";
	}
	
	/**
	 * 退出登录.
	 * @return
	 */
	public String logout(){
		return "logout";
	}
	
}
