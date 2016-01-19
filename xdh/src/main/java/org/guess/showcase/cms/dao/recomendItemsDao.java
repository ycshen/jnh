package org.guess.showcase.cms.dao;

import org.guess.core.orm.EntityDao;
import org.guess.showcase.cms.model.RecomendItems;

public interface recomendItemsDao  extends EntityDao<RecomendItems, Long>{
	RecomendItems getRecomendItemsByRecomendId(int recomendId);
}
