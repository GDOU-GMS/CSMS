package org.blueshit.csms.service;

import org.blueshit.csms.base.DaoSupport;
import org.blueshit.csms.entity.Item;

public interface ItemService extends DaoSupport<Item> {

	public Item getByItemNumber(String itemNumber);
}
