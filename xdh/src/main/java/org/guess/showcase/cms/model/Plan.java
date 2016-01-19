package org.guess.showcase.cms.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.guess.core.orm.IdEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 档期
 * @author syc
 * @version 2014-06-04
 */
@Entity
@Table(name = "t_plan")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Plan extends IdEntity {
	private String man; //x新郎
	private String women; //新娘
	private String shootPlace; //拍摄地点

	@DateTimeFormat(pattern = "yyyy-MM-dd hh:MM:ss")
	@Temporal(TemporalType.TIMESTAMP)
	private Date shootTime; //拍摄时间
	private int dressNum; //衣服套数

	@DateTimeFormat(pattern = "yyyy-MM-dd hh:MM:ss")
	@Temporal(TemporalType.TIMESTAMP)
	private Date selectDressTime; //选衣时间
	private String selectDressPalce; //选衣日期
	private String shootPerson; //摄影师
	private String makeUpPerson; //化妆师
	private String enterPrice; //入场费
	private String ridePrice;  //交通费
	private String eatPrice;// 餐费
	private String remark; //说明
	public String getMan() {
		return man;
	}
	public void setMan(String man) {
		this.man = man;
	}
	public String getWomen() {
		return women;
	}
	public void setWomen(String women) {
		this.women = women;
	}
	public String getShootPlace() {
		return shootPlace;
	}
	public void setShootPlace(String shootPlace) {
		this.shootPlace = shootPlace;
	}
	
	public Date getShootTime() {
		return shootTime;
	}
	public void setShootTime(Date shootTime) {
		this.shootTime = shootTime;
	}
	public int getDressNum() {
		return dressNum;
	}
	public void setDressNum(int dressNum) {
		this.dressNum = dressNum;
	}
	
	public Date getSelectDressTime() {
		return selectDressTime;
	}
	public void setSelectDressTime(Date selectDressTime) {
		this.selectDressTime = selectDressTime;
	}
	public String getSelectDressPalce() {
		return selectDressPalce;
	}
	public void setSelectDressPalce(String selectDressPalce) {
		this.selectDressPalce = selectDressPalce;
	}
	public String getShootPerson() {
		return shootPerson;
	}
	public void setShootPerson(String shootPerson) {
		this.shootPerson = shootPerson;
	}
	public String getMakeUpPerson() {
		return makeUpPerson;
	}
	public void setMakeUpPerson(String makeUpPerson) {
		this.makeUpPerson = makeUpPerson;
	}
	public String getEnterPrice() {
		return enterPrice;
	}
	public void setEnterPrice(String enterPrice) {
		this.enterPrice = enterPrice;
	}
	public String getRidePrice() {
		return ridePrice;
	}
	public void setRidePrice(String ridePrice) {
		this.ridePrice = ridePrice;
	}
	public String getEatPrice() {
		return eatPrice;
	}
	public void setEatPrice(String eatPrice) {
		this.eatPrice = eatPrice;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}