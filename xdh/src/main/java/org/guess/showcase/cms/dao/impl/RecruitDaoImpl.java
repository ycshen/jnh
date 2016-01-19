package org.guess.showcase.cms.dao.impl;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cms.dao.RecruitDao;
import org.guess.showcase.cms.model.Recruit;
import org.springframework.stereotype.Repository;
@Repository
@SuppressWarnings("unchecked")
public class RecruitDaoImpl  extends HibernateDao<Recruit,Long> implements RecruitDao {

}
