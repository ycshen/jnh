package org.guess.showcase.cms.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.guess.core.orm.IdEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * 服务项目
 * @author syc
 * @version 2014-06-04
 */
@Entity
@Table(name = "t_service_items")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class ServiceItems extends IdEntity {
	private String serviceItemsName; //服务项目名称

	private int serviceItemsParentId; //服务项目父id
	private String serviceItemsType; //服务项目类型 
	public String getServiceItemsName() {
		return serviceItemsName;
	}

	public void setServiceItemsName(String serviceItemsName) {
		this.serviceItemsName = serviceItemsName;
	}

	public int getServiceItemsParentId() {
		return serviceItemsParentId;
	}

	public void setServiceItemsParentId(int serviceItemsParentId) {
		this.serviceItemsParentId = serviceItemsParentId;
	}

	public String getServiceItemsType() {
		return serviceItemsType;
	}

	public void setServiceItemsType(String serviceItemsType) {
		this.serviceItemsType = serviceItemsType;
	}
}