package com.four.qa.serviceImpl;

import com.four.qa.daoImpl.UserInfoDao;
import com.four.qa.model.UserInfo;
import com.four.qa.serviceInterface.IUserService;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
public class UserService implements IUserService {

	private UserInfoDao userDao;

	public UserInfoDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserInfoDao userDao) {
		this.userDao = userDao;
	}

	public UserInfo doLogin(UserInfo user) {
//		System.out.println(user);
		UserInfo u = userDao.getByName(user.getUname());
//		System.out.println(u);
		if (user.getUpwd().equals(u.getUpwd())) {
			 System.out.println(u);
			return u;
		} else {
			return null;
		}
	}

	public UserInfo doRegister(UserInfo user) {
		System.out.println(user);

		UserInfo u = userDao.getByName(user.getUname());
		if (u == null) {
			userDao.save(user);
			return user;
		}
		return user;
	}
}
