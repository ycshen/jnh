package org.guess.showcase.cms.dao.impl;

import java.util.List;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cms.dao.ServiceItemsDao;
import org.guess.showcase.cms.model.ServiceItems;
import org.springframework.stereotype.Repository;

@Repository
public class ServiceItemsDaoImpl extends HibernateDao<ServiceItems,Long> implements ServiceItemsDao{
	
	@Override
	public List<ServiceItems> findAllSerivceItemsByParentId(int serviceItemsParentId) {
		@SuppressWarnings("unchecked")
		List<ServiceItems> list = getSession()
				.createQuery(
						"from ServiceItems as s where s.serviceItemsParentId=" + serviceItemsParentId)
				.list();
				
		return list;
	}
}
