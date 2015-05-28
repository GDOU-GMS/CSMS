package org.blueshit.csms.service.impl;

import org.apache.commons.codec.digest.DigestUtils;
import org.blueshit.csms.base.DaoSupportImpl;
import org.blueshit.csms.entity.User;
import org.blueshit.csms.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl extends DaoSupportImpl<User> implements UserService {

	/**
	 * 根据登录名和密码寻找用户.
	 */
	public User findByLoginNameAndPwd(String loginName, String password) {
		return (User) getSession()
				.createQuery("from User u where u.loginName = ? and u.password = ?")
				.setParameter(0, loginName)
				.setParameter(1, DigestUtils.md5Hex(password))
				.uniqueResult();
	}

	
}
