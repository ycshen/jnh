package org.guess.showcase.cms.dao.impl;

import java.util.List;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cms.dao.ClickAppraiseDao;
import org.guess.showcase.cms.model.ClickAppraise;
import org.springframework.stereotype.Repository;

@Repository
public class ClickAppriaseDaoImpl extends HibernateDao<ClickAppraise,Long> implements ClickAppraiseDao{

	@SuppressWarnings("unchecked")
	@Override
	public ClickAppraise findByTableAndArticleId(String tableName, Long articleId) {
		List<ClickAppraise> list = getSession()
				.createQuery(
						"from ClickAppraise where articleTable='" + tableName + "' and articleId=" + articleId + "")
				.list();
		
		if(list != null && list.size() > 0){
			return list.get(0);
		}
		
		return null;
	}

}
