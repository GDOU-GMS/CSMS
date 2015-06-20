package org.blueshit.csms.service.impl;


import org.blueshit.csms.base.DaoSupportImpl;
import org.blueshit.csms.entity.Item;
import org.blueshit.csms.service.ItemService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ItemServiceImpl extends DaoSupportImpl<Item> implements ItemService {

	/**
	 * 根据订单号查找
	 */
	public Item getByItemNumber(String itemNumber) {
		return (Item) getSession()
				.createQuery("from Item i where i.item_number = ?")
				.setParameter(0, itemNumber)
				.uniqueResult();
	}

}
