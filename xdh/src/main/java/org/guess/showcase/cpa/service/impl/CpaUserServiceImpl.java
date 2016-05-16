package org.guess.showcase.cpa.service.impl;

import org.guess.core.service.BaseServiceImpl;
import org.guess.showcase.cpa.dao.CpaUserDao;
import org.guess.showcase.cpa.model.CpaUser;
import org.guess.showcase.cpa.service.CpaUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CpaUserServiceImpl  extends BaseServiceImpl<CpaUser, Long> implements CpaUserService{

	@Autowired
	private CpaUserDao cpaUserDao;

	@Override
	public CpaUser getUserByPhone(String phone) {
		
		return cpaUserDao.getUserByPhone(phone);
	}

	
	



}
