package org.blueshit.csms.service;

import org.blueshit.csms.base.DaoSupport;
import org.blueshit.csms.entity.Size;

public interface SizeService extends DaoSupport<Size> {
	
	public Size getSizeByNum(int num);
}
