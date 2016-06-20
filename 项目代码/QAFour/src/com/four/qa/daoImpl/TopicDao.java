package com.four.qa.daoImpl;

import java.util.List;

import org.hibernate.criterion.Restrictions;

import com.four.qa.daoBase.BaseDao;
import com.four.qa.model.Topic;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
public class TopicDao extends BaseDao<Topic, String> {

	public TopicDao() {
		super(Topic.class);
	}

	/**
	 * 通过父节点获得子话题
	 * 
	 * @time 2016/6/18 16:41
	 * @param fid
	 * @return List
	 */
	public List<Topic> getByFID(String fid) {
		return super.findBy("ID", true, Restrictions
				.sqlRestriction("id in (select sid from fstopic where fid = '" + fid + "')"));
	}
}
