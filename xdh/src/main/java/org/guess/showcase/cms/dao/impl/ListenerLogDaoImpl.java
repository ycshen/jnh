package org.guess.showcase.cms.dao.impl;

import java.math.BigInteger;
import java.util.Date;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.core.utils.DateUtil;
import org.guess.showcase.cms.dao.ListenerLogDao;
import org.guess.showcase.cms.model.ListenerLog;
import org.springframework.stereotype.Repository;

@Repository
public class ListenerLogDaoImpl extends HibernateDao<ListenerLog,Long> implements ListenerLogDao{

	@Override
	public int getCountForToday() {		 
		String sql = "select count(*) from t_listener_log where accessTime >= '" + DateUtil.getCurrenDate() + " 00:00:00' and accessTime <= '" + DateUtil.getCurrenDate() + " 23:59:59'";
		BigInteger count = (BigInteger) getSession().createSQLQuery(sql).uniqueResult();
		return count.intValue();
	}

	@Override
	public int getCountForYestoday() {
		String yestoday = DateUtil.format(DateUtil.addDay(new Date(), -1));
		String sql = "select count(*) from t_listener_log where accessTime >= '" + yestoday + " 00:00:00' and accessTime <= '" + yestoday + " 23:59:59'";
		BigInteger count = (BigInteger) getSession().createSQLQuery(sql).uniqueResult();
		return count.intValue();
	}

}
