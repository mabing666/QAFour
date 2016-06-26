package com.four.qa.serviceImpl;

import com.four.qa.daoImpl.QuestionDao;
import com.four.qa.daoImpl.UserInfoDao;
import com.four.qa.model.QU;
import com.four.qa.model.Question;
import com.four.qa.model.RQU;
import com.four.qa.model.UserInfo;
import com.four.qa.serviceInterface.IQUService;

/**
 * @date 2016-6-26
 * @author mabing
 *
 */
public class QUService implements IQUService{

	private UserInfoDao userInfoDao;
	private QuestionDao questionDao;
	
	public QU saveQU(RQU a) {
		QU qu = new QU();
		int qid = a.getQID();
		int uid = a.getUID();
		UserInfo user = userInfoDao.getByID(uid);
		Question question  = questionDao.getByID(qid);
		qu.setQID(question);
		qu.setUID(user);
		return qu;
		
		
	}

}
