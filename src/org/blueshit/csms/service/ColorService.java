package org.blueshit.csms.service;

import org.blueshit.csms.base.DaoSupport;
import org.blueshit.csms.entity.Color;

public interface ColorService extends DaoSupport<Color>{
	
	public Color findByName(String name);
}
