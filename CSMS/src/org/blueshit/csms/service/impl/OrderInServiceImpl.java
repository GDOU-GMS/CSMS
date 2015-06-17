package org.blueshit.csms.service.impl;

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
	/**
	 * 获得所有的仓库
	 */
	@Override
	public List<Storage> queryStorages() {
		return (List<Storage>) getSession().createQuery("from Storage").list();
	}
	
	

}
