package org.guess.showcase.cms.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.guess.core.orm.IdEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * 客人
 * @author shenyuchuan
 *
 */
@Entity
@Table(name = "t_guest")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Guest extends IdEntity{
	private String name;
	private String guestType;
	private Integer isCome;
	private Integer isComePerson; //是否带人
	private String remark;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGuestType() {
		return guestType;
	}
	public void setGuestType(String guestType) {
		this.guestType = guestType;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Integer getIsCome() {
		return isCome;
	}
	public void setIsCome(Integer isCome) {
		this.isCome = isCome;
	}
	public Integer getIsComePerson() {
		return isComePerson;
	}
	public void setIsComePerson(Integer isComePerson) {
		this.isComePerson = isComePerson;
	}
}
