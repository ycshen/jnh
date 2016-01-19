package org.guess.showcase.cms.service.impl;

import org.guess.core.service.BaseServiceImpl;
import org.guess.showcase.cms.dao.GrDao;
import org.guess.showcase.cms.model.Gr;
import org.guess.showcase.cms.service.GrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GrServiceImpl  extends BaseServiceImpl<Gr, Long> implements GrService{

	@Autowired
	public GrDao rDao;
	@Override
	public int changeStatus(Long id) {
		Gr gr = rDao.get(id);

		if("0".equals(gr.getStatus())){
			gr.setStatus("1");
		}else{
			gr.setStatus("0");
		}

		rDao.save(gr);
		
		return Integer.parseInt(gr.getStatus());
	}

}
