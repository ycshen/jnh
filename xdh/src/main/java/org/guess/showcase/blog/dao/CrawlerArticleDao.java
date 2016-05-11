package org.guess.showcase.blog.dao;

import java.util.List;

import org.guess.core.orm.EntityDao;
import org.guess.showcase.blog.model.CrawlerArticle;
import org.guess.showcase.cms.model.Case;

public interface CrawlerArticleDao  extends EntityDao<CrawlerArticle, Long>{
	public Integer getMaxArticleIdByUrl(String url);
}
