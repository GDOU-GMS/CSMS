package org.blueshit.csms.service;

import org.blueshit.csms.base.DaoSupport;
import org.blueshit.csms.entity.Role;

public interface RoleService extends DaoSupport<Role> {
	public Role getRoleByName(String name);
}
