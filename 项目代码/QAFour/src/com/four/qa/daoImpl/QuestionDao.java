package com.four.qa.daoImpl;

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
	
	

}
