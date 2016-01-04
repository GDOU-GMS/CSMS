package org.blueshit.csms.service.impl;


import java.util.List;

import org.blueshit.csms.base.DaoSupportImpl;
import org.blueshit.csms.entity.Privilege;
import org.blueshit.csms.service.PrivilegeService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("privilegeService")
@Transactional
public class PrivilegeServiceImpl extends DaoSupportImpl<Privilege> implements PrivilegeService {

	/**
	 * 查询所有的顶级权限
	 */
	public List<Privilege> getTopPrivilege() {
		return getSession()
				.createQuery("from Privilege p where p.parent is null")
				.list();
	}
	
	/**
	 * 查询所有的权限
	 * @return
	 */
	public List<String> findAllPrivilegeUrls(){
		return getSession()
				.createQuery("select p.url from Privilege p where p.url is not null")
				.list();
	}



}
