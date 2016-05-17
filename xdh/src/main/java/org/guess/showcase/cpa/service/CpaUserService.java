package org.guess.showcase.cpa.service;

import java.util.List;

import org.guess.core.service.BaseService;
import org.guess.showcase.cpa.model.CpaUser;

public interface CpaUserService  extends BaseService<CpaUser, Long>{
	CpaUser getUserByPhone(String phone);
	List<CpaUser> getBargainRankingList();
}
