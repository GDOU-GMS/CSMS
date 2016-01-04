package org.blueshit.csms.base;

import java.util.List;


import org.blueshit.csms.entity.Page;
import org.blueshit.csms.utils.QueryHelper;


public interface DaoSupport<T>{
	
public abstract void save(T t);
	
	public abstract void delete(Long id);
	
	public abstract void update(T t);
	
	public abstract T findById(Long id);
	
	public abstract List<T> findByIds(Long[] ids);
	
	public abstract List<T> findAll();
	
	public abstract Page getPage(int pageNum,QueryHelper queryHelper);
	
}
