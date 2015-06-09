package org.blueshit.csms.service;

import org.blueshit.csms.base.DaoSupport;
import org.blueshit.csms.entity.User;

public interface UserService extends DaoSupport<User>{
	
	public abstract User findByLoginNameAndPwd(String loginName,String password);
	
	public abstract void resetPwd(User u);
	
}
