package org.blueshit.csms.service;

import java.util.List;

import org.blueshit.csms.base.DaoSupport;
import org.blueshit.csms.entity.Order;
import org.blueshit.csms.entity.OrderList;
import org.blueshit.csms.entity.Page;
import org.blueshit.csms.entity.Role;

public interface OrderInService  extends DaoSupport<Order> {
	
	public abstract void detailList(List<OrderList> list,int pageNum);
}
