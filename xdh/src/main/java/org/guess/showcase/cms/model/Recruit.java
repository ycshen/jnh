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
 * @author 美乐车
 * @version 2014-08-25
 */
@Entity
@Table(name = "cms_recruit")
@JsonIgnoreProperties(value = { "content"})
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Recruit extends DataEntity {
	
	/**
	 * 公司
	 */
	private String company;
	
	/**
	 * 职位
	 */
	private String position;
	
	/**
	 * 薪水(开始)
	 */
	private String salaryStart;
	
	
	/**
	 * 薪水(结束)
	 */
	private String salaryEnd;
	
	/**
	 * 点击数
	 */
	private int hits  = 0;
	
	/**
	 * 不用word解析时添加富文本内容
	 */
	private String content;
	
	/**
	 * 工作方式
	 */
	private String workWay;
	
	/**
	 * 教育程度
	 */
	private String eduDegree;
	
	/**
	 * 性别要求
	 */
	private String sex;
	
	/**
	 * 工作经验
	 */
	private String workTime;
	
	/**
	 * 招聘人数
	 */
	private int personNum;
	
	/**
	 * 公司类型
	 */
	private String companyType;

	/**
	 * 状态
	 */
	private String status;
	
	private String loginId;
	
	/**
	 * 工作地点
	 */
	private String place;
	
	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getSalaryStart() {
		return salaryStart;
	}

	public void setSalaryStart(String salaryStart) {
		this.salaryStart = salaryStart;
	}

	public String getSalaryEnd() {
		return salaryEnd;
	}

	public void setSalaryEnd(String salaryEnd) {
		this.salaryEnd = salaryEnd;
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

	public int getPersonNum() {
		return personNum;
	}

	public void setPersonNum(int personNum) {
		this.personNum = personNum;
	}

	public String getCompanyType() {
		return companyType;
	}

	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}
	
	
}


