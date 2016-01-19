package org.guess.showcase.cms.dao.impl;

import java.util.List;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cms.dao.recomendItemsDao;
import org.guess.showcase.cms.model.RecomendItems;
import org.guess.showcase.cms.model.ServiceItems;
import org.springframework.stereotype.Repository;

@Repository
public class RecomendItemsDaoImpl extends HibernateDao<RecomendItems,Long> implements recomendItemsDao{

	@Override
	public RecomendItems getRecomendItemsByRecomendId(int recomendId) {
		List<RecomendItems> list = getSession()
				.createQuery(
						"from RecomendItems as r where r.recomendId=" + recomendId)
				.list();
		RecomendItems items = null;
		if(list != null && list.size() > 0){
			items = list.get(0);
		}
		
		return items;
	}
	
}
