package com.four.qa.daoBase;

import java.io.Serializable;
import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

/**
 * 提供hibernate dao的所有操作
 */
/**
 * @author Tiaoyu
 * @date 2016/6/17
 * @param <T>
 * @param <PK>
 */
@Transactional(readOnly = false, propagation = Propagation.REQUIRES_NEW)
public class BaseDao<T, PK extends Serializable> extends HibernateDaoSupport implements IBaseDao<T, PK> {

	// DAO所管理的Entity类型.
	protected Class<T> entityClass;

	protected Class<T> getEntityClass() {
		return entityClass;
	}
	
	/**
	 * 让spring提供构造函数注入
	 */
	public BaseDao(Class<T> type) {
		this.entityClass = type;
	}

	public BaseDao() {
	}

	public T get(PK id) {
		return getHibernateTemplate().load(getEntityClass(), id);
	}

	public List<T> getAll() {
		return (List<T>) (getHibernateTemplate().loadAll(getEntityClass()));
	}

	@SuppressWarnings("unchecked")
	public List<T> getAll(String orderBy, boolean isAsc) {
		Assert.hasText(orderBy);
		if (isAsc)
			return (List<T>) getHibernateTemplate()
					.findByCriteria(DetachedCriteria.forClass(getEntityClass()).addOrder(Order.asc(orderBy)));
		else
			return (List<T>) getHibernateTemplate()
					.findByCriteria(DetachedCriteria.forClass(getEntityClass()).addOrder(Order.desc(orderBy)));
	}
	
	/**
	 * 模糊查找
	 * 
	 * @author mabing
	 * @time 2016-6-26 14:39
	 * @param queryString
	 * @param value
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<T> find(String queryString,Object value)
	{
		return (List<T>) getHibernateTemplate().find(queryString, value);
	}


	@SuppressWarnings("unchecked")
	public List<T> findBy(String orderBy, boolean isAsc, Criterion... criterions) {
		DetachedCriteria criteria = DetachedCriteria.forClass(getEntityClass());
		for (Criterion c : criterions) {
			criteria.add(c);
		}
		if (isAsc)
			criteria.addOrder(Order.asc(orderBy));
		else
			criteria.addOrder(Order.desc(orderBy));

		return (List<T>) getHibernateTemplate().findByCriteria(criteria);

	}

	public List<T> findBy(String propertyName, Object value, String orderBy, boolean isAsc) {
		Assert.hasText(propertyName);
		Assert.hasText(orderBy);
		return findBy(orderBy, isAsc, Restrictions.eq(propertyName, value));
	}

	public List<T> findLike(String propertyName, Object value, String orderBy, boolean isAsc) {
		Assert.hasText(propertyName);
		Assert.hasText(orderBy);
		return findBy(orderBy, isAsc, Restrictions.like(propertyName, value));

	}

	public void save(T entity) {

		getHibernateTemplate().saveOrUpdate(entity);
	}

	public void update(T entity) {
		getHibernateTemplate().update(entity);
	}

	public void remove(T entity) {
		getHibernateTemplate().delete(entity);
	}

	public void removeById(PK id) {
		remove(get(id));
	}

	public void evit(T entity) {
		getHibernateTemplate().evict(entity);
	}

	public void flush() {
		getHibernateTemplate().flush();
	}

	public void clear() {
		getHibernateTemplate().clear();
	}

}
