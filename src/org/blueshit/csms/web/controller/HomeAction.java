package org.blueshit.csms.web.controller;


import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class HomeAction extends ActionSupport{

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 3520616513130244118L;
	
	/**
	 * 跳转到首页.
	 * @return
	 */
	public String index(){
		return "index";
	}
	
	
}
