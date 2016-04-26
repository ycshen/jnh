package org.guess.showcase.cms.service;

import org.guess.core.service.BaseService;
import org.guess.showcase.cms.model.Article;
import org.guess.showcase.cms.model.CrawlerArticle;

public interface CrawlerArticleService  extends BaseService<CrawlerArticle, Long>{
	public Integer getMaxArticleIdByUrl(String url);
	public CrawlerArticle getCrawlerArticleById(Long id);
	public void addHits(CrawlerArticle crawlerArticle);
}
