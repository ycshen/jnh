package org.guess.showcase.cms.service.impl;

import org.guess.core.service.BaseServiceImpl;
import org.guess.showcase.cms.dao.PlanDao;
import org.guess.showcase.cms.model.Plan;
import org.guess.showcase.cms.service.PlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlanServiceImpl  extends BaseServiceImpl<Plan, Long> implements PlanService{

	@Autowired
	public PlanDao planDao;

	@Override
	public void save(Plan o) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Plan o) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Plan o) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Plan findByManOrWomen(String manOrWomen) {
		return planDao.findByManOrWomen(manOrWomen);
	}

}
