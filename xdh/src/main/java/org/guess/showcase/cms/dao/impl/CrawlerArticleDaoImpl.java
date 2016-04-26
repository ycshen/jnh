package org.guess.showcase.cms.dao.impl;

import java.util.List;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cms.dao.CaseDao;
import org.guess.showcase.cms.dao.CrawlerArticleDao;
import org.guess.showcase.cms.model.Case;
import org.guess.showcase.cms.model.CrawlerArticle;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
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
