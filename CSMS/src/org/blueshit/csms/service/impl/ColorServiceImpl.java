package org.blueshit.csms.service.impl;


import org.blueshit.csms.base.DaoSupportImpl;
import org.blueshit.csms.entity.Color;
import org.blueshit.csms.service.ColorService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ColorServiceImpl extends DaoSupportImpl<Color> implements ColorService {

	public Color findByName(String name){
		return (Color)getSession().createQuery("from Color c where c.name = ?")
					.setParameter(0, name)
					.uniqueResult();
	}

}
