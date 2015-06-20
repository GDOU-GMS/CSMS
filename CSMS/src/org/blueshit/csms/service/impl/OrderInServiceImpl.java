package org.blueshit.csms.service.impl;

import java.util.Date;
import java.util.List;

import org.blueshit.csms.base.DaoSupportImpl;
import org.blueshit.csms.configuration.Configuration;
import org.blueshit.csms.entity.Order;
import org.blueshit.csms.entity.OrderList;
import org.blueshit.csms.entity.Page;
import org.blueshit.csms.entity.Storage;
import org.blueshit.csms.service.OrderInService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.opensymphony.xwork2.ActionContext;

@Service
@Transactional
public class OrderInServiceImpl extends DaoSupportImpl<Order> implements OrderInService {
	
	/**
	 * 将获得的订单列表进行分页并放入值栈
	 */
	@Override
	public void detailList(List<OrderList> list,int pageNum) {
	
		Configuration conf = new Configuration();
		int pageSize = conf.getPageSize();
		int totalRecord=list.size();
	    Page page=new Page(pageSize, pageNum, totalRecord);
	    page.setList(list);
	    ActionContext.getContext().getValueStack().push(page);
		
	}

	@Override
	public void query(int pageNum,Order model,Date timeDate) {
		
		System.out.println(model.getStorage().getName());
        System.out.println(model.getNumber());
		Configuration conf = new Configuration();
		int pageSize = conf.getPageSize();
		List<Order> list=getSession().createQuery("from Order o where o.storage.name like ? and o.number like ? and o.time  between ?  and  ? ")
		.setParameter(0, "%"+model.getStorage().getName()+"%")
		.setParameter(1, "%"+model.getNumber()+"%")
		.setParameter(2, model.getTime())
		.setParameter(3, timeDate).list();
		Page page=new Page(pageSize, pageNum, list.size());
	    page.setList(list);
	    System.out.println(list);
	    ActionContext.getContext().getValueStack().push(page);
		
	}

	@Override
	public Order getOrderByNumber(String number) {
		return (Order) getSession().createQuery("from Order o where o.number =? ")
		.setParameter(0, number)
		.uniqueResult();
	}
	
	
	

}
