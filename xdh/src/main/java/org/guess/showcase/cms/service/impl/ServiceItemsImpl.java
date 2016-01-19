package org.guess.showcase.cms.service.impl;

import java.util.List;

import org.guess.core.service.BaseServiceImpl;
import org.guess.showcase.cms.dao.ServiceItemsDao;
import org.guess.showcase.cms.model.ServiceItems;
import org.guess.showcase.cms.service.ServiceItemsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServiceItemsImpl  extends BaseServiceImpl<ServiceItems, Long> implements ServiceItemsService{

	@Autowired
	private ServiceItemsDao serviceItemsDao;
	
	/**
	 * 获取所有服务项目
	 */
	@Override
	public List<ServiceItems> findAllSerivceItemsByParentId(int serviceItemsParentId) {
		return serviceItemsDao.findAllSerivceItemsByParentId(serviceItemsParentId);
	}

}
