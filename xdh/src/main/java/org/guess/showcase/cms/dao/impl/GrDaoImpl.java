package org.guess.showcase.cms.dao.impl;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cms.dao.GrDao;
import org.guess.showcase.cms.model.Gr;
import org.springframework.stereotype.Repository;
@Repository
@SuppressWarnings("unchecked")
public class GrDaoImpl  extends HibernateDao<Gr,Long> implements GrDao {

}
