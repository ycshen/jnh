package org.guess.showcase.cms.dao;

import org.guess.core.orm.EntityDao;
import org.guess.showcase.cms.model.ListenerLog;

public interface ListenerLogDao  extends EntityDao<ListenerLog, Long>{
	/**
	 * 今日访问
	 * @return
	 */
	int getCountForToday();
	
	/**
	 * 昨日访问
	 * @return
	 */
	int getCountForYestoday();
}
