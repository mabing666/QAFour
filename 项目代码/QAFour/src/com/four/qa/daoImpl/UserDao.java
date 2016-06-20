package com.four.qa.daoImpl;

import java.util.List;

import org.hibernate.criterion.Restrictions;

import com.four.qa.daoBase.BaseDao;
import com.four.qa.model.User;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
public class UserDao extends BaseDao<User, String> {

	public UserDao() {
		super(User.class);
	}

	/**
	 * 通过昵称获得用户信息
	 * 
	 * @param uname
	 * @return
	 */
	public User getByName(String uname) {
		List<User> ulist = super.findBy("ID", true, Restrictions.sqlRestriction("uname = '" + uname + "'"));
		if (ulist == null) {
			return null;
		} else {
			return ulist.get(0);
		}
	}
}
