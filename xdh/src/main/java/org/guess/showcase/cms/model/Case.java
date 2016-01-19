package org.guess.showcase.cms.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.guess.core.orm.IdEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * 婚礼方案
 * @author syc
 * @version 2014-06-04
 */
@Entity
@Table(name = "t_case")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Case extends IdEntity {
	private int menuPriceId = 0; //对应方案id
	private String caseType; //类似(通道区)
	private String content; //方案分类内容
	private int sort = 0; //排序
	public int getMenuPriceId() {
		return menuPriceId;
	}
	public void setMenuPriceId(int menuPriceId) {
		this.menuPriceId = menuPriceId;
	}
	public String getCaseType() {
		return caseType;
	}
	public void setCaseType(String caseType) {
		this.caseType = caseType;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	@Override
	public String toString() {
		return "Case [menuPriceId=" + menuPriceId + ", caseType=" + caseType
				+ ", content=" + content + ", sort=" + sort + "]";
	}
	
	
}