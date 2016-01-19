package org.guess.sys.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.guess.core.orm.IdEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "SYS_LOG")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Log extends IdEntity{

	/**
	 * 操作时间
	 */
	private Date operTime = new Date();
	
	private String title;
	/**
	 * 操作名称
	 */
	private String operName;
	
	/**
	 * 操作结果 0：未处理 1 成功 2 失败 
	 */
	private int result;
	
	/**
	 * 详细内容
	 */
	private String content;
	
	/**
	 * ip地址
	 */
	private String ip;
	
	private String userName;
	

	public Date getOperTime() {
		return operTime;
	}

	public void setOperTime(Date operTime) {
		this.operTime = operTime;
	}

	public String getOperName() {
		return operName;
	}

	public void setOperName(String operName) {
		this.operName = operName;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}


	public Log() {
		super();
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
}
