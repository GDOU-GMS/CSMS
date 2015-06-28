package org.blueshit.csms.web.controller;

import org.apache.commons.codec.digest.DigestUtils;
import org.blueshit.csms.base.BaseAction;
import org.blueshit.csms.entity.User;
import org.blueshit.csms.service.AssistService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class AssistAction extends BaseAction<User> {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 3439830652680715010L;
	private Long id;
	private String passWord;
	private String newpwd1;
	private String newpwd2;

	public AssistService assistService;

	public AssistService getAssistService() {
		return assistService;
	}

	public void setAssistService(AssistService assistService) {
		this.assistService = assistService;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getNewpwd1() {
		return newpwd1;
	}

	public void setNewpwd1(String newpwd1) {
		this.newpwd1 = newpwd1;
	}

	public String getNewpwd2() {
		return newpwd2;
	}

	public void setNewpwd2(String newpwd2) {
		this.newpwd2 = newpwd2;
	}

	@SuppressWarnings("unchecked")
	public String renewPwd() throws Exception {

		ActionContext ctx = ActionContext.getContext();

		newpwd1 = DigestUtils.md5Hex(newpwd1);
		newpwd2 = DigestUtils.md5Hex(newpwd2);
		if (model.getPassword().equals("")) {
			ctx.put("error", "原密码不能为空!");
			return "error";
		}
		if (newpwd1.equals("")) {
			ctx.put("error", "新密码不能为空!");
			return "error";
		}
		if (!newpwd2.equals(newpwd1)) {
			ctx.put("error", "两次密码输入不一致!");
			return "error";
		}
		User user = (User) ctx.getSession().get("user");
		user = userService.findById(user.getId());
		System.out.println(user.getPassword());
		String user1 = DigestUtils.md5Hex(model.getPassword());
		System.out.println(user1);
		if (!user.getPassword().equals(user1)) {
			ctx.put("error", "原密码输入错误!");
			return "error";
		}

		try {
			user.setPassword(newpwd1);
			userService.save(user);
			ctx.put("message", "密码修改成功!");
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			ctx.put("error", "密码修改失败!");
			return "error";
		}
	}

	/**
	 * 跳转到密码修改页面
	 * 
	 * @return
	 */

	public String updatePwd() {
		return "updatePwd";
	}

}
