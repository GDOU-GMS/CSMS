package org.blueshit.csms.base;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.Resource;


import org.blueshit.csms.configuration.Configuration;
import org.blueshit.csms.entity.Page;
import org.blueshit.csms.utils.QueryHelper;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class  DaoSupportImpl<T> implements DaoSupport<T>{
	@Resource
	private SessionFactory sessionFactory;

	protected Class<T> clazz = null;
	
	public DaoSupportImpl(){
		//通过反射获取T的真实类型.
		ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
		this.clazz = (Class<T>) pt.getActualTypeArguments()[0];
	}
	
	/**
	 * 获取session
	 * @return
	 */
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	/**
	 * 保存.
	 */
	public void save(T t) {
		getSession().save(t);
	}

	/**
	 * 删除
	 */
	public void delete(Long id) {
		if(id ==null){
			return;
		}
		getSession().delete(this.findById(id));
	}

	/**
	 * 更新.
	 */
	public void update(T t) {
		getSession().update(t);
	}

	/**
	 * 根据id查找
	 */
	public T findById(Long id) {
		if(id==null){
			return null;
		}
		return (T) getSession().get(clazz, id);
	}

	/**
	 * 根据多个id查找
	 */
	public List<T> findByIds(Long[] ids) {
		if(ids.length == 0||ids ==null){
			return null;
		}
		return getSession()
				.createQuery("from " + clazz.getSimpleName() + " where id IN(:ids)")
				.setParameter(0, ids)
				.list();
	}

	/**
	 * 查询所有.
	 */
	public List<T> findAll() {
		return getSession().createQuery("from "+clazz.getSimpleName()).list();
	}

	/**
	 * 分页查询
	 */
	public Page getPage(int pageNum, QueryHelper queryHelper) {
		

		//获取pageSize信息
		int pageSize = Configuration.getPageSize();
		
		//获取数据列表
		Query query  = getSession().createQuery(queryHelper.getQueryListHql());
		List args = queryHelper.getParameters();
		//设置参数
		if(args != null || args.size()>0){
			for(int i=0;i<args.size();i++){
				query.setParameter(i, args.get(i));
			}
		}
		query.setFirstResult((pageNum -1)*pageSize);
		query.setMaxResults(pageSize);
		List list = query.list();
		
		//获得总记录数
		query = getSession().createQuery(queryHelper.getQueryCountHql());
		//设置参数
		if(args != null || args.size()>0){
			for(int i=0;i<args.size();i++){
				query.setParameter(i, args.get(i));
			}
		}
		
		Long count = (Long)query.uniqueResult();
		
		Page page = new Page(pageNum, pageSize, count.intValue());
		
		page.setList(list);
		
		
		
		return page;
		
		
	}

	
}
