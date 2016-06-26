package com.four.qa.daoImpl;

import java.util.List;

import org.hibernate.criterion.Restrictions;

import com.four.qa.daoBase.BaseDao;
import com.four.qa.model.Answer;

/**
 * @author mabing
 * @date 2016-6-24
 */
public class AnswerDao extends BaseDao<Answer, Integer> {

	public AnswerDao() {
		super(Answer.class);
	}

	/**
	 * 通过答案id获得答案
	 * 
	 * @author mabing
	 * @time 2016-6-24 23:23
	 * @param id
	 * @return
	 */
	public Answer getByID(int id) {
		return super.get(id);

	}

	/**
	 * 通过问题id找到答案 2016-6-24 16:35
	 * 
	 * @author mabing
	 * @param qid
	 * @return
	 */
	public List<Answer> getByQID(int qid) {
		System.out.println("this is asdao");
		return super.findBy("ID", true, Restrictions.sqlRestriction("QID = '" + qid + "'"));
	}

	/**
	 * 获得父答案下的所有子答案
	 * 
	 * @time 2016-6-24 16:39
	 * @author mabing
	 * @param fid
	 * @return
	 */
	public List<Answer> getByFID(int fid) {
		return super.findBy("ID", true,
				Restrictions.sqlRestriction("id in (select sid from fsanswer where fid = '" + fid + "')"));
	}

//	/**
//	 * 通过关键字查找答案
//	 * 
//	 * @author mabing
//	 * @time 2016-6-25 11:35
//	 * @param key
//	 * @return
//	 */
//	public List<Answer> getByKey(String key) {
//		return super.findLike("ascontent", key, "ID", true);
//	}
	/**
	 * 通过关键字查找答案
	 * 
	 * @author mabing
	 * @time 2016-6-26 15:00
	 * @param key
	 * @return
	 */
	public List<Answer> getByKey(String key){
		return super.findBy("ID", true, Restrictions.sqlRestriction("id in (select id from answer where ascontent like '%" + key + "%')"));
	}


	/**
	 * 保存问题的答案
	 * 
	 * @author mabing
	 * @time 2016-6-24 17:01
	 * @param answer
	 * 
	 * 修改 by tiaoyu:添加异常处理
	 * @time 2016/6/24 19:59
	 * 
	 */
//	public Answer answerQS(Answer answer) {
//		System.out.println("this is asdao");
//		try {
//			System.out.println(answer);
//			super.save(answer);
//			return answer;
//		} catch (Exception e) {
//			return null;
//		}
//	}

	/**
	 * 保存答案的子答案
	 * 
	 * @author mabing
	 * @time 2016-6-24 23:48
	 * @param answer
	 * @param fid
	 * @return
	 */
	// public Answer answerAS(Answer answer, int fid) {
	// if (answer != null) {
	// super.save(answer);
	//
	// FSAnswer fsanswer = new FSAnswer();
	// Answer fanswer = getByID(fid);
	// fsanswer.setFID(fanswer);
	// fsanswer.setSID(answer);
	//
	// System.out.println("this is snswer");
	// return answer;
	// }
	// return null;
	// }

}
