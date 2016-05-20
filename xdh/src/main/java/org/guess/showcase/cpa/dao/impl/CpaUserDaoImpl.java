package org.guess.showcase.cpa.dao.impl;

import java.util.List;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cpa.dao.CpaArticleDao;
import org.guess.showcase.cpa.dao.CpaUserDao;
import org.guess.showcase.cpa.model.CpaArticle;
import org.guess.showcase.cpa.model.CpaUser;
import org.springframework.stereotype.Repository;

@Repository
public class CpaUserDaoImpl extends HibernateDao<CpaUser,Long> implements CpaUserDao{

	@Override
	public CpaUser getUserByPhone(String phone) {
		String sql = "from CpaUser as a where a.mobile='" + phone + "'";
		
		List<CpaUser> list = getSession() .createQuery(sql).list();
		if(list != null && list.size() > 0){
			return list.get(0);
		}
		
		return null;
	}

	@Override
	public List<CpaUser> getBargainRankingList() {
		String sql = "from CpaUser ORDER BY newPrice asc limit 10";
		
		List<CpaUser> list = getSession() .createQuery(sql).list();
		
		return list;
	}

}
