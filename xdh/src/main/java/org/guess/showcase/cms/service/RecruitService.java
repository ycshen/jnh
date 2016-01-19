package org.guess.showcase.cms.service;

import org.guess.core.service.BaseService;
import org.guess.showcase.cms.model.Recruit;

public interface RecruitService  extends BaseService<Recruit, Long>{
	int changeStatus(Long id);
}
