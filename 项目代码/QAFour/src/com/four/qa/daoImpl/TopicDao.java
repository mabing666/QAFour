package com.four.qa.daoImpl;

import java.util.List;

import org.hibernate.criterion.Restrictions;

import com.four.qa.daoBase.BaseDao;
import com.four.qa.model.Topic;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
public class TopicDao extends BaseDao<Topic, Integer> {

	public TopicDao() {
		super(Topic.class);
	}

	/**
	 * 通过父节点获得子话题
	 * 
	 * @author Tiaoyu
	 * @time 2016/6/18 16:41
	 * @param fid
	 * @return List
	 */
	public List<Topic> getByFID(int fid) {
		return super.findBy("ID", true,
				Restrictions.sqlRestriction("id in (select sid from fstopic where fid = '" + fid + "')"));
	}

	/**
	 * 通过uid获得话题
	 * 
	 * @author Tiaoyu
	 * @time 2016/6/22 14:18
	 * @param uid
	 * @return List
	 */
	public List<Topic> getByUID(int uid) {
		return super.findBy("ID", true,
				Restrictions.sqlRestriction("id in (select TPID from utp where uid = '" + uid + "')"));
	}

	/**
	 * 通过sid获得话题
	 * 
	 * @author Tiaoyu
	 * @time 2016/6/22 15:04
	 * @param sid
	 * @return Topic
	 */
	public Topic getBySID(int sid) {
		try {
			List<Topic> list = super.findBy("ID", true,
					Restrictions.sqlRestriction("id in (select fid from fstopic where sid = '" + sid + "')"));
			return list == null ? null : list.get(0);

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<Topic> getByQID(int qid) {
		return super.findBy("ID", true,
				Restrictions.sqlRestriction("id in (select tpid from qtp where qid = '" + qid + "')"));
	}
}
