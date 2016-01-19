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
 * 招聘信息
 * @author 美乐车(www.meileche.com)
 * @version 2014-08-25
 */
@Entity
@Table(name = "cms_gr")
@JsonIgnoreProperties(value = { "content"})
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Gr extends DataEntity {
	
	/**
	 * 求职姓名
	 */
	private String myname;
	
	/**
	 * 意向职位
	 */
	private String position;
	
	/**
	 * 期望薪水
	 */
	private String salary;
	
	/**
	 * 点击数
	 */
	private int hits  = 0;
	
	/**
	 * 不用word解析时添加富文本内容(个人描述)
	 */
	private String content;
	
	/**
	 * 希望工作方式
	 */
	private String workWay;
	
	/**
	 * 个人教育程度
	 */
	private String eduDegree;
	
	/**
	 * 性别
	 */
	private String sex;
	
	/**
	 * 工作经验
	 */
	private String workTime;
	
	/**
	 * 意向公司类型
	 */
	private String companyType;

	/**
	 * 状态
	 */
	private String status;
	
	/**
	 * 登陆会员名
	 */
	private String loginId;
	
	/**
	 * 期望工作地点
	 */
	private String place;
	
	/**
	 * 籍贯
	 */
	private String sourceAddr;
	
	/**
	 * 年龄 
	 */
	private String age;
	
	/**
	 * 婚姻状况
	 */
	private String marryStatus;

	public String getMyname() {
		return myname;
	}

	public void setMyname(String myname) {
		this.myname = myname;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
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

	public String getWorkWay() {
		return workWay;
	}

	public void setWorkWay(String workWay) {
		this.workWay = workWay;
	}

	public String getEduDegree() {
		return eduDegree;
	}

	public void setEduDegree(String eduDegree) {
		this.eduDegree = eduDegree;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getWorkTime() {
		return workTime;
	}

	public void setWorkTime(String workTime) {
		this.workTime = workTime;
	}

	public String getCompanyType() {
		return companyType;
	}

	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getSourceAddr() {
		return sourceAddr;
	}

	public void setSourceAddr(String sourceAddr) {
		this.sourceAddr = sourceAddr;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getMarryStatus() {
		return marryStatus;
	}

	public void setMarryStatus(String marryStatus) {
		this.marryStatus = marryStatus;
	}
}


