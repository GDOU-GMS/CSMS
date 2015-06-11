package org.blueshit.csms.web.controller;

import org.blueshit.csms.base.BaseAction;
import org.blueshit.csms.entity.Color;
import org.blueshit.csms.utils.QueryHelper;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;


@Controller
@Scope("prototype")
public class ColorAction extends BaseAction<Color>{

	
	
	
	private int pageNum = 1;
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}



	/**
	 * 颜色列表.
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception{
		new QueryHelper(Color.class, "c")
			.preparePageBean(colorService, pageNum);
		return "list";
	}
	
	/**
	 * 添加.
	 * @return
	 * @throws Exception
	 */
	public String add() throws Exception{
		colorService.save(model);
		System.out.println(pageNum+"===============================");
		ActionContext.getContext().put("pageNum", pageNum);
		return "toList";
	}
	
	/**
	 * 修改.
	 * @return
	 * @throws Exception
	 */
	public String edit() throws Exception{
		//找出原来的数据
		Color color = colorService.findById(model.getId());
		//更新新的数据
		color.setName(model.getName());
		//跟新到数据库
		colorService.save(color);
		return "toList";
	}
	
	/**
	 * 删除.
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception{
		colorService.delete(model.getId());
		ActionContext.getContext().put("pageNum", pageNum);
		return "toList";
	}
}
