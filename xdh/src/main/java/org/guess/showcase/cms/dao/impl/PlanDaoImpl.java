package org.guess.showcase.cms.dao.impl;

import java.util.List;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cms.dao.PlanDao;
import org.guess.showcase.cms.model.Plan;
import org.springframework.stereotype.Repository;

@Repository
public class PlanDaoImpl extends HibernateDao<Plan,Long> implements PlanDao{

	@SuppressWarnings("unchecked")
	@Override
	public Plan findByManOrWomen(String manOrWomen) {
		List<Plan> list = getSession()
				.createQuery(
						"from Plan where man = '" + manOrWomen + "' or women = '" + manOrWomen + "'")
				.list();
		if(list != null && list.size() > 0){
			return list.get(0);
		}
		
		return null;
	}

}
