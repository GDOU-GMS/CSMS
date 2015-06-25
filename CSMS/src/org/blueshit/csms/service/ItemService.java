package org.blueshit.csms.service;

import org.blueshit.csms.base.DaoSupport;
import org.blueshit.csms.entity.Item;
import org.blueshit.csms.entity.OrderList;

public interface ItemService extends DaoSupport<Item> {

	public Item getByItemNumber(String itemNumber);
	public OrderList getByOrderListId(Long id);
}
