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
@Table(name = "t_click_appraise")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class ClickAppraise extends IdEntity {
	private Integer good;
	private Integer bad;
	private Integer notClear;
	private String articleTable;
	private Long articleId;
	public Integer getGood() {
		return good;
	}
	public void setGood(Integer good) {
		this.good = good;
	}
	public Integer getBad() {
		return bad;
	}
	public void setBad(Integer bad) {
		this.bad = bad;
	}
	public Integer getNotClear() {
		return notClear;
	}
	public void setNotClear(Integer notClear) {
		this.notClear = notClear;
	}
	public String getArticleTable() {
		return articleTable;
	}
	public void setArticleTable(String articleTable) {
		this.articleTable = articleTable;
	}
	public Long getArticleId() {
		return articleId;
	}
	public void setArticleId(Long articleId) {
		this.articleId = articleId;
	}
}