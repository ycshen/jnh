package org.guess.showcase.cms.dao.impl;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cms.dao.MenuPriceDao;
import org.guess.showcase.cms.model.MenuPrice;
import org.springframework.stereotype.Repository;

@Repository
public class MenuPriceDaoImpl extends HibernateDao<MenuPrice,Long> implements MenuPriceDao{

}
