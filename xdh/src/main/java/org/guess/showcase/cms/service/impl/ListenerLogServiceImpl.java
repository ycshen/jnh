package org.guess.showcase.cms.service.impl;

import org.guess.core.service.BaseServiceImpl;
import org.guess.showcase.cms.dao.ListenerLogDao;
import org.guess.showcase.cms.model.ListenerLog;
import org.guess.showcase.cms.service.ListenerLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ListenerLogServiceImpl  extends BaseServiceImpl<ListenerLog, Long> implements ListenerLogService{

	@Autowired
	private ListenerLogDao dao;
	@Override
	public int getCountForToday() {
		return dao.getCountForToday();
	}
	
	@Override
	public int getCountForYestoday() {
		return dao.getCountForYestoday();
	}
	
}
