package org.guess.showcase.cms.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.guess.core.orm.IdEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 监控日志
 * @author syc
 * @version 2015-11-26
 */
@Entity
@Table(name = "t_listener_log")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class ListenerLog extends IdEntity {
	//网站域名
	private String domain;
	//网站名称
	private String siteName;
	//访问ip
	private String ip;
	//访问时间
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:MM:ss")
	@Temporal(TemporalType.TIMESTAMP)
	private Date accessTime;
	//说明
	private String remark;
	//省份
	private String province;
	//城市
	private String city;
	//国家
	private String country;
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public String getSiteName() {
		return siteName;
	}
	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Date getAccessTime() {
		return accessTime;
	}
	public void setAccessTime(Date accessTime) {
		this.accessTime = accessTime;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
}