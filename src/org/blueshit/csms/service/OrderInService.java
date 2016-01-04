package org.blueshit.csms.service;

import java.util.Date;
import java.util.List;

import org.blueshit.csms.base.DaoSupport;
import org.blueshit.csms.entity.Order;
import org.blueshit.csms.entity.OrderList;
import org.blueshit.csms.entity.Page;
import org.blueshit.csms.entity.Role;
import org.blueshit.csms.entity.Storage;

public interface OrderInService  extends DaoSupport<Order> {
	
	public abstract void detailList(List<OrderList> list,int pageNum);
	
	public abstract void query(int pageNum,Order model,Date timeDate);
	
	public abstract Order getOrderByNumber(String number);
}
