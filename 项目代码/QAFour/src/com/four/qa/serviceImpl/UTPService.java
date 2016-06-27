package com.four.qa.serviceImpl;

import com.four.qa.daoImpl.TopicDao;
import com.four.qa.daoImpl.UserInfoDao;
import com.four.qa.model.RUTP;
import com.four.qa.model.UTP;
import com.four.qa.serviceInterface.IUTPService;

/**
 * @date 2016-6-27
 * @author mabing
 *
 */
public class UTPService implements IUTPService{

	private UserInfoDao userInfoDao;
	private TopicDao topicDao;
	public UTP saveUTP(RUTP a) {
		int uid = a.getUid();
		int tpid = a.getTpid();
		UTP utp = new UTP();
		utp.setTPID(topicDao.get(tpid));
		utp.setUID(userInfoDao.get(uid));
		return utp;
		
	}

}
