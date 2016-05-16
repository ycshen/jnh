package org.guess.showcase.cpa.dao;

import org.guess.core.orm.EntityDao;
import org.guess.showcase.cpa.model.CpaArticle;

public interface CpaArticleDao  extends EntityDao<CpaArticle, Long>{
	CpaArticle getCpaArticleByType(Integer contentType, Integer articleType);
}
