package com.four.qa.serviceImpl;

import java.util.List;

import com.four.qa.daoImpl.TopicDao;
import com.four.qa.model.Topic;
import com.four.qa.serviceInterface.ITopicService;

/**
 * @author Tiaoyu
 * @date 2016/6/18
 */
public class TopicService implements ITopicService {

	private TopicDao topicDao;

	public TopicDao getTopicDao() {
		return topicDao;
	}

	public void setTopicDao(TopicDao topicDao) {
		this.topicDao = topicDao;
	}

	public List<Topic> getAllTopic() {
		return topicDao.getAll();
	}

	public List<Topic> getAllRootTopic() {
		return topicDao.getByFID("1");
	}

	public List<Topic> getAllRootTopic(String tpid) {
		return topicDao.getByFID(tpid);
	}

	public Topic getTopic(String tpid) {
		return topicDao.get(tpid);
	}

	public List<Topic> getUserFavourite(String uid) {
		return topicDao.getByUID(uid);
	}

	public Topic getFatherTopic(String sid) {
		return topicDao.getBySID(sid);
	}

	public List<Topic> getSonTopic(String fid) {
		return topicDao.getByFID(fid);
	}

}
