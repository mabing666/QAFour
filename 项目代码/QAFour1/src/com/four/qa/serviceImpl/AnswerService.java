package com.four.qa.serviceImpl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.four.qa.daoImpl.AnswerDao;
import com.four.qa.daoImpl.FSAnswerDao;
import com.four.qa.daoImpl.QuestionDao;
import com.four.qa.daoImpl.UserInfoDao;
import com.four.qa.model.AAnswer;
import com.four.qa.model.Answer;
import com.four.qa.model.FSAnswer;
import com.four.qa.model.QAnswer;
import com.four.qa.serviceInterface.IAnswerService;

/**
 * 2016-6-25
 * 
 * @author mabing
 *
 */
public class AnswerService implements IAnswerService {

	private AnswerDao answerDao;
	private UserInfoDao userDao;
	private QuestionDao questionDao;
	private FSAnswerDao fsanswerDao;

	public AnswerDao getAnswerDao() {
		return answerDao;
	}

	public void setAnswerDao(AnswerDao answerDao) {
		this.answerDao = answerDao;
	}

	public UserInfoDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserInfoDao userDao) {
		this.userDao = userDao;
	}

	public QuestionDao getQuestionDao() {
		return questionDao;
	}

	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}

	public FSAnswerDao getFsanswerDao() {
		return fsanswerDao;
	}

	public void setFsanswerDao(FSAnswerDao fsanswerDao) {
		this.fsanswerDao = fsanswerDao;
	}

	// 方法
	public List<Answer> getListByQID(int qid) {
		System.out.println("qid=" + qid);
		return answerDao.getByQID(qid);
	}

	public List<Answer> getListByAsID(int fid) {
		return answerDao.getByFID(fid);
	}

	public Answer createAnswer(QAnswer a) {
		// 修改by tiaoyu：修复a的属性
		// @time 2016/6/25 20:17
		// 修改by tiaoyu： 修复bug
		// @time 2016/6/26 13:45

		try {

			Answer answer = new Answer();
			answer.setAstime(getCurrentDate());
			answer.setQID(questionDao.get(a.getQID()));
			answer.setAscontent(a.getAscontent());
			answer.setAsuser(userDao.get(a.getUID()));

			answerDao.save(answer);
			System.out.println(a);

			return answer;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public AAnswer createAAnswer(AAnswer a) {
		// 修改by tiaoyu：修复a的属性
		// @time 2016/6/25 20:18
		// 修改by tiaoyu：修改逻辑
		// @time 2016/6/26 10:38
		// 修改by tiaoyu：修复bug
		// @time 2016/6/26 13:40
		System.out.println(a);

		try {

			// 保存子答案
			Answer sanswer = new Answer();
			sanswer.setAscontent(a.getAscontent());
			sanswer.setAstime(getCurrentDate());
			sanswer.setAsuser(userDao.get(a.getUID()));
			answerDao.save(sanswer);

			Answer fanswer = answerDao.get(a.getFID());

			System.out.println(sanswer);
			System.out.println(fanswer);
			// 保存父子关系
			FSAnswer fsanswer = new FSAnswer();
			fsanswer.setSID(sanswer);
			fsanswer.setFID(fanswer);
			System.out.println("set is complete");
			fsanswerDao.save(fsanswer);
			return a;
		} catch (Exception e) {

			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 产生一个不带毫秒的时间
	 * 
	 * @author mabing
	 * @time 2016-6-25 15:54
	 * @return
	 */
	public Date getCurrentDate() {
		// 产生一个不带毫秒的时间,不然,SQL时间和JAVA时间格式不一致
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		Date tm = new Date();
		try {
			tm = sdf.parse(sdf.format(new Date()));
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		return tm;
	}
	
	public List<Answer> getListByAsKey(String key) {
		return answerDao.getByKey(key);
	}


}
