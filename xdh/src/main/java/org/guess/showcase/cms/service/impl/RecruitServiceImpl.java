package org.guess.showcase.cms.service.impl;

import org.guess.core.service.BaseServiceImpl;
import org.guess.showcase.cms.dao.RecruitDao;
import org.guess.showcase.cms.model.Recruit;
import org.guess.showcase.cms.service.RecruitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecruitServiceImpl  extends BaseServiceImpl<Recruit, Long> implements RecruitService{

	@Autowired
	public RecruitDao rDao;
	@Override
	public int changeStatus(Long id) {
		Recruit rec = rDao.get(id);

		if("0".equals(rec.getStatus())){
			rec.setStatus("1");
		}else{
			rec.setStatus("0");
		}

		rDao.save(rec);
		
		return Integer.parseInt(rec.getStatus());
	}

}
