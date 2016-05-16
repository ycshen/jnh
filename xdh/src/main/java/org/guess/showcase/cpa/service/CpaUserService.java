package org.guess.showcase.cpa.service;

import org.guess.core.service.BaseService;
import org.guess.showcase.cpa.model.CpaArticle;
import org.guess.showcase.cpa.model.CpaUser;

public interface CpaUserService  extends BaseService<CpaUser, Long>{
	CpaUser getUserByPhone(String phone);
}
