package org.guess.showcase.cms.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.guess.showcase.cms.model.pa.DataEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * 文章Entity
 * @author ThinkGem
 * @version 2013-05-15
 */
@Entity
@Table(name = "cms_article")
@JsonIgnoreProperties(value = { "content","comments"})
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Article extends DataEntity {
	
	/**
	 * 分类编号
	 */
	@ManyToOne(targetEntity = Category.class,fetch = FetchType.LAZY)
    @JoinColumn(name = "CATEGORY_ID")
    @NotFound(action=NotFoundAction.IGNORE)
	private Category category;
	
	/**
	 * 标题
	 */
	private String title;
	
	/**
	 * 关键字
	 */
	private String keywords;
	
	/**
	 * 描述、摘要
	 */
	private String description;
	
	/**
	 * 权重，越大越靠前
	 */
	private int weight = 0;
	
	/**
	 * 点击数
	 */
	private int hits  = 0;
	
	/**
	 * 不用word解析时添加富文本内容
	 */
	private String content;

	/**
	 * 图片新闻相对地址
	 */
	private String imgpath;
	
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
}


