package org.blueshit.csms.service.impl;


import org.blueshit.csms.base.DaoSupportImpl;
import org.blueshit.csms.entity.Size;
import org.blueshit.csms.service.SizeService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class SizeServiceImpl extends DaoSupportImpl<Size> implements SizeService {
	public Size getSizeByNum(int num){
		return (Size) getSession()
				.createQuery("from Size s where s.num = ?")
				.setParameter(0, num)
				.uniqueResult();
	}
}
