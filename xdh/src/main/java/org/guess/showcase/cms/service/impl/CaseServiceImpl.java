package org.guess.showcase.cms.service.impl;

import java.util.List;

import org.guess.core.service.BaseServiceImpl;
import org.guess.showcase.cms.dao.CaseDao;
import org.guess.showcase.cms.model.Case;
import org.guess.showcase.cms.service.CaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CaseServiceImpl  extends BaseServiceImpl<Case, Long> implements CaseService{

	@Autowired
	public CaseDao caseDao;

	@Override
	public List<Case> findAllCaseByMenuPriceId(int menuPriceId) {
		// TODO Auto-generated method stub
		return caseDao.findAllCaseByMenuPriceId(menuPriceId);
	}

	@Override
	public Case findCaseByCaseType(String caseType, int menuPriceId) {
		// TODO Auto-generated method stub
		return caseDao.findCaseByCaseType(caseType, menuPriceId);
	}

}
