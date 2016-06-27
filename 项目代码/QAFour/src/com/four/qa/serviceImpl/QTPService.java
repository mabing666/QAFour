package com.four.qa.serviceImpl;

import com.four.qa.daoImpl.QuestionDao;
import com.four.qa.daoImpl.TopicDao;
import com.four.qa.model.QTP;
import com.four.qa.model.RQTP;
import com.four.qa.serviceInterface.IQTPService;

/**
 * @date 2016-6-27 
 * @author mabing
 *
 */
public class QTPService implements IQTPService{

	private QuestionDao questionDao;
	private TopicDao topicDao;
	
	public QTP saveQTP(RQTP a) {
		int qid = a.getQid();
		int tpid = a.getTpid();
		QTP qtp = new QTP();
		qtp.setQID(questionDao.get(qid));
		qtp.setTPID(topicDao.get(tpid));
		return qtp;
	}

}
