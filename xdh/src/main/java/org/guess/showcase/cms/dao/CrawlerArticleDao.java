package org.guess.showcase.cms.dao;

import java.util.List;

import org.guess.core.orm.EntityDao;
import org.guess.showcase.cms.model.Case;
import org.guess.showcase.cms.model.CrawlerArticle;

public interface CrawlerArticleDao  extends EntityDao<CrawlerArticle, Long>{
	public Integer getMaxArticleIdByUrl(String url);
}
