package com.four.qa.daoImpl;

import java.util.List;

import org.hibernate.criterion.Restrictions;

import com.four.qa.daoBase.BaseDao;
import com.four.qa.model.Question;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
public class QuestionDao extends BaseDao<Question, Integer> {

	public QuestionDao() {
		super(Question.class);
	}

	/**
	 * 通过话题tpid获得问题
	 * 
	 * @author Tiaoyu
	 * @param tpid
	 * @time 2016/6/24 12:08
	 * @return List
	 */
	public List<Question> getByTPID(int tpid) {

		return super.findBy("ID", true,
				Restrictions.sqlRestriction("id in (select qid from qtp where tpid ='" + tpid + "')"));
	}

	/**
	 * 通过用户uid获得问题
	 * 
	 * @author Tiaoyu
	 * @time 2016/6/24 12:12
	 * @param uid
	 * @return
	 */
	public List<Question> getByUID(int uid) {

		return super.findBy("ID", true,
				Restrictions.sqlRestriction("id in (select qid from qu where uid = '" + uid + "')"));

	}

	/**
	 * 通过回答asid获得问题
	 * 
	 * @author Tiaoyu
	 * @time 2016/6/24 12:17
	 * @param asid
	 * @return
	 */
	public Question getByASID(int asid) {
		return super.findBy("ID", true,
				Restrictions.sqlRestriction("id in (select qid from answer where id = '" + asid + "')")).get(0);
	}

	/**
	 * 创建问题
	 * 
	 * @author Tiaoyu
	 * @time 2016/6/24 12:25
	 * @param q
	 * @return Question
	 */
//	public Question createQuestion(Question q) {
//		try {
//			super.save(q);
//			return q;
//		} catch (Exception e) {
//			e.printStackTrace();
//			return null;
//		}
//	}
	public Question createQuestion(Question q) {
		try {
			super.save(q);
			return q;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 通过问题的题目或内容模糊查找问题
	 * 
	 * @author mabing
	 * @time 2016-6-26 15:29
	 * @param key
	 * @return
	 */
	public List<Question> getByKey(String key){
		return super.findBy("ID", true, Restrictions.sqlRestriction("id in (select id from question where qstitle like '%" + key + "%' or qscontent like '%" + key + "%')"));
	}
	
	/**
	 * 通过问题id获得问题
	 * 
	 * @author mabing
	 * @time 2016-6-26 17:53
	 * @param id
	 * @return
	 */
	public Question getByID(int id)
	{
		return super.get(id);
	}


}
