package org.blueshit.csms.web.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import org.blueshit.csms.base.BaseAction;
import org.blueshit.csms.configuration.Configuration;
import org.blueshit.csms.entity.Order;
import org.blueshit.csms.entity.OrderList;
import org.blueshit.csms.entity.Page;
import org.blueshit.csms.entity.Role;
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
		List<Storage> storages=orderInService.queryStorages();
		ActionContext.getContext().put("storages", storages);
		//准备角色数据
//		List<Order> orderList = orderInService.findAll();
//		ActionContext.getContext().put("orderList", orderList);
		return "list";
	}
	
	/**
	 * 模糊查询
	 * @return
	 * @throws Exception
	 */
	public String query() throws Exception{
		
		//准备分页数据,模糊查询.
	    Object[] dateAll=new Object[2];
	    System.out.println("time="+model.getTime());
		dateAll[0]=model.getTime();
		dateAll[1]=getTimeDate();
		System.out.println("日期"+dateAll[0]);
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
		if(order.getOrderLists()==null){
			System.out.println("获得list为空");
		}
		Set<OrderList> set=order.getOrderLists();
		List<OrderList> list=new ArrayList<>(set);
		orderInService.detailList(list, pageNum);
		ActionContext.getContext().getSession().put("orderId", model.getId());
		return "detailList";
		
	}
	
    


	
	
}
