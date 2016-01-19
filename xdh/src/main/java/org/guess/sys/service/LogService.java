package org.guess.sys.service;

import org.guess.core.service.BaseService;
import org.guess.sys.model.Log;

public interface LogService extends BaseService<Log, Long>{
	/**
	 * 添加交互日志
	 */
	void addAccLog(String title, String content, String ip, String userName);
	/**
	 * 添加异常日志
	 */
	void addExceptionLog(String title, String content, String ip, String userName);
	/**
	 * 添加监听日志
	 */
	void addListenerLog(String title, String content, String ip, String userName);
	/**
	 * 添加操作日志
	 */
	void addOperLog(String title, String content, String ip, String userName);
	
	/**
	 * 添加站点监听日志
	 * @param domain
	 * @param siteName
	 * @param ip
	 * @param remark
	 */
	void addSiteListenerLog(String domain, String siteName, String ip, String remark);
}
