package org.blueshit.csms.web.controller;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;
import org.blueshit.csms.base.BaseAction;
import org.blueshit.csms.base.DaoSupportImpl;
import org.blueshit.csms.entity.Color;
import org.blueshit.csms.entity.Size;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class JsonAction extends BaseAction<Object> {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -162532096144108782L;

	public Map<String, Object> jsonMap;
	
	public Map<String, Object> getJsonMap() {
		return jsonMap;
	}

	public void setJsonMap(Map<String, Object> jsonMap) {
		this.jsonMap = jsonMap;
	}
	
	/**
	 * 获取颜色和尺码数据.
	 * @return
	 */
	public String getColorAndSize(){
		//查询数据.
		List<Color> colorList = colorService.findAll();
		List<Size> sizeList = sizeService.findAll();
		//封装到map
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("colors", colorList);
		map.put("sizes", sizeList);
		this.setJsonMap(map);
		return "colorAndSize";
	}
	
	
}
