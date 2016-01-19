package org.guess.sys.service.impl;

import java.util.Date;

import org.guess.core.service.BaseServiceImpl;
import org.guess.showcase.cms.dao.ListenerLogDao;
import org.guess.showcase.cms.model.ListenerLog;
import org.guess.showcase.cms.model.SinaIpInfo;
import org.guess.showcase.cms.util.IpUtil;
import org.guess.sys.dao.LogDao;
import org.guess.sys.model.Log;
import org.guess.sys.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogServiceImpl extends BaseServiceImpl<Log, Long> implements LogService {

	@Autowired
	private LogDao logDao;
	@Autowired
	private ListenerLogDao listenerLogDao;
	@Override
	public void addAccLog(String title, String content, String ip, String userName) {
		Log log = new Log();
		log.setOperName("交互日志");
		log.setOperTime(new Date());
		log.setContent(content);
		log.setTitle(title);
		log.setUserName(userName);
		log.setIp(ip);
		logDao.save(log);
	}

	@Override
	public void addExceptionLog(String title, String content, String ip, String userName) {
		Log log = new Log();
		log.setOperName("异常日志");
		log.setOperTime(new Date());
		log.setContent(content);
		log.setTitle(title);
		log.setUserName(userName);
		log.setIp(ip);
		
		logDao.save(log);
	}

	@Override
	public void addListenerLog(String title, String content, String ip, String userName) {
		Log log = new Log();
		log.setOperName("监听日志");
		log.setOperTime(new Date());
		log.setContent(content);
		log.setTitle(title);
		log.setUserName(userName);
		log.setIp(ip);
		logDao.save(log);
	}

	@Override
	public void addOperLog(String title, String content, String ip,
			String userName) {
		Log log = new Log();
		log.setOperName("操作日志");
		log.setOperTime(new Date());
		log.setContent(content);
		log.setTitle(title);
		log.setUserName(userName);
		log.setIp(ip);
		logDao.save(log);
	}

	@Override
	public void addSiteListenerLog(String domain, String siteName, String ip,
			String remark) {
		ListenerLog log = new ListenerLog();
		log.setDomain(domain);
		log.setAccessTime(new Date());
		log.setSiteName(siteName);
		log.setIp(ip);
		log.setRemark(remark);
		SinaIpInfo sinaIpInfo = IpUtil.getSinaIpInfo(ip);
		log.setCountry(sinaIpInfo.getCountry());
		log.setCity(sinaIpInfo.getCity());
		log.setProvince(sinaIpInfo.getProvince());
		listenerLogDao.save(log);
	}

}