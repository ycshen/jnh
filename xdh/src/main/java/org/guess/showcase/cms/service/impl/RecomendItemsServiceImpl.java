package org.guess.showcase.cms.service.impl;

import org.guess.core.service.BaseServiceImpl;
import org.guess.showcase.cms.dao.recomendItemsDao;
import org.guess.showcase.cms.model.RecomendItems;
import org.guess.showcase.cms.service.RecomendItemsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecomendItemsServiceImpl  extends BaseServiceImpl<RecomendItems, Long> implements RecomendItemsService{

	@Autowired
	private recomendItemsDao recomendItemsDao;

	@Override
	public RecomendItems getRecomendItemsByRecomendId(int recomendId) {
		// TODO Auto-generated method stub
		return recomendItemsDao.getRecomendItemsByRecomendId(recomendId);
	}

	@Override
	public int changeStatus(Long id) {
		RecomendItems recomendItems = recomendItemsDao.get(id);
		
		if(recomendItems.getStatus() == 0){
			recomendItems.setStatus(1);
		}else{
			recomendItems.setStatus(0);
		}
		recomendItemsDao.save(recomendItems);
		
		return recomendItems.getStatus();
	}
	


}
