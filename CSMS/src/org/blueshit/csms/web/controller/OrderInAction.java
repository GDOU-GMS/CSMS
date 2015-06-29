package org.blueshit.csms.web.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.blueshit.csms.base.BaseAction;
import org.blueshit.csms.configuration.Configuration;
import org.blueshit.csms.entity.Color;
import org.blueshit.csms.entity.Item;
import org.blueshit.csms.entity.Order;
import org.blueshit.csms.entity.OrderList;
import org.blueshit.csms.entity.Page;
import org.blueshit.csms.entity.Role;
import org.blueshit.csms.entity.Size;
import org.blueshit.csms.entity.Storage;
import org.blueshit.csms.entity.User;
import org.blueshit.csms.utils.QueryHelper;
import org.hibernate.ejb.criteria.expression.function.AggregationFunction.MAX;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;


@Controller
@Scope("prototype")
public class OrderInAction extends BaseAction<Order> {
	
	
	private Date timeDate;
	private int pageNum = 1;
    private Item item;
    private int num;
  
    
    public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public Map<String, Object> jsonMap;
	
	public Map<String, Object> getJsonMap() {
		return jsonMap;
	}

	public void setJsonMap(Map<String, Object> jsonMap) {
		this.jsonMap = jsonMap;
	}	
	public Date getTimeDate() {
		return timeDate;
	}

	public void setTimeDate(Date timeDate) {
		this.timeDate = timeDate;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	/**获取入库列表
	 * 
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception{
		
		//准备分页数据.
		new QueryHelper(Order.class, "o")
		.addWhereCondition(true,"o.remark = ?", "入库")
		.preparePageBean(userService, pageNum);
		List<Storage> storages=storageService.findAll();
		ActionContext.getContext().getSession().put("storages", storages);
		List<User> users=userService.findAll();
		ActionContext.getContext().getSession().put("users", users);
		return "list";
	}
	
	/**
	 * 模糊查询
	 * @return
	 * @throws Exception
	 */
	public String query() throws Exception{
	   System.out.println("测试一"+model.getStorage().getName());
	   System.out.println("测试二"+pageNum);
		//准备分页数据,模糊查询.
	    Object[] dateAll=new Object[2];
		dateAll[0]=model.getTime();
		dateAll[1]=getTimeDate();
		if(dateAll[0]!=null){
			new QueryHelper(Order.class, "o")
			.addWhereCondition(true,"o.remark = ?", "入库")
			.addWhereCondition(model.getStorage().getName()!=null||"".equals(model.getStorage().getName()),"o.storage.name like ?", "%"+model.getStorage().getName()+"%")
			.addWhereCondition(model.getNumber()!=null||"".equals(model.getNumber()),"o.number like ?", "%"+model.getNumber()+"%")
			.addWhereCondition(dateAll[1]!=null,"o.time between ? and ?",dateAll)
			.addWhereCondition(dateAll[1]==null||"".equals(dateAll[1]),"o.time = ?",dateAll[0])
			.preparePageBean(orderInService, pageNum);
		}
		else{
			new QueryHelper(Order.class, "o")
			.addWhereCondition(true,"o.remark = ?", "入库")
			.addWhereCondition(model.getStorage().getName()!=null||"".equals(model.getStorage().getName()),"o.storage.name like ?", "%"+model.getStorage().getName()+"%")
			.addWhereCondition(model.getNumber()!=null||"".equals(model.getNumber()),"o.number like ?", "%"+model.getNumber()+"%")
			.addWhereCondition(dateAll[1]!=null&&"".equals(dateAll[1]),"o.time = ?",dateAll[1])
			.preparePageBean(orderInService, pageNum);
		}
		//回传参数，解决分页链接异常
		ActionContext.getContext().put("querystatue", "querystatue");
		ActionContext.getContext().put("storageName", model.getStorage().getName());
		ActionContext.getContext().put("number", model.getNumber());
		ActionContext.getContext().put("time", model.getTime());
		ActionContext.getContext().put("timeDate",getTimeDate());
		return "list";
		
	}
	public String detailList(){
		
		Map request = (Map)ActionContext.getContext().get("request");
        String number=(String) request.get("number");
        System.out.println(number);
        Order order=orderInService.getOrderByNumber(number);
        ActionContext.getContext().put("order", order);
        new QueryHelper(OrderList.class, "ol")
		.addWhereCondition(number!=null||number!="","ol.order.number = ? ", number)
		.preparePageBean(orderInService, pageNum);
        List<Color> colors=colorService.findAll();
        ActionContext.getContext().put("colors", colors);
        List<Size> sizes=sizeService.findAll();
        ActionContext.getContext().put("sizes", sizes);
        ActionContext.getContext().put("number", number);
		return "detailList";
		
	}
	/**
	 * 添加订单
	 * @return
	 */
	public String add(){
	
		Date date=new Date();
		String number=new SimpleDateFormat("yyyymmdd").format(date);
		String all=new String();
		for(int i=0;i<3;i++){
			Random random=new Random();
			int one=random.nextInt(9);
			all=all+one;
		}
		number=all+number;
		model.setNumber(number);
		model.setRemark("入库");
		Long storageId=model.getStorage().getId();
		Storage storage=storageService.findById(storageId);
		model.setStorage(storage);
		Long userId=model.getUser().getId();
		User user=userService.findById(userId);
		model.setUser(user);
		model.setOrderLists(null);
		orderInService.save(model);
		ActionContext.getContext().put("pageNum", pageNum);
		ActionContext.getContext().put("number",number);
		return "toDetailList";
		
	}
	
	/**
	 * 删除订单
	 * @return
	 */
	public String delete(){
		orderInService.delete(model.getId());
		ActionContext.getContext().put("pageNum", pageNum);
		return "toList";
	}
	/**
	 * 更新订单
	 * @return
	 */
	public String edit(){
		
		System.out.println(model.getNumber());
	    Order order=orderInService.getOrderByNumber(model.getNumber());
		System.out.println(model.getSite());
	    order.setSite(model.getSite());
	    order.setTime(model.getTime());
		Long storageId=model.getStorage().getId();
		System.out.println(storageId);
		Storage storage=storageService.findById(storageId);
		order.setStorage(storage);
		Long userId=model.getUser().getId();
		User user=userService.findById(userId);
		order.setUser(user);
		orderInService.save(order);
		ActionContext.getContext().put("number", model.getNumber());
		return "toList";
		
	}
	 
	
	 
     public String getJsonById() throws Exception{
    	Order order=orderInService.findById(model.getId());
    	order.setOrderLists(null);
    	User user = new User();
    	user.setUserName(order.getUser().getUserName());
    	order.setUser(user);
    	Map<String,Object> map = new HashMap<String, Object>();
    	map.put("order", order);
    	this.setJsonMap(map);
    	return "getJsonById";
    	/*Order order=orderInService.getOrderByNumber(model.getNumber());
    	Map<String,Object> map = new HashMap<String, Object>();
    	map.put("order", order);
    	this.setJsonMap(map);
    	return "getJsonById";*/
    	
     }
    
     public String detailQuery(){
     	
     	return "list";
      }
     

     
     
     
     public String  detailPage(){
    	 return "detailPage";
     }
	
     
     
     
	
}
