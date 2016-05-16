package org.guess.showcase.cpa.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.guess.showcase.cms.model.pa.DataEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "t_cpa_article")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class CpaArticle extends DataEntity{

	private String content;
	private Integer contentType;
	private Integer articleType;
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getContentType() {
		return contentType;
	}
	public void setContentType(Integer contentType) {
		this.contentType = contentType;
	}
	public Integer getArticleType() {
		return articleType;
	}
	public void setArticleType(Integer articleType) {
		this.articleType = articleType;
	}
}
