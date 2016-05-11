package org.guess.showcase.blog.service.impl;

import org.guess.core.service.BaseServiceImpl;
import org.guess.showcase.blog.dao.CrawlerArticleDao;
import org.guess.showcase.blog.model.CrawlerArticle;
import org.guess.showcase.blog.service.CrawlerArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CrawlerArticleServiceImpl  extends BaseServiceImpl<CrawlerArticle, Long> implements CrawlerArticleService{

	@Autowired
	private CrawlerArticleDao crawlerArticleDao;
	@Override
	public Integer getMaxArticleIdByUrl(String url) {
		return crawlerArticleDao.getMaxArticleIdByUrl(url);
	}
	
	@Override
	public CrawlerArticle getCrawlerArticleById(Long id) {
		return crawlerArticleDao.get(id);
	}

	@Override
	public void addHits(CrawlerArticle crawlerArticle) {
		crawlerArticle.setHits(crawlerArticle.getHits()+1);
		crawlerArticleDao.save(crawlerArticle);
	}



}
