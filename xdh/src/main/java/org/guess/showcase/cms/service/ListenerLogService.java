package org.guess.showcase.cms.service;

import org.guess.core.service.BaseService;
import org.guess.showcase.cms.model.ListenerLog;

public interface ListenerLogService  extends BaseService<ListenerLog, Long>{
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
