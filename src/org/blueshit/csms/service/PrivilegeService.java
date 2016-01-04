package org.blueshit.csms.service;

import java.util.List;

import org.blueshit.csms.base.DaoSupport;
import org.blueshit.csms.entity.Privilege;

public interface PrivilegeService extends DaoSupport<Privilege> {
	
	public abstract List<Privilege> getTopPrivilege();
	
	public abstract List<String> findAllPrivilegeUrls();
}
