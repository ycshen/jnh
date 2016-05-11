package org.guess.showcase.blog.service;

import org.guess.core.service.BaseService;
import org.guess.showcase.blog.model.CrawlerArticle;

public interface CrawlerArticleService  extends BaseService<CrawlerArticle, Long>{
	public Integer getMaxArticleIdByUrl(String url);
	public CrawlerArticle getCrawlerArticleById(Long id);
	public void addHits(CrawlerArticle crawlerArticle);
}
