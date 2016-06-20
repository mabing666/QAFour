package com.four.qa.serviceImpl;

import javax.ws.rs.core.Response;

import com.four.qa.daoImpl.UserDao;
import com.four.qa.model.User;
import com.four.qa.serviceInterface.IUserService;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
public class UserService implements IUserService {

	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public Response doLogin(User user) {
		System.out.println(user);
		User u = userDao.getByName(user.getUname());
		if (user.getUpwd().equals(u.getUpwd())) {
			System.out.println(u);
			return Response.ok(u).build();
		} else {
			return Response.ok(null).build();
		}
	}
}
