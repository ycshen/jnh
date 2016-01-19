package org.guess.showcase.cms.dao;

import org.guess.core.orm.EntityDao;
import org.guess.showcase.cms.model.Plan;

public interface PlanDao  extends EntityDao<Plan, Long>{
	Plan findByManOrWomen(String manOrWomen);
}
