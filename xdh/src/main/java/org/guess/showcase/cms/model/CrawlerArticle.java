package org.guess.showcase.cms.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.guess.showcase.cms.model.pa.DataEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "t_crawler_article")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class CrawlerArticle extends DataEntity{
	private String title;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Date crawlerTime;
	private Integer hits;
	private String url;
	private Integer articleMaxId;
	private String articleType;
	private String labelOne;
	private String labelTwo;
	private String labelThree;
	private String content;
	private String websiteName;
	private String describle;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getCrawlerTime() {
		return crawlerTime;
	}
	public void setCrawlerTime(Date crawlerTime) {
		this.crawlerTime = crawlerTime;
	}
	public Integer getHits() {
		return hits;
	}
	public void setHits(Integer hits) {
		this.hits = hits;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Integer getArticleMaxId() {
		return articleMaxId;
	}
	public void setArticleMaxId(Integer articleMaxId) {
		this.articleMaxId = articleMaxId;
	}
	
	
	/**
	 * 1-it技术
	 * @return
	 */
	public String getArticleType() {
		return articleType;
	}
	public void setArticleType(String articleType) {
		this.articleType = articleType;
	}
	public String getLabelOne() {
		return labelOne;
	}
	public void setLabelOne(String labelOne) {
		this.labelOne = labelOne;
	}
	public String getLabelTwo() {
		return labelTwo;
	}
	public void setLabelTwo(String labelTwo) {
		this.labelTwo = labelTwo;
	}
	public String getLabelThree() {
		return labelThree;
	}
	public void setLabelThree(String labelThree) {
		this.labelThree = labelThree;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWebsiteName() {
		return websiteName;
	}
	public void setWebsiteName(String websiteName) {
		this.websiteName = websiteName;
	}
	public String getDescrible() {
		return describle;
	}
	public void setDescrible(String describle) {
		this.describle = describle;
	}
}
