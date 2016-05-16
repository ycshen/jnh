package org.guess.showcase.cpa.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.guess.core.orm.IdEntity;
import org.guess.showcase.cms.model.pa.DataEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "t_cpa_user")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class CpaUser extends IdEntity{

	private String name;
	private String mobile;
	private String browserType;//浏览器类型  
    private String browserVersion;//浏览器版本  
    private String platformType;//平台类型  
    private String platformSeries;//平台系列  
    private String platformVersion;//平台版本  
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getBrowserType() {
		return browserType;
	}
	public void setBrowserType(String browserType) {
		this.browserType = browserType;
	}
	public String getBrowserVersion() {
		return browserVersion;
	}
	public void setBrowserVersion(String browserVersion) {
		this.browserVersion = browserVersion;
	}
	public String getPlatformType() {
		return platformType;
	}
	public void setPlatformType(String platformType) {
		this.platformType = platformType;
	}
	public String getPlatformSeries() {
		return platformSeries;
	}
	public void setPlatformSeries(String platformSeries) {
		this.platformSeries = platformSeries;
	}
	public String getPlatformVersion() {
		return platformVersion;
	}
	public void setPlatformVersion(String platformVersion) {
		this.platformVersion = platformVersion;
	}
}
