package com.four.qa.serviceImpl;

import java.util.List;

import com.four.qa.daoImpl.QuestionDao;
import com.four.qa.model.Question;
import com.four.qa.serviceInterface.IQuestionService;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
public class QuestionService implements IQuestionService {

	private QuestionDao questionDao;

	public QuestionDao getQuestionDao() {
		return questionDao;
	}

	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}

	public List<Question> getListByTPID(int tpid) {
		return questionDao.getByTPID(tpid);
	}

	public Question createQuestion(Question q) {
		return questionDao.createQuestion(q);
	}
	
	public List<Question> getListByQKey(String key) {
		return questionDao.getByKey(key);
	}


}
