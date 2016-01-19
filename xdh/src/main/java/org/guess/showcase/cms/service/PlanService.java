package org.guess.showcase.cms.service;

import org.guess.core.service.BaseService;
import org.guess.showcase.cms.model.Plan;

public interface PlanService  extends BaseService<Plan, Long>{
	Plan findByManOrWomen(String manOrWomen);
}
