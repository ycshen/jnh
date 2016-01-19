package org.guess.showcase.cms.service;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.service.BaseService;
import org.guess.showcase.cms.model.RecomendItems;

public interface RecomendItemsService  extends BaseService<RecomendItems, Long> {
	RecomendItems getRecomendItemsByRecomendId(int recomendId);
	int changeStatus(Long id);
}
