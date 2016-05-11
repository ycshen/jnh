package org.guess.showcase.blog.model;

import java.util.Date;

public class SearchResult {
	//搜索内容
	private String queryString;
	//标题
	private String resultTitle;
	//内容
	private String resultContent;
	//创建时间
	private Date createDate;
	private String resultDesc;
	//文章id
	private String id;
	public String getQueryString() {
		return queryString;
	}
	public void setQueryString(String queryString) {
		this.queryString = queryString;
	}
	public String getResultTitle() {
		return resultTitle;
	}
	public void setResultTitle(String resultTitle) {
		this.resultTitle = resultTitle;
	}
	public String getResultContent() {
		return resultContent;
	}
	public void setResultContent(String resultContent) {
		this.resultContent = resultContent;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getResultDesc() {
		return resultDesc;
	}
	public void setResultDesc(String resultDesc) {
		this.resultDesc = resultDesc;
	}
}
