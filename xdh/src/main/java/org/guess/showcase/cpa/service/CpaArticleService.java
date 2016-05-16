package org.guess.showcase.cpa.service;

import org.guess.core.service.BaseService;
import org.guess.showcase.cpa.model.CpaArticle;

public interface CpaArticleService  extends BaseService<CpaArticle, Long>{
	CpaArticle getCpaArticleByType(Integer contentType, Integer articleType);
}
