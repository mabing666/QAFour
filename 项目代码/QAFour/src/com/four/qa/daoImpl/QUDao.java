package com.four.qa.daoImpl;

import com.four.qa.daoBase.BaseDao;
import com.four.qa.model.QU;

/**
 * @date 2016-6-26
 * @author mabing
 *
 */
public class QUDao extends BaseDao<QU, Integer>{
	
	public QUDao() {
		super(QU.class);
	}
	
	
//	public List<QU> getByHotTitleKey(String key){
//		return super.findBy(
//				Restrictions.sqlRestriction("qid in (select id from question where qstitle like '%"+key+"%') group by qid order by count(*) desc"));
//	}
	

}
