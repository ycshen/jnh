package org.guess.showcase.cms.dao.impl;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cms.dao.KeyValueParamsDao;
import org.guess.showcase.cms.model.KeyValueParams;
import org.springframework.stereotype.Repository;

@Repository
public class KeyValueParamsDaoImpl extends HibernateDao<KeyValueParams,Long> implements KeyValueParamsDao{

}
