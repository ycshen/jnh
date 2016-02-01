package org.guess.showcase.cms.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.guess.core.orm.IdEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * 键值对
 * @author shenyuchuan
 *
 */
@Entity
@Table(name = "t_key_value_params")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class KeyValueParams extends IdEntity{
	private String keyParams;
	private String valueParams;
	private String remark;
	public String getKeyParams() {
		return keyParams;
	}
	public void setKeyParams(String keyParams) {
		this.keyParams = keyParams;
	}
	public String getValueParams() {
		return valueParams;
	}
	public void setValueParams(String valueParams) {
		this.valueParams = valueParams;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
