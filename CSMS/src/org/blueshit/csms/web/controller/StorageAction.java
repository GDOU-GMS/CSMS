package org.blueshit.csms.web.controller;

import java.util.HashMap;
import java.util.Map;

import org.blueshit.csms.base.BaseAction;
import org.blueshit.csms.entity.Storage;
import org.blueshit.csms.utils.QueryHelper;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class StorageAction extends BaseAction<Storage> {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 85512103025545563L;
	
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
	 * 分页列表.
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception{
		new QueryHelper(Storage.class, "s")
			.preparePageBean(storageService, pageNum);
		return "list";
	}
	
	/**
	 * 添加.
	 * @return
	 * @throws Exception
	 */
	public String add() throws Exception{
		storageService.save(model);
		ActionContext.getContext().put("pageNum", pageNum);//维护页码.
		return "toList";
	}
	
	/**
	 * 删除.
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception{
		storageService.delete(model.getId());
		ActionContext.getContext().put("pageNum", pageNum);//维护页码.
		return "toList";
	}
	/**
	 * 编辑.
	 * @return
	 * @throws Exception
	 */
	public String edit() throws Exception{
		//找出原来的数据
		Storage storage = storageService.findById(model.getId());
		//更新要更新的字段
		storage.setContacts(model.getContacts());
		storage.setContacts_phone(model.getContacts_phone());
		storage.setName(model.getName());
		storage.setNumber(model.getNumber());
		storage.setStorage_num(model.getStorage_num());
		//更新到数据库.
		storageService.save(storage);
		ActionContext.getContext().put("pageNum", pageNum);//维护页码.
		return "toList";
	}
	
	/**
	 * 模糊查询.
	 * @return
	 * @throws Exception
	 */
	public String query() throws Exception{
		//准备分页数据,模糊查询.
		new QueryHelper(Storage.class, "s")
			.addWhereCondition(model.getName()!=null&&!"".equals(model.getName()),"s.name like ?", "%"+model.getName()+"%")
			.addWhereCondition(model.getNumber()!=null&&!"".equals(model.getNumber()),"s.number like ?", "%"+model.getNumber()+"%")
			.preparePageBean(storageService, pageNum);
		//参数重传，解决分页链接问题.
		ActionContext.getContext().put("querystatue", "querystatue");
		ActionContext.getContext().put("name", model.getName());
		ActionContext.getContext().put("number", model.getNumber());
		return "list";
	}
	
	/**
	 * 根据ID获取json数据.
	 * @return
	 * @throws Exception
	 */
	public String getJsonById() throws Exception{
		//获取数据.
		Storage storage = storageService.findById(model.getId());
		//封装到map
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("storage", storage);
		this.setJsonMap(map);
		return "getJsonById";
	}
}
