package org.guess.showcase.cpa.service.impl;

import org.guess.core.service.BaseServiceImpl;
import org.guess.showcase.cpa.dao.CpaArticleDao;
import org.guess.showcase.cpa.model.CpaArticle;
import org.guess.showcase.cpa.service.CpaArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CpaArticleServiceImpl  extends BaseServiceImpl<CpaArticle, Long> implements CpaArticleService{

	@Autowired
	private CpaArticleDao cpaArticleDao;

	@Override
	public CpaArticle getCpaArticleByType(Integer contentType,
			Integer articleType) {
		return cpaArticleDao.getCpaArticleByType(contentType, articleType);
	}
	



}
