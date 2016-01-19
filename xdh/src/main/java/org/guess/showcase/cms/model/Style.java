package org.guess.showcase.cms.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.guess.showcase.cms.model.pa.DataEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * 婚纱摄影风格
 * @author 美乐车
 * @version 2015-04-15
 */
@Entity
@Table(name = "cms_style")
@JsonIgnoreProperties(value = { "content"})
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Style extends DataEntity {
	
	/**
	 * 风格类型
	 */
	private String styleType;
	
	
	
	/**
	 * 点击数
	 */
	private int hits  = 0;
	
	/**
	 * 不用word解析时添加富文本内容
	 */
	private String content;

	/**
	 * 首页图像路径
	 */
	private String imgpath;

	/**
	 * 状态
	 */
	private String status; //1-显示到首页  0-不显示首页


	public String getStyleType() {
		return styleType;
	}


	public void setStyleType(String styleType) {
		this.styleType = styleType;
	}


	public int getHits() {
		return hits;
	}


	public void setHits(int hits) {
		this.hits = hits;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getImgpath() {
		return imgpath;
	}


	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
		
	
}


