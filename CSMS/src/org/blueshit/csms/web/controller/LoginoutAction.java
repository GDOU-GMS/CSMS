package org.blueshit.csms.web.controller;

import javax.annotation.Resource;

import org.blueshit.csms.entity.User;
import org.blueshit.csms.service.UserService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class LoginoutAction extends ActionSupport {
	
	@Resource
	private UserService userService;

	private String loginName;
	private String password;
	
	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

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
	public String login() throws Exception{
		User user = userService.findByLoginNameAndPwd(loginName, password);
		if(user!=null){
			ActionContext.getContext().getSession().put("user", user);
			return "toIndex";
		}else{
			ActionContext.getContext().put("message", "该用户不存在!");
			return "message";
		}
	}
	
	/**
	 * 退出登录.
	 * @return
	 */
	public String logout(){
		return "logout";
	}
	
}
