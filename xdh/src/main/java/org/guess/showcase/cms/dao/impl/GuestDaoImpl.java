package org.guess.showcase.cms.dao.impl;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cms.dao.GuestDao;
import org.guess.showcase.cms.model.Guest;
import org.springframework.stereotype.Repository;

@Repository
public class GuestDaoImpl extends HibernateDao<Guest,Long> implements GuestDao{

}
