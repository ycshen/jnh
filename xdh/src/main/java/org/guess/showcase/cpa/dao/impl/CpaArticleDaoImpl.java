package org.guess.showcase.cpa.dao.impl;

import java.util.List;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cpa.dao.CpaArticleDao;
import org.guess.showcase.cpa.model.CpaArticle;
import org.springframework.stereotype.Repository;

@Repository
public class CpaArticleDaoImpl extends HibernateDao<CpaArticle,Long> implements CpaArticleDao{

	@Override
	public CpaArticle getCpaArticleByType(Integer contentType,
			Integer articleType) {
		String sql = "from CpaArticle as a where a.contentType = " + contentType + " and articleType = " + articleType;
		
		List<CpaArticle> list = getSession()
				.createQuery(sql)
				.list();
		return list.get(0);
	}
}
