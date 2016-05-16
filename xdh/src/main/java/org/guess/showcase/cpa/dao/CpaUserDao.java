package org.guess.showcase.cpa.dao;

import org.guess.core.orm.EntityDao;
import org.guess.showcase.cpa.model.CpaUser;

public interface CpaUserDao  extends EntityDao<CpaUser, Long>{
	CpaUser getUserByPhone(String phone);
}
