package org.blueshit.csms.web.controller;

import java.util.HashMap;
import java.util.Map;

import org.blueshit.csms.base.BaseAction;
import org.blueshit.csms.entity.Color;
import org.blueshit.csms.utils.QueryHelper;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;


@Controller
@Scope("prototype")
public class ColorAction extends BaseAction<Color>{
	
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 157873341114363556L;

	private int pageNum = 1;
	
	public Map<String, Object> jsonMap;
	
	public Map<String, Object> getJsonMap() {
		return jsonMap;
	}

	public void setJsonMap(Map<String, Object> jsonMap) {
		this.jsonMap = jsonMap;
	}	
	
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
	
	/**
	 * 根据ID获取json
	 * @return
	 * @throws Exception
	 */
	public String getJsonById() throws Exception{
		Color color =  colorService.findById(model.getId());
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("color", color);
		this.setJsonMap(map);;
		return "getJsonById";
	}
}
