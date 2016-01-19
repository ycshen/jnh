package org.guess.showcase.cms.dao.impl;

import java.util.List;

import org.guess.core.orm.PageRequest;
import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cms.dao.LinkDao;
import org.guess.showcase.cms.model.Link;
import org.springframework.stereotype.Repository;

/**
 * 链接daoImpl
 * @author rguess
 * @version 2014-05-07
 */
@Repository
public class LinkDaoImpl extends HibernateDao<Link,Long> implements LinkDao {

	@Override
	public List<Link> findAll() {
		return super.findPage(
				new PageRequest(1, 999999),
				"from Link").getResult();
	}

}
