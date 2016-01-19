package org.guess.showcase.cms.dao.impl;

import java.util.List;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cms.dao.StyleDao;
import org.guess.showcase.cms.model.Style;
import org.springframework.stereotype.Repository;
@Repository
public class StyleDaoImpl  extends HibernateDao<Style,Long> implements StyleDao {

	@Override
	public Style getStyleByStausAndStyleType(String status, String styleType) {
		@SuppressWarnings("unchecked")
		List<Style> list = getSession()
		.createQuery(
				"from Style as a where status='" + status + "' and styleType='" + styleType + "'")
		.list();
		
		return list.get(0);
	}

}
