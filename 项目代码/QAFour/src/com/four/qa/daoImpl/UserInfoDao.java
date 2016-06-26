package com.four.qa.daoImpl;

import java.util.List;

import org.hibernate.criterion.Restrictions;

import com.four.qa.daoBase.BaseDao;
import com.four.qa.model.UserInfo;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
public class UserInfoDao extends BaseDao<UserInfo, Integer> {

	public UserInfoDao() {
		super(UserInfo.class);
	}

	/**
	 * 通过昵称获得用户信息
	 * 
	 * @time 2016/6/22 14:27
	 * @param uname
	 * @return UserInfo
	 */
	public UserInfo getByName(String uname) {
		List<UserInfo> ulist = super.findBy("ID", true, Restrictions.sqlRestriction("uname = '" + uname + "'"));
		if (ulist == null) {
			return null;
		} else {
			try {
				System.out.println(ulist);
				return ulist.get(0);
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}
	}
	
	/**
	 * 通过用户id获得用户信息
	 * 
	 * @time 2016-6-26 17:50
	 * @author mabing
	 * @param id
	 * @return
	 */
	public UserInfo getByID(int id)
	{
		return super.get(id);
	}
}
