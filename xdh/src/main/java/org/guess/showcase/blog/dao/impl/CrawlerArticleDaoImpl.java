package org.guess.showcase.blog.dao.impl;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.blog.dao.CrawlerArticleDao;
import org.guess.showcase.blog.model.CrawlerArticle;
import org.hibernate.SQLQuery;
import org.springframework.stereotype.Repository;

@Repository
public class CrawlerArticleDaoImpl extends HibernateDao<CrawlerArticle,Long> implements CrawlerArticleDao{

	
	@Override
	public Integer getMaxArticleIdByUrl(String url) {
		String sql = "select max(articleMaxId) FROM t_crawler_article where url='" + url + "'";

		SQLQuery query = getSession().createSQLQuery(sql);
		Object maxId = query.uniqueResult();
		if(maxId == null){
			maxId = 0;
		}
		
		return (Integer)maxId;
	}

	

}
