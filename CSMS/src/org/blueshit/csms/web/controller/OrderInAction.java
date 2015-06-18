package org.blueshit.csms.web.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

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

import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;


@Controller
public class OrderInAction extends BaseAction<Order> {
	
	
	private Date timeDate;
	private int pageNum = 1;
    private Item item;	
	
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
	    if(model.getStorage().getName()==null){
	    	System.out.println("为空");
	    }
		//准备分页数据,模糊查询.
	    Object[] dateAll=new Object[2];
		dateAll[0]=model.getTime();
		dateAll[1]=getTimeDate();
		if(dateAll[0]!=null){
			new QueryHelper(Order.class, "o")
			.addWhereCondition(model.getStorage().getName()!=null||"".equals(model.getStorage().getName()),"o.storage.name like ?", "%"+model.getStorage().getName()+"%")
			.addWhereCondition(model.getNumber()!=null||"".equals(model.getNumber()),"o.number like ?", "%"+model.getNumber()+"%")
			.addWhereCondition(dateAll[1]!=null,"o.time between ? and ?",dateAll)
			.addWhereCondition(dateAll[1]==null||"".equals(dateAll[1]),"o.time = ?",dateAll[0])
			.preparePageBean(orderInService, pageNum);
		}
		else{
			new QueryHelper(Order.class, "o")
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
		Order order=orderInService.findById(model.getId());
		Set<OrderList> set=order.getOrderLists();
		List<OrderList> list=new ArrayList<>(set);
		orderInService.detailList(list, pageNum);
        List<Color> colors=colorService.findAll();
        List<Size> sizes=sizeService.findAll();
        System.out.println("size="+sizes);
		ActionContext.getContext().put("orderId", model.getId());
		ActionContext.getContext().put("order", order);
		ActionContext.getContext().getSession().put("colors", colors);
		ActionContext.getContext().getSession().put("sizes", sizes);
		return "detailList";
	}
	/**
	 * 添加订单
	 * @return
	 */
	public String add(){
		model.setRemark("入库");
		String storageName=model.getStorage().getName();
		Storage storage=storageService.getStorageByName(storageName);
		model.setStorage(storage);
		String userName=model.getUser().getUserName();
		orderInService.save(model);
		ActionContext.getContext().put("pageNum", pageNum);
		return "toList";
		
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
	public String update(){
		orderInService.save(model);
		return "toList";
	}
	
	
     public String detailQuery(){
    	 
    	System.out.println("测试"+model.getId());
    	 return "list";
     }


	
	
}
